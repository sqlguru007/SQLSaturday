**STEP BY STEP**

**============**



**STEP 1 : Step up your Azure Resources and Connections**



1. Create a Resource Group



2\. Create Azure Data Lake Storage Gen2 for Staging

3\. Create Containers:



 	/staging/sales/ — raw extracts



 	/curated/sales/ — cleaned/transformed data



4\. Create Azure Data Factory Instance

5\. Create Azure Synapse Analytics WorkSpace

6\. Create a dedicated SQL Pool  > Database: SalesDW

7\. Table for fact data:



8\. Create linked services:



LS\_SQL\_OnPrem > via Self-hosted Integration Runtime (to on-prem SQL)



LS\_ADLS\_Staging > to Azure Data Lake Gen2



LS\_Synapse > to Azure Synapse SQL pool







**Step 2: ETL Pipeline Steps (ADF)**



1\. Extract (Copy Activity)



Source: SalesDB.dbo.SalesOrders (on-prem SQL)



Sink: /staging/sales/salesorders\_YYYYMMDD.json in ADLS: (salesorders\_@{formatDateTime(utcNow(),'yyyyMMdd')}.json)





2\. Transform (Mapping Data Flow)



Transform data before loading to Synapse:



Transformation Steps:



Read from ADLS (staging/sales/...)



Derived Column: Create TotalAmount = Quantity \* UnitPrice



Filter: Exclude rows where Quantity <= 0



Sink: salesorders\_curated\_@{formatDateTime(utcNow(),'yyyyMMdd')}.parquet





3\. Load (Copy to Synapse)



Sink: Azure Synapse dbo.FactSales



Write Mode: Upsert (Insert + Update)



Key Column: OrderID



ADF Sink Settings:



Enable “Allow upsert”



