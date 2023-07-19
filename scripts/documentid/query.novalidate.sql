SELECT
    p.id,
    p._rid,
    DOCUMENTID(p) AS documentId
FROM  
    product p