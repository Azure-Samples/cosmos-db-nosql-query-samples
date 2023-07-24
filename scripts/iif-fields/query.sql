SELECT
    p.name,
    IIF(p.onSale, p.pricing.sale, p.pricing.msrp) AS price
FROM
    products p
WHERE
    p.category = "camp-utensils"