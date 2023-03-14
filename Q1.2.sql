SELECT products.productCode, products.productName, orderdetails.quantityOrdered, products.productLine,

ROUND(SUM( orderdetails.quantityOrdered * orderdetails.priceEach), 2) AS Perfermance

FROM products 

LEFT JOIN orderdetails ON orderdetails.productCode = PRODUCTS.productCode


GROUP BY products.productCode

ORDER BY Perfermance DESC
                           
LIMIT 10;
