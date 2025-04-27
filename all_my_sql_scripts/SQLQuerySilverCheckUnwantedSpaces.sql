-- Check for unwanted spaces
-- Expectation : No results
SELECT cst_firstname
FROM bronze.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname);


-- Check for unwanted spaces
-- Expectation : No results
SELECT cst_lastname
FROM bronze.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname);


-- Check for unwanted spaces
-- Expectation : No results
SELECT cst_gndr
FROM bronze.crm_cust_info
WHERE cst_gndr != TRIM(cst_gndr);


-- Check for unwanted spaces
-- Expectation : No results
SELECT cst_marital_status
FROM bronze.crm_cust_info
WHERE cst_marital_status != TRIM(cst_marital_status);

-- Check for unwanted spaces
-- Expectation : No results
SELECT cst_key
FROM bronze.crm_cust_info
WHERE cst_key != TRIM(cst_key);