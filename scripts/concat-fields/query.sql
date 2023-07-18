SELECT VALUE {
    sku: CONCAT(p.slug, "-", p.category, "-", p.model)
}
FROM
    products p
WHERE
    p.category = "heavy-coats"