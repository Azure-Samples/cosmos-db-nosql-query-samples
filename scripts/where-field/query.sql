SELECT VALUE {
    employeeName: e.name,
    isPartTime: e.partTime
}
FROM
    employees e
WHERE
    e.partTime
    AND e.team = "Facilities"