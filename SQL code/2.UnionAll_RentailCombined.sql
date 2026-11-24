--COMBINE BOTH YEAR AND CONVERT TYPE SAFELY

SELECT 
     Invoice, StockCode, Description, Quantity,

     COALESCE(TRY_CONVERT(datetime2, InvoiceDate, 120),
              TRY_CONVERT(datetime2, InvoiceDate, 105)
              ) as InvoicDate,

              TRY_CONVERT(decimal(10, 2), Price) as Price,
              Customer_ID, Country, '2009-10' as SourceSheet
              into dbo.RetailCombined
              from EcommerceCustomerAnalytics.dbo.online_retail_2009_10

UNION ALL

      SELECT
          Invoice, StockCode, Description, Quantity,

          COALESCE(TRY_CONVERT(datetime2, InvoiceDate, 120),
                   TRY_CONVERT(datetime2, InvoiceDate, 105)
                   ) as InvoiceDate,

                   TRY_CONVERT(decimal(10,2), Price) as Price,
                   Customer_ID, Country, '2010-11' as SourceSheet
                   from EcommerceCustomerAnalytics.dbo.[online_retail 2010_11];