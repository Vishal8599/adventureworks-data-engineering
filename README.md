# AdventureWorks Azure Data Engineering Project

## Overview

This project demonstrates an end-to-end Azure Data Engineering workflow using the AdventureWorks dataset. It uses Azure Data Factory for data ingestion, Azure Data Lake Storage Gen2 for data storage, Azure Databricks with PySpark for data transformation, and Azure Synapse Analytics for SQL-based analysis of Gold-layer data.

The project follows the Medallion Architecture, organizing data into Bronze, Silver, and Gold layers.

## Architecture

AdventureWorks Dataset (CSV)
        |
        v
Azure Data Factory (Data Ingestion)
        |
        v
Azure Data Lake Storage Gen2
        |
        v
Bronze Layer (Raw Data)
        |
        v
Azure Databricks + PySpark
        |
        v
Silver Layer (Cleaned and Transformed Data)
        |
        v
Gold Layer (Curated Data)
        |
        v
Azure Synapse Analytics (Synapse SQL)

## Technologies Used

- Azure Data Factory (ADF)
- Azure Data Lake Storage Gen2 (ADLS Gen2)
- Azure Databricks
- PySpark
- Azure Synapse Analytics
- Synapse SQL
- Azure SQL
- AdventureWorks Dataset
- Git and GitHub

## Project Workflow

### 1. Data Ingestion — Azure Data Factory

Azure Data Factory is used to ingest AdventureWorks source data into Azure Data Lake Storage Gen2.

The repository includes exported ADF pipeline and ARM template files.

### 2. Bronze Layer — ADLS Gen2

The Bronze layer stores the ingested source data in the data lake.

It provides a raw-data layer for downstream processing.

### 3. Silver Layer — Azure Databricks

Azure Databricks and PySpark are used to process the ingested data.

The Silver layer contains cleaned and transformed data for further processing.

The Databricks notebook included in this repository is:

databricks/SILVER_LAYER.ipynb

### 4. Gold Layer — ADLS Gen2

The Gold layer contains curated data prepared for analytical use.

The Gold-layer data is stored in ADLS Gen2 and is queried using Synapse SQL.

### 5. Analytics — Azure Synapse Analytics

Azure Synapse Analytics is used to query Gold-layer data stored in ADLS Gen2.

The Synapse SQL scripts in this repository include:

- Creating the Gold schema
- Creating SQL views over Gold-layer data using OPENROWSET
- Querying the Gold customer view

## Repository Structure

```text
adventureworks-data-engineering/
├── adf/
│   ├── factory/
│   ├── linkedTemplates/
│   ├── ARMTemplateForFactory.json
│   └── ARMTemplateParametersForFactory.json
├── databricks/
│   └── SILVER_LAYER.ipynb
├── synapse/
│   └── sql/
│       ├── create_schema.sql
│       ├── create_views.sql
│       └── query_gold_customer.sql
├── AdventureWorks_*.csv
└── README.md
```

## Key Learning Outcomes

- Building a cloud-based data ingestion workflow with Azure Data Factory
- Working with ADLS Gen2 as a data lake
- Applying the Medallion Architecture
- Transforming data using PySpark in Azure Databricks
- Creating SQL views over data stored in a data lake
- Querying Gold-layer data with Azure Synapse Analytics
- Organizing project code and documentation using GitHub

## How to Explore This Repository

1. Review the ADF folder to understand the exported data ingestion resources.
2. Open the Databricks notebook to explore the Silver-layer transformation logic.
3. Review the Synapse SQL scripts to understand how the Gold-layer data is queried.
4. Refer to the AdventureWorks CSV files for the source dataset.

## Important Notes

- Azure resources, linked services, credentials, and storage permissions must be configured in your own Azure environment.
- Review exported ARM templates and notebook outputs before sharing publicly. Never publish passwords, access keys, SAS tokens, or other credentials.
- The SQL scripts reference data in ADLS Gen2. Update storage paths and authentication configuration as needed for your environment.
- This repository contains project implementation files; it does not automatically deploy the Azure infrastructure.

## Author

Vishal Sharma

Azure Data Engineering | Azure Data Factory | Databricks | PySpark | ADLS Gen2 | Synapse Analytics