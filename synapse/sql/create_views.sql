CREATE OR ALTER VIEW gold.calendar
AS
SELECT
    * FROM 
    OPENROWSET
    (
        BULK 'https://awstoragelvishal.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT='PARQUET'
    ) AS QUER1
GO

CREATE OR ALTER VIEW gold.customer
AS
SELECT
    * FROM
    OPENROWSET
    (
        BULK 'https://awstoragelvishal.blob.core.windows.net/silver/AdventureWorks_Customer/',
        FORMAT='PARQUET'
    ) AS QUER2
GO

CREATE OR ALTER VIEW gold.product
AS
SELECT
    * FROM
    OPENROWSET
    (
        BULK 'https://awstoragelvishal.blob.core.windows.net/silver/AdventureWorks_Product/',
        FORMAT='PARQUET'
    ) AS QUER3
GO

CREATE OR ALTER VIEW gold.product_subcategory
AS
SELECT
    * FROM
    OPENROWSET
    (
        BULK 'https://awstoragelvishal.blob.core.windows.net/silver/AdventureWorks_Product_Subcategory/',
        FORMAT='parquet'
    ) AS QUER4
GO

CREATE OR ALTER VIEW gold.[return]
AS
SELECT
    * FROM
    OPENROWSET
    (
        BULK 'https://awstoragelvishal.blob.core.windows.net/silver/AdventureWorks_Return/',
        FORMAT='PARQUET'
    ) AS QUER5
GO

CREATE OR ALTER VIEW gold.sales
AS
SELECT
    * FROM
    OPENROWSET
    (
        BULK 'https://awstoragelvishal.blob.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT='PARQUET'
    ) AS QUER6
GO

CREATE OR ALTER VIEW gold.territory
AS
SELECT
    * FROM
    OPENROWSET
    (
        BULK 'https://awstoragelvishal.blob.core.windows.net/silver/AdventureWorks_Territory/',
        FORMAT='PARQUET'
    ) AS QUER7
GO