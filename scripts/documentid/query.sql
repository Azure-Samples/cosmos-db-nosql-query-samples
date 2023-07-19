SELECT VALUE {
    uniqueId: p.id,
    name: p.name
}
FROM  
    product p
WHERE
    p.category = "designer-coats" AND
    DocumentId(p) >= 1 AND
    DocumentId(p) < 1000