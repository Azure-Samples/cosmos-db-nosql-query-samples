SELECT 
    COUNT(1) AS trainedEmployees, 
    e.capabilities.softwareDevelopment AS developmentLang
FROM
    employees e
WHERE
    e.team = "Cloud software engineering"
GROUP BY
    e.capabilities.softwareDevelopment