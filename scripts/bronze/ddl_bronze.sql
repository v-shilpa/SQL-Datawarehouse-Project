CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN

PRINT'==========================='
PRINT 'loaading crm table'
BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\v-shilpad\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.CSV'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK

	);

BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\v-shilpad\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.CSV'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);


BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\v-shilpad\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.CSV'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR =',',
	TABLOCK
	);


BULK INSERT bronze.erp_CUST_AZ12
FROM 'C:\Users\v-shilpad\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.CSV'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR =',',
	TABLOCK
	);

BULK INSERT bronze.erp_LOC_A101
FROM 'C:\Users\v-shilpad\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.CSV'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR =',',
	TABLOCK
	);

BULK INSERT bronze.erp_PX_CAT_G1V2
FROM 'C:\Users\v-shilpad\Desktop\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.CSV'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR =',',
	TABLOCK
	);
END

