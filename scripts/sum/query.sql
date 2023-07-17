SELECT VALUE
    SUM(p.quantity)
FROM 
    products p
WHERE
    p.category = "hiking-bags"