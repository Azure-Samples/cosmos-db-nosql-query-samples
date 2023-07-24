SELECT
    p.name,
    ObjectToArray(p.quantities, "size", "quantity") AS quantitiesBySize
FROM
    products p
WHERE
    p.category = "sport-helmets"