/*
====================================================
Zepto E-Commerce SQL Analysis
====================================================
Database: MySQL
Project Type: Data Analytics Portfolio Project

Skills Demonstrated:
- Data Exploration
- Data Cleaning
- Aggregation
- Filtering
- Conditional Logic
- Business Analysis
====================================================
*/

drop table if exists zepto;

create table zepto (
    sku_id serial primary key,
    category varchar(150),
    name varchar(100) not null,
    mrp numeric(8,2),
    discountPercent numeric(5,2),
    availableQuantity integer,
    discountedSellingPrice numeric(8,2),
    weightInGms integer,
    outOfStock boolean,
    quantity integer
);

-- Data Exploration

-- Count Rows
select count(*) from zepto;

-- Sample Data
select * from zepto
limit 10;

-- Null values
select * from zepto
WHERE name is null
or
category is null
or
mrp is null
or
discountPercent is null
or
discountedSellingPrice is null
or
weightInGms is null
or
availableQuantity is null
or
outOfStock is null
or
quantity is null;

Different product categories
select distinct category from zepto
order by category;

-- Products in stock vs out of stock
select outOfStock, count(sku_id)
from zepto
group by outOfStock;

-- Product names present multiple times
select name, count(sku_id) as "Number of SKUs"
from zepto
group by name
having count(sku_id) > 1
order by count(sku_id) desc;

-- Data Cleaning

-- products with price = 0
select * from zepto
where mrp = 0 or discountedSellingPrice = 0;

delete from zepto
where mrp = 0;

-- convert paise to rupee
update zepto
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

select mrp, discountedSellingPrice from zepto;

-- Q1. Find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discountPercent
from zepto
order by discountPercent desc
limit 10;

-- Q2. What are the products with high MRP but Out of Stock.
select distinct name, mrp
from zepto
where outOFStock = TRUE and mrp > 300
order by mrp desc;

-- Q3. Calculate Estimited Revenue for each category.
select category, 
	sum(discountedSellingPrice * availableQuantity) as total_revenue
from zepto
group by category
order by total_revenue;

-- Q4. Find all Products where MRP is greater than Rs.500/- and discount is less than 10%.
select distinct name, mrp, discountPercent
from zepto
where mrp > 500 and discountPercent < 10
order by mrp desc, discountPercent desc;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select distinct category,
	round(avg(discountPercent), 2) as avg_discount
from zepto
group by category
order by avg_discount desc
limit 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
select distinct name, weightInGms, discountedSellingPrice, 
round(discountedSellingPrice/weightInGms, 2) as price_per_gram
from zepto
where weightInGms >=100
order by price_per_gram

-- Q7. Group the products into categories like Low, Medium, Bulk.
select distinct name, weightInGms,
	case when weightInGms < 1000 then 'Low'
		when weightInGms < 5000 then 'Medium'
		else 'Bulk'
	end as weight_category
from zepto;

-- Q8. What is the total inventory weight per category.
select category,
	sum(weightInGms * availableQuantity) as total_weight
from zepto
group by category
order by total_weight;