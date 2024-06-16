SELECT  product_code,
        SUM(price * sales_amount) AS sales
FROM product P
JOIN offline_sale O ON P.product_id = O.product_id
GROUP BY product_code
ORDER BY sales DESC, product_code;