drop table if exists zepto; 

create table zepto(
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightGms INTEGER,
outofstock BOOLEAN,
quantity INTEGER
);

-- data exploration 

-- count of rows 

SELECT COUNT(*) FROM ZEPTO;


-- sample data

SELECT * from zepto
LIMIT 10; 

-- null values 

SELECT * FROM zepto
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountpercent IS NULL
OR
discountedsellingprice IS NULL
OR
weightgms IS NULL
OR
availablequantity IS NULL
OR
outofstock IS NULL
OR
quantity IS NULL 


-- different product categories

SELECT DISTINCT category
FROM zepto
ORDER BY category; 

-- produucts in sock vs out of stock

SELECT outofstock,COUNT(sku_id)
FROM zepto
GROUP BY outofstock; 

-- product names present_multiple times

SELECT name,count(sku_id) as "NUmber of SKUs"
FROM zepto
GROUP BY name 
HAVING count(sku_id)>1
ORDER BY count(sku_id) DESC;

-- data cleaning
-- products with price = 0

SELECT * from zepto
where mrp = 0 or discountedsellingprice = 0;

DELETE FROM zepto
WHERE mrp = 0; 

-- Converting paise to rupees

UPDATE zepto
SET mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;

SELECT  mrp, discountedsellingprice FROM zepto 

-- Q1 Find the top 10 best-value products based on the discount percentage.

SELECT DISTINCT name,mrp,discountpercent
FROM zepto
ORDER BY discountpercent DESC
LIMIT 10;

-- Q2 What are the products with high MRP but out of stock?

SELECT DISTINCT name,mrp
FROM zepto
WHERE outofstock = TRUE and mrp > 300
ORDER BY mrp DESC;

-- Q3 Calculate estimated revenue for each category.

SELECT category,
SUM(discountedsellingprice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;
-- Q4 Find all products where MRP is greater than ₹500 and discount is less than 10%.

SELECT DISTINCT name,mrp ,discountpercent
FROM zepto
WHERE mrp > 500 AND discountpercent < 10
ORDER By mrp DESC, discountpercent DESC;

-- Q5 Identify the top 5 categories offering the highest average discount percentage.

SELECT category,
AVG(discountPercent) AS avg_discount
FROM zepto
GROUP BY category
ORDER By avg_discount DESC
LIMIT 5;

-- Q6 Find the price per gram for products above 100g and sort by best value.

SELECT DISTINCT name,weightgms,discountedsellingprice,
ROUND(discountedsellingprice/weightgms,2) AS price_per_gram
FROM zepto
WHERE  weightgms >= 100
ORDER BY price_per_gram;

-- Q7 Group the products into categories like Low, Medium, Bulk.

SELECT DISTINCT name,weightgms,
CASE WHEN weightgms <1000 THEN 'Low'
     WHEN Weightgms <5000 THEN 'Medium'
	 ELSE 'BULK'
	 END as weight_category
FROM zepto;

-- Q8 What is the total inventory weight per category? 

SELECT category,
SUM(weightgms * availablequantity) AS total_weight
FROM zepto
GROUP BY category
ORDER By total_weight;

