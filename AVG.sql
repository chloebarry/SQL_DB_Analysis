
SELECT 


(SUM(quantityOrdered * (priceEach - buyPrice))) AS AVG
 
FROM products 
  
  
LEFT JOIN orderdetails ON orderdetails.productCode = PRODUCTS.productCode

LEFT JOIN orders ON orders.orderNumber = orderdetails.orderNumber







