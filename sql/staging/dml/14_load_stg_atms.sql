 
USE bank_staging;

INSERT INTO stg_atms
(
    atm_id,
    atm_code,
    branch_id,
    city_id,
    installation_date,
    atm_status,
    cash_available,
    source_system,
    batch_id
)
SELECT
    atm_id,
    atm_code,
    branch_id,
    city_id,
    installation_date,
    atm_status,
    cash_available,
    'MYSQL_OLTP',
    1
FROM bank_oltp.atms;