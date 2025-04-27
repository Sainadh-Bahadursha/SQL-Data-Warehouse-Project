-- Check unwanted spaces
-- Expected REsult: No result

SELECT
	[sls_ord_num]
	,[sls_prd_key]
	,[sls_cust_id]
	,[sls_order_dt]
	,[sls_ship_dt]
	,[sls_due_dt]
	,[sls_sales]
	,[sls_quantity]
	,[sls_price]
  FROM [DataWarehouse].[bronze].[crm_sales_details]
  WHERE sls_ord_num != TRIM(sls_ord_num)
  