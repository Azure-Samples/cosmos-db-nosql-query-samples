SELECT VALUE {
    name: e.name
}
FROM
    employees e
WHERE
    e.team = "Leadership team"
ORDER BY
    e.name