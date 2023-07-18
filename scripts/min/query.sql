SELECT
    MIN(p.price) AS minPrice
FROM 
    products p
WHERE
    p.category = "fashion-bracelet"