SELECT
    CHOOSE(3, p.category, p.name, p.sku) AS barcode
FROM
    products p
WHERE
    p.category = "short-fins"