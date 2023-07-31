SELECT VALUE {
    employeeName: e.name,
    currentTeam: e.team
}
FROM
    employees e
WHERE
    e.team = "Hospitality"