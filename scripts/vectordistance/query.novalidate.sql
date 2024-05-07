SELECT
    c.name,
    VectorDistance(c.vector, [1,2,3]) AS SimilarityScore 
FROM
    c
ORDER BY VectorDistance(c.vector, [1,2,3]) AS SimilarityScore 
