SELECT VALUE {
    name: e.name,
    location: e.workLocation
}
FROM
    employees e
WHERE
    e.team = "Tech support"