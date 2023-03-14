SELECT 

orders.customerNumber, customers.contactFirstName, customers.contactLastName, customers.city, customers.country,
orderdetails.orderNumber, orderdetails.quantityOrdered, orderdetails.priceEach, 


SUM(quantityOrdered * (priceEach - buyPrice)) AS Profit 

FROM 

products


LEFT JOIN orderdetails ON orderdetails.productCode = PRODUCTS.productCode

LEFT JOIN orders ON orders.orderNumber = orderdetails.orderNumber

LEFT JOIN customers ON customers.customerNumber = orders.customerNumber

WHERE orders.customerNumber IS NOT NULL 

GROUP BY orders.customerNumber

ORDER BY Profit DESC 

LIMIT 5;


