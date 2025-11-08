# SQLSaturday

🧱 Building a Modern ETL Pipeline with Azure Data Factory From On-Prem SQL Server to Azure Synapse Analytics

🚀 SQL Saturday Training Workshop

📋 Overview

In this hands-on workshop, you’ll learn how to design, build, and deploy a modern cloud-based ETL (Extract, Transform, Load) pipeline using Azure Data Factory (ADF).
We’ll start with data residing on-premises in SQL Server, move it securely and efficiently into the cloud, and transform it for analytics using Azure Synapse Analytics.

By the end of this session, you’ll understand how to combine Azure Data Factory, Data Lake Storage, and Synapse to deliver an end-to-end data integration solution.

🎯 Learning Objectives

By completing this lab, participants will:

Understand the core architecture of Azure Data Factory and how it orchestrates data movement.

Set up linked services, datasets, and pipelines in ADF.

Create data ingestion workflows from on-prem SQL Server to Azure Data Lake.

Use Data Flows and Mapping Data Flows to perform transformations.

Load transformed data into Azure Synapse Analytics for reporting and analytics.

Monitor and debug pipeline runs in ADF.

🧰 Prerequisites

Before you begin, ensure you have the following:

-An active Azure subscription (or a free trial account).

-Azure Data Factory resource provisioned.

-Azure Synapse Analytics workspace (with a dedicated SQL pool or serverless option).

-Azure Data Lake Storage Gen2 container for staging and transformations.

-SQL Server (on-prem or Azure VM) with sample data — e.g., AdventureWorks2019 database.

-Azure Data Gateway installed and configured to connect on-prem SQL Server with ADF.

-Basic knowledge of SQL and Azure portal navigation.

🧩 Hands-On Lab Modules

Module	Title	Description

01	Environment Setup	Create Azure resources and configure integration runtime.

02	Linked Services & Datasets	Connect ADF to on-prem SQL Server and cloud targets.

03	Building Pipelines	Orchestrate extraction and load processes.

04	Data Flow Transformations	Transform and cleanse data in ADF.

05	Loading to Synapse	Load curated data into Synapse tables for analytics.

06	Monitoring & Troubleshooting	View pipeline runs, logs, and performance metrics.

💡 Key Technologies

Azure Data Factory

Azure Synapse Analytics

Azure Data Lake Storage Gen2

Azure Integration Runtime (Self-Hosted)

SQL Server 2019+

Azure Monitor / Log Analytics
