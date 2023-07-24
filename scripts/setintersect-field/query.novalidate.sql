SELECT
    p.name,
    SetIntersect(p.colors, p.inStockColors) AS availableColors
FROM
    products p
WHERE
    p.category = "modern-vests"