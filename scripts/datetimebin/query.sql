SELECT VALUE {
    binDay: DateTimeBin("2021-01-08T18:35:00.0000000", "dd"),
    binHour: DateTimeBin("2021-01-08T18:35:00.0000000", "hh"),
    binSecond: DateTimeBin("2021-01-08T18:35:00.0000000", "ss"),
    binFiveHours: DateTimeBin("2021-01-08T18:35:00.0000000", "hh", 5),
    binSevenDaysUnixEpoch: DateTimeBin("2021-01-08T18:35:00.0000000", "dd", 7),
    binSevenDaysWindowsEpoch: DateTimeBin("2021-01-08T18:35:00.0000000", "dd", 7, "1601-01-01T00:00:00.0000000")
}