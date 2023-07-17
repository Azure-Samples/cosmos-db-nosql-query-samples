SELECT
    MAX(p.price) AS maxPrice
FROM 
    products p
WHERE
    p.category = "activity-bracelet"