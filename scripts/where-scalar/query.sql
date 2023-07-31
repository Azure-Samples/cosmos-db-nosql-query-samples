SELECT VALUE {
    employeeName: e.name,
    vacationDaysRemaining: e.vacationDays
}
FROM
    employees e
WHERE
    e.vacationDays >= 7
    AND e.team = "Software engineering"