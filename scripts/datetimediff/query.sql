SELECT VALUE {
    diffPastYears: DateTimeDiff("yyyy", "2019-02-04T16:00:00.0000000", "2018-03-05T05:00:00.0000000"),
    diffPastMonths: DateTimeDiff("mm", "2019-02-04T16:00:00.0000000", "2018-03-05T05:00:00.0000000"),
    diffPastDays: DateTimeDiff("diffDays", "2019-02-04T16:00:00.0000000", "2018-03-05T05:00:00.0000000"),
    diffPastHours: DateTimeDiff("hh", "2019-02-04T16:00:00.0000000", "2018-03-05T05:00:00.0000000"),
    diffPastSeconds: DateTimeDiff("ss", "2019-02-04T16:00:00.0000000", "2018-03-05T05:00:00.0000000"),
    diffFutureYears: DateTimeDiff("yyyy", "2018-03-05T05:00:00.0000000", "2019-02-04T16:00:00.0000000"),
    diffFutureMonths: DateTimeDiff("mm", "2018-03-05T05:00:00.0000000", "2019-02-04T16:00:00.0000000"),
    diffFutureDays: DateTimeDiff("diffDays", "2018-03-05T05:00:00.0000000", "2019-02-04T16:00:00.0000000"),
    diffFutureHours: DateTimeDiff("hh", "2018-03-05T05:00:00.0000000", "2019-02-04T16:00:00.0000000"),
    diffFutureSeconds: DateTimeDiff("ss", "2018-03-05T05:00:00.0000000", "2019-02-04T16:00:00.0000000")
}