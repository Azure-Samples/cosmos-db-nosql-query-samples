SELECT VALUE {
    substringPrefix: SUBSTRING("AdventureWorks", 0, 9),
    substringSuffix: SUBSTRING("AdventureWorks", 9, 5),
    substringTotalLength: SUBSTRING("AdventureWorks", 0, LENGTH("AdventureWorks")),
    substringEmptyString: SUBSTRING("AdventureWorks", 0, -1)
}