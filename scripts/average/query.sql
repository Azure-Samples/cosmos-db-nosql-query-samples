SELECT VALUE
    AVG(p.price)
FROM 
    products p
WHERE
    p.category = "small-bags"