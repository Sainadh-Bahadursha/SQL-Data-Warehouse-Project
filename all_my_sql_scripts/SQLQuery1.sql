SELECT
	NULLIF(sls_order_dt,0) sls_order_dt
FROM
	bronze.crm_sales_details
WHERE
	sls_order_dt <=0 
	OR LEN(sls_order_dt) != 8
	OR sls_order_dt > 20500101
	OR sls_order_dt < 19000101