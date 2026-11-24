 --CHECK ALL DATASET IMPORT

select * from EcommerceCustomerAnalytics.dbo.online_retail_2009_10;
select * from EcommerceCustomerAnalytics.dbo.[online_retail 2010_11];

--CHECK ROW COUNT AFTER IMPORT

SELECT COUNT(*) AS ROW_2009_10 FROM EcommerceCustomerAnalytics.DBO.online_retail_2009_10;
SELECT COUNT(*) AS ROW_2010_11 FROM  EcommerceCustomerAnalytics.dbo.[online_retail 2010_11];