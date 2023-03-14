/*

All tables within the database:

Customers: customer data

Employees: all employee information

Offices: sales office information

Orders: customers' sales orders

OrderDetails: sales order line for each sales order

Payments: customers' payment records

Products: a list of scale model cars

ProductLines: a list of product line categories 

*/


CREATE TABLE tables
( 
table_name varchar (50), 
number_of_attributes INT,
number_of_rows INT

); 


INSERT INTO tables 
   
(table_name, number_of_attributes, number_of_rows )
VALUES 
('Customers', '13', '122'),
('Products', '9', '110'),
('ProductLines', '4', '7'),
('Orders', '7', '326'),
('OrderDetails', '5', '2996'),
('Payments', '4', '273'),
('Employees', '8', '23'),
('Offices', '9', '7');