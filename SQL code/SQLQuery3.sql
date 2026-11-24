-- CONFIRM THE CONVERSTION CLEANING DATA

select COUNT(*) as total_row from EcommerceCustomerAnalytics.dbo.RetailCombined;
select COUNT(*) as Failed_Dates from dbo.RetailCombined where Invoice IS NULL;
select COUNT(*) as Failed_Price from dbo.RetailCombined where Price IS NULL;