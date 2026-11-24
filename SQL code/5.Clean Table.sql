---- DUPLICTAED AND PRODUCER  THE CLEAN TABLE

with Deduped as (
 select *, Row_Number() over(Partition by Invoice, StockCode, Description, Quantity,
 InvoicDate, Price, Customer_ID, Country order by (select null))
 as RowNum from dbo.RetailCombined)
 select Invoice, StockCode, Description, Quantity, InvoicDate, Price, Customer_ID, Country
 into dbo.RetailCleaned
 from Deduped
 where  RowNum = 1;
