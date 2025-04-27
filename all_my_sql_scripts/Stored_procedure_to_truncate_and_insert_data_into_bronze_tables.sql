-- EXEC bronze.load_bronze;


/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/
CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time DATETIME, @batch_end_time DATETIME;
	BEGIN TRY
		-- Truncate and Insert (Full load)
		-- crm_cust_info
		SET @batch_start_time = GETDATE();
			PRINT '======================================'
			PRINT 'Loading Bronze Layer'
			PRINT '======================================'

			PRINT '--------------------------------------'
			PRINT 'Loading CRM Tables'
			PRINT '--------------------------------------'

			SET @start_time = GETDATE();
				PRINT '>> Truncating Table: bronze.crm_cust_info'; 
				TRUNCATE TABLE bronze.crm_cust_info;
	
				PRINT '>> Inserting Data Into: bronze.crm_cust_info';
				BULK INSERT bronze.crm_cust_info
				FROM 'C:\Users\saina\Desktop\DS_ML_AI\Projects\SQL_Data_warehouse_project_Data_with_Baraa\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
				WITH (
					FIRSTROW = 2,
					FIELDTERMINATOR = ',',
					TABLOCK
				);
			SET @end_time = GETDATE();
			PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'

			SET @start_time = GETDATE();
				-- crm_prd_info
				PRINT '>> Truncating Table: bronze.crm_prd_info';
				TRUNCATE TABLE bronze.crm_prd_info;

				PRINT '>> Inserting Data Into: bronze.crm_prd_info';
				BULK INSERT bronze.crm_prd_info
				FROM 'C:\Users\saina\Desktop\DS_ML_AI\Projects\SQL_Data_warehouse_project_Data_with_Baraa\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
				WITH (
					FIRSTROW = 2,
					FIELDTERMINATOR = ',',
					TABLOCK
				);
			SET @end_time = GETDATE();
			PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'


			SET @start_time = GETDATE();
				-- crm_sales_details
				PRINT '>> Truncating Table: bronze.crm_sales_details';
				TRUNCATE TABLE bronze.crm_sales_details;

				PRINT '>> Inserting Data Into: bronze.crm_sales_details';
				BULK INSERT bronze.crm_sales_details
				FROM 'C:\Users\saina\Desktop\DS_ML_AI\Projects\SQL_Data_warehouse_project_Data_with_Baraa\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
				WITH (
					FIRSTROW = 2,
					FIELDTERMINATOR = ',',
					TABLOCK
				);
			SET @end_time = GETDATE();
			PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'

			PRINT '--------------------------------------'
			PRINT 'Loading ERP Tables'
			PRINT '--------------------------------------'

			SET @start_time = GETDATE();
				-- erp_cust_az12
				PRINT '>> Truncating Table: bronze.erp_cust_az12';
				TRUNCATE TABLE bronze.erp_cust_az12;

				PRINT '>> Inserting Data Into: bronze.erp_cust_az12';
				BULK INSERT bronze.erp_cust_az12
				FROM 'C:\Users\saina\Desktop\DS_ML_AI\Projects\SQL_Data_warehouse_project_Data_with_Baraa\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
				WITH (
					FIRSTROW = 2,
					FIELDTERMINATOR = ',',
					TABLOCK
				);
			SET @end_time = GETDATE();
			PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'

			SET @start_time = GETDATE();
			-- erp_loc_a101
				PRINT '>> Truncating Table: bronze.erp_loc_a101';
				TRUNCATE TABLE bronze.erp_loc_a101;

				PRINT '>> Inserting Data Into: bronze.erp_loc_a101';
				BULK INSERT bronze.erp_loc_a101
				FROM 'C:\Users\saina\Desktop\DS_ML_AI\Projects\SQL_Data_warehouse_project_Data_with_Baraa\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
				WITH (
					FIRSTROW = 2,
					FIELDTERMINATOR = ',',
					TABLOCK
				);
			SET @end_time = GETDATE();
			PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'

			SET @start_time = GETDATE();
				-- erp_px_cat_g1v2
				PRINT '>> Truncating Table: bronze.erp_px_cat_g1v2';
				TRUNCATE TABLE bronze.erp_px_cat_g1v2;

				PRINT '>> Inserting Data Into: bronze.erp_px_cat_g1v2';
				BULK INSERT bronze.erp_px_cat_g1v2
				FROM 'C:\Users\saina\Desktop\DS_ML_AI\Projects\SQL_Data_warehouse_project_Data_with_Baraa\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
				WITH (
					FIRSTROW = 2,
					FIELDTERMINATOR = ',',
					TABLOCK
				);
			SET @end_time = GETDATE();
			PRINT '>> Load Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds'
		SET @batch_end_time = GETDATE();
		PRINT '======================================'
		PRINT 'Loading Bronze Layer is Completed'
		PRINT '	- Total Load Duration: '+ CAST(DATEDIFF(second,@batch_start_time,@batch_end_time) AS NVARCHAR) + ' seconds';
		PRINT '======================================'
	END TRY
	-- CATCH will execute only if TRY fails to execute
	BEGIN CATCH
		PRINT '======================================'
		PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER'
		PRINT 'ERROR MESSAGE' + ERROR_MESSAGE();
		PRINT 'ERROR MESSAGE' + CAST (ERROR_NUMBER() AS NVARCHAR);
		PRINT 'ERROR MESSAGE' + CAST (ERROR_STATE() AS NVARCHAR);
		PRINT '======================================'
	END CATCH
END