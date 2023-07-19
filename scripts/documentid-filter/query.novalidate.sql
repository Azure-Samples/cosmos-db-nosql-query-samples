SELECT
    p.id,
    DOCUMENTID(p) AS documentId
FROM  
    product p
WHERE
    DOCUMENTID(p) >= 5 AND
    DOCUMENTID(p) <= 15