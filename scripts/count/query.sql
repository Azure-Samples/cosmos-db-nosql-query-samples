SELECT VALUE
    COUNT(p.name)
FROM
    products p
WHERE
    p.category = "socks"