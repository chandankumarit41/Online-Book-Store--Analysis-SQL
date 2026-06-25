create database online_BookStore;
use online_BookStore;

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Book_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Quantity INT NOT NULL,
    Total_Amount DOUBLE NOT NULL
);


select * from books;
select * from customers;
select * from orders;


-- Retrive all books in the "Fiction" genre.alter
select * 
from books
where Genre = "Fiction";

-- find books published after the year 1950.
select * 
from books
where Published_year>1950;

-- List all customers from the Canada.
select * 
from customers
where country = "Canada";


-- Show orders placed in november 2023.
select * 
from orders
where order_date between "2023-11-01" and "2023-11-30";


-- Retrive the total stock of books available.
select sum(stock) as "Total_stocks"
from books;

-- Find the details of most Expensive book.
select * 
from books
order by Price Desc
limit 1;


-- Show all customers who ordered more than one quantity of book.
SELECT DISTINCT c.customer_id, c.name,o.Quantity
FROM Customers c
JOIN Orders o 
ON c.customer_id = o.customer_id
WHERE o.quantity > 1;


-- Show all customers who ordered more than one quantity of book.
select * from orders
where quantity>1;

-- Retrive all orders where the total amount exceeds $100.
select * 
from Orders
where Total_amount>100;

-- List all genres available in books table
select distinct genre
from books
group by genre;


-- Find the books with the lowest stock.
select stock
from books
order by Stock
limit 1;

-- Calculate the total revenue generated from all orders.
select round(sum(Total_amount),2) as "Total_Revenue"
from orders;


-- Advance Quries

-- Retrive the total number of book sold for each genre.
select b.Genre,sum(o.Quantity)  as "Total Book Sold"
from orders o
join Books b
on b.book_ID = o.book_ID
group by Genre;


select * from books;
-- Find the averege price of books in the "Fantasy" Genre.
select genre, round(avg(price),2) as "Average_Price"
from books
where genre = "Fantasy";

-- List Customers who have placed at least 2 Orders.
select c.name,c.customer_id,count(o.order_id) as "Total Count"
from Customers c
join Orders o
on c.customer_id = o.customer_id
group by c.customer_id,c.name
having count(order_id)>=2;


-- Find the most frequently ordered book.
select b.title,b.genre,b.Book_id,count(o.order_id) as "Order_count"
from books b
join orders o
on b.book_id = o.book_id
group by b.Book_id,b.title,b.genre
order by Order_count desc
limit 1;


-- Show the top 3 most Expensive book of "Fantasy" genre.
select title,genre,price
from books
where genre = "Fantasy"
order by price desc
limit 3;


-- Retrive the total Quantity of book sold by each Author.
select b.Author,sum(o.quantity) as "Total_Quantity_Sold"
from books b
join orders o
on b.book_id = o.book_id
group by b.Author;


-- List the cities where Customers who spend over $300 are located.
select Distinct c.city,o.Total_amount
from Customers c
join orders o
on c.Customer_id = o.Customer_id
where total_amount >300;


-- Find the Customers who spent most on Orders.
Select distinct c.name,round(sum(o.Total_amount),2) as "Total_Spent"
from Customers c
join Orders o
on c.Customer_id = o.Customer_id
group by c.name
Order by Total_Spent desc
limit 1;


-- Calculate the Stock Remaining after Fulfilling all Orders
SELECT b.book_id,
       b.title,
       b.stock AS original_stock,
       COALESCE(SUM(o.quantity),0) AS total_ordered,
       (b.stock - COALESCE(SUM(o.quantity),0)) AS stock_remaining
FROM Books b
LEFT JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.book_id, b.title, b.stock;




