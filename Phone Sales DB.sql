--Phone Sales - Analysis
select * From [PhoneSales]

--Total Rows--
Select Count(Date) AS DateRowCount
From [PhoneSales]

Select Count(Country) AS CountryRowCount
From [PhoneSales]



Select Count(Distributor) AS DistributorRowCount
From [PhoneSales]

--Total Number of Countries--
Select Count(Distinct(Country)) AS TotalCountry
From [PhoneSales]

--Distinct Countries--
Select Distinct(Country) AS Country
From [PhoneSales]

--Total Distributors--
Select Count(Distinct(Distributor)) AS TotalDistributor
From [PhoneSales]

--Distinct Distributors--
Select Distinct(Distributor) AS Distributor
From [PhoneSales]

--Total Brands--
Select Count(Distinct(Brand)) AS TotalBrand
From [PhoneSales]

--Distinct Brands--
Select Distinct(Brand) AS Brand
From [PhoneSales]

--Total Operators--
Select Count(Distinct(Operator)) AS TotalOperator
From [PhoneSales]

--Distinct Operators--
Select Distinct(Operator) AS Operator
From [PhoneSales]

--Total Sales--
Select Sum(Sales) AS TotalSales
From [PhoneSales]

--Change Column Name--
Exec sp_rename 'PhoneSales.amount','Quantity','Column';

--Total Quantity--
Select SUM(Quantity) AS Total_Quantity
From PhoneSales

--Average Price--
Select AVG([Unit Price]) AS AveragePrice
From PhoneSales

--Max Price--
Select Max([Unit Price]) AS MaxPrice
From PhoneSales

Select Min([Unit Price]) AS MinPrice
From PhoneSales


--Aggregate Functions--
COUNT
COUNT DISTINCT
SUM
AVG
MAX
MIN

GROUP BY
ORDER BY
TOP

--GROUP BY--
--Total Sales by DIstributors---
Select
	Distributor,
	Sum(Sales) AS TotalSales
From
	PhoneSales
Group by
	Distributor
Order by TotalSales desc

--Total Sales by Brands---
Select
	Brand,
	Sum(Sales) AS TotalSales
From
	PhoneSales
Group by
	Brand
Order by TotalSales desc

--Total Sales by Country---
Select
	Country,
	Sum(Sales) AS TotalSales
From
	PhoneSales
Group by
	Country
Order by TotalSales desc

--Total Sales by Operator---
Select
	Operator,
	Sum(Sales) AS TotalSales
From
	PhoneSales
Group by
	Operator
	Order by TotalSales desc

--Top Sales by Country---
Select Top 10
	Country,
	Brand,
	Sum(Sales) AS TotalSales
From
	PhoneSales
Group by
	Country, Brand
Order by TotalSales desc


--Bottom Sales by Country---
Select Top 10
	Country,
	Sum(Sales) AS TotalSales
From
	PhoneSales
Group by
	Country
Order by TotalSales asc


Select DATEDIFF(Year,'1990-01-01',GetDate())

Select DATEPART(YEAR, GetDate()) AS YEARTODAY
Select DATEPART(MONTH, GetDate()) AS MONTHTODAY
Select DATEPART(DAY, GetDate()) AS TODAY


DATEDIFF
DATEPART
DATENAME
GETDATE()