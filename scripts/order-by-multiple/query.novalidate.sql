SELECT VALUE {
    firstName: e.name.first,
    lastName: e.name.last
}
FROM
    employees e
WHERE
    e.team = "Human resources"
ORDER BY
    e.name.last DESC,
    e.name.first ASC