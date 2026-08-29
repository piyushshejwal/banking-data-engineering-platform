import pandas as pd
import mysql.connector

from config import MYSQL_CONFIG

config = MYSQL_CONFIG.copy()
config["database"] = "bank_staging"

conn = mysql.connector.connect(**config)

df = pd.read_sql(
    "SELECT * FROM stg_customers",
    conn
)

print(df.shape)
print(df.head())

conn.close()