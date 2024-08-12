create table customers ( customer_id int primary key, name varchar(100), email varchar (100) );

create table orders (
 
order_id int primary key, customer_id int,
 
order_date date,
 
total_amount decimal (10, 2),
 
foreign key (customer_id) references customers (customer_id)
 
);

create table products(
	product_id int primary key,
	product_name varchar,
	price int
);

create table order_items ( order_item_id int primary key, order_id int, product_id int, quantity int, foreign key (order_id) references orders (order_id), foreign key (product_id) references products (product_id) );

create table categories ( category_id int primary key, category_name varchar(100) );

INSERT INTO customers (customer_id, name, email) VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com'),
(3, 'Michael Johnson', 'michael.johnson@example.com'),
(4, 'Emily Davis', 'emily.davis@example.com'),
(5, 'William Brown', 'william.brown@example.com');

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2023-08-01', 689.97),    -- John Doe
(2, 2, '2023-08-02', 45.98),     -- Jane Smith
(3, 3, '2023-08-03', 1279.96),   -- Michael Johnson
(4, 4, '2023-08-04', 75.98),     -- Emily Davis
(5, 5, '2023-08-05', 239.98);    -- William Brown

INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Smartphone', 599.99),
(2, 'Laptop', 999.99),
(3, 'Fiction Book', 19.99),
(4, 'T-shirt', 15.99),
(5, 'Headphones', 89.99),
(6, 'Blender', 49.99),
(7, 'Yoga Mat', 29.99),
(8, 'Cookbook', 25.99),
(9, 'Jeans', 39.99),
(10, 'Tent', 199.99);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1),   -- 1 Smartphone for John Doe
(2, 1, 5, 1),   -- 1 Headphones for John Doe
(3, 2, 3, 2),   -- 2 Fiction Books for Jane Smith
(4, 3, 2, 1),   -- 1 Laptop for Michael Johnson
(5, 3, 10, 1),  -- 1 Tent for Michael Johnson
(6, 4, 8, 1),   -- 1 Cookbook for Emily Davis
(7, 4, 6, 1),   -- 1 Blender for Emily Davis
(8, 5, 7, 2),   -- 2 Yoga Mats for William Brown
(9, 5, 4, 1);   -- 1 T-shirt for William Brown

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing'),
(4, 'Home & Kitchen'),
(5, 'Sports & Outdoors');

SELECT 
    customers.customer_id,
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.total_amount
FROM 
    customers
INNER JOIN 
    orders ON customers.customer_id = orders.customer_id
WHERE 
    customers.customer_id = 1;





