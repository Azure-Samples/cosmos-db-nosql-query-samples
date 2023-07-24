SELECT
    p.name,
    NumberBin(p.price, 0.01) AS price
FROM
    products p
WHERE
    p.category = "portable-cooking"