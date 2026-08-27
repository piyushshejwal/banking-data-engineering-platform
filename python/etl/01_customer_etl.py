import mysql.connector
from mysql.connector import Error

from config import MYSQL_CONFIG


def get_connection(database: str):
    config = MYSQL_CONFIG.copy()
    config["database"] = database

    return mysql.connector.connect(**config)


def main():
    source_conn = None
    target_conn = None
    source_cursor = None
    target_cursor = None

    try:
        print("Starting customer ETL...")

        # Connect to staging
        source_conn = get_connection("bank_staging")

        # Connect to warehouse
        target_conn = get_connection("bank_dw")

        source_cursor = source_conn.cursor(dictionary=True)
        target_cursor = target_conn.cursor()

        # Extract
        source_query = """
            SELECT
                customer_id,
                customer_number,
                CONCAT(first_name, ' ', last_name) AS customer_name,
                customer_type,
                customer_status,
                risk_category,
                kyc_status,
                home_branch_id,
                registration_date
            FROM stg_customers
        """

        source_cursor.execute(source_query)
        rows = source_cursor.fetchall()

        print(f"Records extracted: {len(rows)}")

        # Transform + Lookup + Load
        insert_query = """
            INSERT INTO dim_customer
            (
                customer_id,
                customer_number,
                customer_name,
                customer_type,
                customer_status,
                risk_category,
                kyc_status,
                branch_id,
                city_id,
                effective_from,
                effective_to,
                is_current
            )
            SELECT
                %s,
                %s,
                %s,
                %s,
                %s,
                %s,
                %s,
                %s,
                b.city_id,
                %s,
                NULL,
                TRUE
            FROM bank_oltp.branches b
            WHERE b.branch_id = %s
        """

        loaded_count = 0

        for row in rows:
            values = (
                row["customer_id"],
                row["customer_number"],
                row["customer_name"],
                row["customer_type"],
                row["customer_status"],
                row["risk_category"],
                row["kyc_status"],
                row["home_branch_id"],
                row["registration_date"],
                row["home_branch_id"],
            )

            target_cursor.execute(insert_query, values)

            if target_cursor.rowcount > 0:
                loaded_count += target_cursor.rowcount

        target_conn.commit()

        print(f"Records loaded: {loaded_count}")
        print("Customer ETL completed successfully.")

    except Error as e:
        print(f"ETL failed: {e}")

        if target_conn:
            target_conn.rollback()

    finally:
        if source_cursor:
            source_cursor.close()

        if target_cursor:
            target_cursor.close()

        if source_conn and source_conn.is_connected():
            source_conn.close()

        if target_conn and target_conn.is_connected():
            target_conn.close()


if __name__ == "__main__":
    main()