use classicmodel;

-- 1. Display customerNumber, customerName and city of all the customers

select customerNumber, customerName, city 
from customers
where city='NYC';



-- 2. Display the customerNumber, customerName and city of the customers from Boston

select customerNumber, customerName, city 
from customers
where city='Boston';



-- 3. customerName and creditLimit of the customers with limit greater than 200,000

Select customerName, creditLimit 
from customers
where creditLimit > 200000;



-- 4. List the products that are Ships and have MSRP greater than 50 but less than 100

select productName, productLine, MSRP 
from products
where productLine = 'Ships' 
	  and
	  MSRP between 50 and 100;
      


-- 5. What products are 'Ford' models?

select productName
from products
where 
productname like '%Ford%';



-- 6. Sort the orderdetails table by the lowest quantity ordered and highest price

select * from orderdetails
order by quantityOrdered asc,  priceEach desc;



-- 7. Top 3 products with the highest price margin

select productName, (MSRP-buyprice) as priceMargin from products
order by priceMargin desc
limit 3;



-- 8. Calculate the total number of countries

select  count(distinct country) from customers;


-- 9. Total number of customers from North America

select count(*) from customers
where country in ('USA', 'Canada', 'Mexico');



-- 10. How many values are null in salesRepEmployeeNumber column in customer table

select count(*) from customers
where salesRepEmployeeNumber is NULL;



-- 11. Any orders that weren't shipped by on time. Please display the reason

select orderNumber, comments from orders
where shippedDate > requiredDate;



-- 12. Calculate the Average MSRP of all products (rounded to two decimal places)

select ROUND(avg(MSRP), 2)
from products;



-- 13. Over how many years does the orders table extend?

select distinct(YEAR(orderDate)) 
from orders;



-- 14. Create another column to display whether a customerNumber is an even or odd number

select customerNumber,
						case
							when mod(customerNumber, 2) = 0 then 1
                            else 0
                            end as evenCustomerNumber
from customers;

-- OR

select customerNumber,
						case
							when customerNumber%2 = 0 then 1
                            else 0
                            end as evenCustomerNumber
from customers;





