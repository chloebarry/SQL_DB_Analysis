SELECT products.productCode, products.productName, orderdetails.quantityOrdered, 

ROUND(SUM( orderdetails.quantityOrdered / products.quantityInStock)) AS lowStock, 

SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS Perfermance

FROM products 

LEFT JOIN orderdetails ON orderdetails.productCode = PRODUCTS.productCode

WHERE 

GROUP BY products.productCode

                           
LIMIT 10;