create database task4
use task4

select * from sales ;

alter table dbo.sales drop column Row_ID;

alter table dbo.sales drop column Postal_Code , Product_ID;
 

select sum(Sales)as revenue,Region  from sales group by Region order by revenue ;

select sum(Profit)as profits,Region  from sales group by Region order by profits ;

select sum(Sales) as revenue,Ship_Mode group by Ship_Mode order by Ship_Mode;

select sum(Profit)as profits,Segment from sales group by Segment order by Profits desc; 

select top 10 sum(Sales)as revenue , State from sales group by state order by revenue desc;

select top 10 sum(Profit)as profits , State from sales group by state order by profits desc;

select top 10 sum(Profit)as profits , City from sales group by city order by profits desc;

select top 10 sum(Sales)as revenue , Order_Date from sales group by Order_date order by revenue desc;

select Customer_Name,Sales from sales 
where Customer_ID = (select Customer_ID from sales where Sales = (select max(Sales) from sales)) ;

