USE TASTY_BYTES_SAMPLE_DATA.COFFEE_SALES;



select * from sales;

-- 1. Total Sales in Month of May

SELECT sum (transaction_qty*unit_price) as Total_Revenue from sales
where 
MONTH(transaction_date) in (5)



-- 2. SALES PER MONTH

SELECT MONTH(transaction_date) as Month, sum (transaction_qty*unit_price) as Total_Revenue from sales
GROUP BY Month



-- 3. MONTH OVER MONTH Sales Difference

SELECT  MONTH(transaction_date) as MONTH, ROUND(sum (transaction_qty*unit_price)) as Total_Revenue,
(SUM(transaction_qty*unit_price) - LAG (sum (transaction_qty*unit_price)) OVER(ORDER BY MONTH(TRANSACTION_DATE))) AS DIFFERENCE FROM SALES
GROUP BY MONTH



--3. MONTH OVER MONTH PERCENT INCREASE/DECREASE in Sales

SELECT MONTH(transaction_date) as MONTH, ROUND(sum (transaction_qty*unit_price)) as Total_Revenue,
(SUM(transaction_qty*unit_price) - LAG (sum (transaction_qty*unit_price)) OVER(ORDER BY MONTH(TRANSACTION_DATE)))
/ LAG (sum (transaction_qty*unit_price)) OVER(ORDER BY MONTH(TRANSACTION_DATE)) * 100 AS PERCENT_INC

from sales
WHERE MONTH(TRANSACTION_DATE) IN (4, 5)

GROUP BY MONTH



--4. Comparing Daily Sales with the Average Sales in MAY

SELECT DAY, Total_Revenue,
CASE WHEN Total_Revenue > Avg_Revenue
     THEN 'ABOVE AVG'
     WHEN Total_Revenue < Avg_Revenue
     THEN 'BELOW AVG'
     ELSE 'EQUAL TO AVG'
END AS STATUS


FROM (
SELECT DAYOFMONTH(TRANSACTION_DATE) AS DAY, SUM(TRANSACTION_QTY*UNIT_PRICE) AS Total_Revenue,
AVG(SUM(TRANSACTION_QTY*UNIT_PRICE)) OVER() AS Avg_Revenue
FROM
SALES
WHERE MONTH(TRANSACTION_DATE) = 5
GROUP BY TRANSACTION_DATE
ORDER BY TRANSACTION_DATE
)



--5. TOP 10 Products that generated highest revenue in the month of MAY

select * from sales

select product_type, sum(unit_price*transaction_qty) as Total_Revenue from sales
where month(transaction_date) = 5
group by product_type
order by Total_Revenue desc
limit 10


select sum(unit_price*transaction_qty) as Total_Revenue, SUM(TRANSACTION_QTY) AS Total_Qty,
COUNT(*) as Total_orders
from sales
where month(transaction_date) = 5 
and 
dayofweek(transaction_date) = 0
and
hour(transaction_time) = 14

----------
