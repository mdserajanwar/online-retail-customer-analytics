---- CHECK CUSTOMER ID

select COUNT(*) as missing_value from
dbo.RetailCombined where Customer_ID is null;

 ----  CHECK NEGATIVE AND QUANTITY VALUE 

 select COUNT(*) as Negatvity_Qty from
 dbo.RetailCombined where Quantity >= 0;

 --- CHECK DESCRIPTION VALUE

 select count(*) as Missing_Desacrption from
 dbo.RetailCombined where Description IS NULL;

 --- CHECK EXACT DUPLICATE ROW

select Invoice, StockCode, Description, Quantity, InvoicDate, Price, Customer_ID, Country,
count(*) as ExactDupaCount from dbo.RetailCombined
group by Invoice, StockCode, Description, Quantity, InvoicDate, Price, Customer_ID, Country
having count(*) > 1;

 -- CHECK DATA
 select top 5 * from EcommerceCustomerAnalytics.dbo.RetailCombined;