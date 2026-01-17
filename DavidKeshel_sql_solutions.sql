-----SQL Answers-----

-----Question 1: Basic SELECT with WHERE-----
select *
from customers
where name = 'Alice Johnson';


-----Question 2: Filtering with Multiple Conditions-----
select 
name, email, signup_date
from customers
where status = 'inactive'
and signup_date < '2024-06-01';

-----Question 3: Counting Records-----
select category, count(*) as 'Count of Products'
from products
group by category;

-----Question 4: Calculating Totals-----
select sum(total_amount) as 'Total Revenue'
from orders;

-----Question 5: Sorting and Limiting Results-----

select top 10 *
from orders
order by order_date desc;

-----Question 6: String Pattern Matching-----
select name, email
from customers
where email like '%smith%';

-----Question 7: Handling NULL Values-----
select id, name, signup_date
from customers
where email is null;

-----Question 8: Root Cause Analysis / Complex Filtering-----
select o1.id as 'Order ID 1', o2.id as 'Order ID 2', o1.customer_ID, o1.order_date, o1.total_amount as 'Total Amount Order 1', o2.total_amount as 'Total Amount Order 2'
from orders o1
join orders o2 on   o1.customer_id = o2.customer_id AND o1.order_date = o2.order_date and o1.id < o2.ID and abs(o1.total_amount - o2.total_amount) < 5

-----Question 9: Stored Procedure Debugging Scenario-----

select name, count(c.id) as 'Count of Orders', sum(total_amount) as 'Total Amount'
from customers c
join orders o  on c.ID = o.customer_ID
where not exists(
select 1
from customers c2
where c2.ID = c.id
and o.status = 'cancelled')
group by name 
having count(c.id) > 2;

-----Extra Credit Questions (Optional)-----
-----Extra Credit 1: Basic INNER JOIN-----
select
o.id, order_date, total_amount, name
from orders o
inner join customers c on o.customer_ID = c.id
where o.status = 'completed'


