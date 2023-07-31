SELECT 
    COUNT(1) AS employeesWithThisTraining, 
    e.capabilities.softwareDevelopment AS developmentLang,
    e.capabilities.mediaTrained AS mediaReady
FROM
    employees e
WHERE
    e.team = "Cloud software engineering"
GROUP BY
    e.capabilities.softwareDevelopment,
    e.capabilities.mediaTrained