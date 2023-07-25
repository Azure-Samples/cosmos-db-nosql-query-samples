SELECT VALUE {
    name: e.identity.name,
    team: e.team,
    phone: e.contact[0]
}
FROM
    employees e
WHERE
    e.team = "Field sales"