SELECT VALUE {
    addOneYear: DateTimeAdd("yyyy", 1, "2020-07-03T00:00:00.0000000"),
    addOneMonth: DateTimeAdd("mm", 1, "2020-07-03T00:00:00.0000000"),
    addOneDay: DateTimeAdd("dd", 1, "2020-07-03T00:00:00.0000000"),
    addOneHour: DateTimeAdd("hh", 1, "2020-07-03T00:00:00.0000000"),
    subtractOneYear: DateTimeAdd("yyyy", -1, "2020-07-03T00:00:00.0000000"),
    subtractOneMonth: DateTimeAdd("mm", -1, "2020-07-03T00:00:00.0000000"),
    subtractOneDay: DateTimeAdd("dd", -1, "2020-07-03T00:00:00.0000000"),
    subtractOneHour: DateTimeAdd("hh", -1, "2020-07-03T00:00:00.0000000"),
    modifySecondsExpression: DateTimeAdd("ss", 5 * -5, "2020-07-03T00:00:00.0000000")
}