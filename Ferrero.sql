select *
from [dbo].[Fct_Sales_CU_All]
where Manufacturer like N'%매일%' 

select *
from [dbo].[Fct_Sales_CU_All]
where productbrand like N'%페레로로쉐'

select * from [dbo].[Stg_Product_CVS]

select * from [dbo].[Dim_Product_CVS] where manufacture_master = 'Ferrero'

select * from [dbo].[Fct_Sales_Seveneleven] where Manufacturer like N'%매일%'

select * from [dbo].[Fct_Sales_GS25_Monthly] where Manufacturer like N'%매일%'

select * from [dbo].[Fct_Sales_CU_All] a, [dbo].[Dim_Product_CVS] b
where a.[Barcode] = b.[Barcode]

select * from [dbo].[Dim_Product_CVS]
select * from [dbo].[Fct_Sales_Coupang_HRC]

select * from [dbo].[Fct_Sales_Freshness]

select DISTINCT(account) from [dbo].[Fct_Sales_Coupang_HRC]

select * from [dbo].[Dim_Product_CVS]
select * from [dbo].[Fct_Sales_Seveneleven]

select sum([SalesAmt])/1000000 from [dbo].[Fct_Sales_Seveneleven] where [Manufacturer] like N'%매일%'

select * from [dbo].[Fct_Sales_Seveneleven], [dbo].[Dim_Product_CVS] where [category_master] = N'biscuit'

select DISTINCT(account_Lv3) from [dbo].[Fct_Sales_STT_Biweekly_FCST] where account_Lv2 like N'CVS'
select DISTINCT(account_Lv3) from [dbo].[Fct_Sales_STT_Biweekly_Actual] where account_Lv2 like N'CVS'

select * from tmp_salesstore
select * from dim_tabledesc where Table_name like N'%Fct%' 

select Distinct(Table_Name) from [dbo].[Dim_TableDesc] where Table_Name LIKE N'%Fct%'
select * from dim_tabledesc

select accBarcode, COUNT(accBarcode) 
from dim_CVS_master
GROUP BY accBarcode
HAVING COUNT(accBarcode) > 1

select accBarcode, COUNT(accBarcode) 
from dim_CVS_master
GROUP BY accBarcode
HAVING COUNT(accBarcode) > 1

select * from dim_CVS_master 
select * from fct_sales_CU 

select * from [dbo].[Fct_Sales_CU]

select * from [dbo].[Fct_Sales_Seveneleven]

select a.StoreCnt + b.StoreCnt + c.StoreCnt
from [dbo].[Fct_Sales_Seveneleven] a, [dbo].[Fct_Sales_GS25_Monthly] b, [dbo].[Fct_Sales_CU] c

select sum(StoreCnt)
from [dbo].[Fct_Sales_GS25_Monthly]

select sum(StoreCnt)
from [dbo].[Fct_Sales_CU]

select * from [dbo].[Dim_StoreAccount_Lv2]
select * from [dbo].[Dim_TableDesc]
select * from [dbo].[Fct_Sales_GS25_daily]

select * from dim_CVS_master

select * from Fct_Sales_GS25_daily
select sum(storecnt) from [dbo].[Fct_Sales_GS25_daily] where YEAR(Date) = 2023 and MONTH(date) = 05

SELECT SUM(SalesAmt)/1000000 FROM Fct_Sales_Seveneleven WHERE MONTH(date) = 05
SELECT SUM(SalesAmt)/1000000 FROM Fct_Sales_Seveneleven WHERE MONTH(date) = 06

SELECT SUM(SalesAmt)/1000000 FROM Fct_Sales_Seveneleven where YEAR(Date) = 2023 and MONTH(date) = 04
SELECT SUM(SalesAmt)/1000000 FROM fct_Sales_Seveneleven where YEAR(Date) = 2023 and MONTH(date) = 05
SELECT sum(CAST(SalesAmt AS FLOAT))/1000000 FROM Fct_Sales_Seveneleven WHERE [Date] LIKE N'%2023-05%'

select sum(salesamt)/1000000 from Fct_Sales_GS25_daily where YEAR(date) = 2023 AND MONTH(DATE) = 07
select max(storecnt) from Fct_Sales_GS25_daily where YEAR(date) = 2022 AND MONTH(DATE) = 07
select max(storecnt) from Fct_Sales_GS25_MONTHly where YEAR(date) = 2023 AND MONTH(DATE) = 07
select sum(salesamt)/1000000 from Fct_Sales_GS25_MONTHly where YEAR(date) = 2020 AND MONTH(DATE) = 07 

select * from [dbo].[Fct_Sales_Coupang]
select Distinct(account) from [dbo].[Fct_Sales_HRC]
select * from [dbo].[Fct_Sales_STT_Monthly] --Ebay = Gmarket 
select * from [dbo].[Dim_StoreAccount_Lv3] --Lv3_name <-> monthly =>Lv2 code 사용!
select distinct account_Lv2, account_Lv3 from [dbo].[Fct_Sales_STT_Biweekly_FCST]
select sum(salesamt)/1000000 from [dbo].[Fct_Sales_STT_Biweekly_FCST] where [account_Lv2] = N'온라인'
select sum(invoice)/1000000 from [dbo].[Fct_Sales_STT_Monthly] where [account] = N'Coupang' 
select sum(invoice)/1000000 from [dbo].[Fct_Sales_STT_Monthly] where [account] = N'11st.'

select top 10 * from [dbo].[Fct_Sales_HRC]
select top 10 * from [dbo].[Dim_HRC_Master_Brand]
select * from [dbo].[Dim_HRC_Master_SKU] --Category와 Brand(v페레로만)은 이 테이블 사용..
select top 10 * from [dbo].[Dim_HRC_Master_Manufacturer]