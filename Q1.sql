SELECT products.productCode, products.productName, orderdetails.quantityOrdered, 

ROUND(SUM( orderdetails.quantityOrdered / products.quantityInStock)) AS lowStock

FROM products 

LEFT JOIN orderdetails ON orderdetails.productCode = PRODUCTS.productCode


GROUP BY products.productCode

                           
LIMIT 10;

