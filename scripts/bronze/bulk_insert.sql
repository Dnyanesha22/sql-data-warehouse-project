/*
============================================================
🚀 Bulk Data Load Script - Bronze Layer
============================================================

Description:
This script performs bulk data ingestion from CSV files into 
the Bronze layer tables of the data warehouse.

Key Notes:
- FIRSTROW = 2 → Skips header row in CSV
- FIELDTERMINATOR = ',' → CSV delimiter
- TABLOCK → Improves performance during bulk insert
- File paths are local system paths (update as needed)

Best Practice:
- Ensure tables are truncated before loading fresh data
- Verify file paths and permissions before execution
============================================================
*/

------------------------------------------------------------
-- Load CRM Customer Info
------------------------------------------------------------
TRUNCATE TABLE bronze.crm_cust_info;
GO

BULK INSERT bronze.crm_cust_info
FROM 'C:\Users\dnnavnat\Downloads\datawarehouse project by baraa\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
GO

------------------------------------------------------------
-- Load CRM Product Info
------------------------------------------------------------
TRUNCATE TABLE bronze.crm_prd_info;
GO 

BULK INSERT bronze.crm_prd_info
FROM 'C:\Users\dnnavnat\Downloads\datawarehouse project by baraa\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
GO

------------------------------------------------------------
-- Load CRM Sales Details
------------------------------------------------------------
TRUNCATE TABLE bronze.crm_sales_details;
GO 

BULK INSERT bronze.crm_sales_details
FROM 'C:\Users\dnnavnat\Downloads\datawarehouse project by baraa\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
WITH ( 
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
GO

------------------------------------------------------------
-- Load ERP Customer Data
------------------------------------------------------------
TRUNCATE TABLE bronze.erp_cust_az12;
GO

BULK INSERT bronze.erp_cust_az12
FROM 'C:\Users\dnnavnat\Downloads\datawarehouse project by baraa\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
GO 

------------------------------------------------------------
-- Load ERP Location Data
------------------------------------------------------------
TRUNCATE TABLE bronze.erp_loc_a101;
GO

BULK INSERT bronze.erp_loc_a101
FROM 'C:\Users\dnnavnat\Downloads\datawarehouse project by baraa\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
GO

------------------------------------------------------------
-- Load ERP Product Category Data
------------------------------------------------------------
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
GO

BULK INSERT bronze.erp_px_cat_g1v2
FROM 'C:\Users\dnnavnat\Downloads\datawarehouse project by baraa\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
WITH ( 
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    TABLOCK
);
GO
