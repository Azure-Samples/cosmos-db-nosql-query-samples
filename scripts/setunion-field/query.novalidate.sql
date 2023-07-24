SELECT
    p.name,    
    SetUnion(p.colors[0].values, p.colors[1].values) AS allColors
FROM
    products p
WHERE
    p.category = "seasonal-coats"