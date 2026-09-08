import pandas as pd
import mysql.connector

from config import MYSQL_CONFIG

# Connect to staging database
config = MYSQL_CONFIG.copy()
config["database"] = "bank_staging"

conn = mysql.connector.connect(**config)

# Extract data from staging
query = """
SELECT
    customer_id,
    customer_number,
    first_name,
    last_name,
    customer_type,
    customer_status,
    registration_date,
    risk_category,
    kyc_status,
    home_branch_id
FROM stg_customers;
"""

df = pd.read_sql(query, conn)

# Check extracted data
print("Number of rows:", len(df))
print("Shape:", df.shape)

print("\nFirst 5 rows:")
print(df.head())

conn.close()