SELECT VALUE {
    startsWithWrongPrefix: STARTSWITH("AdventureWorks", "Works"),
    startsWithCorrectPrefix: STARTSWITH("AdventureWorks", "Adventure"),
    startsWithPrefixWrongCase: STARTSWITH("AdventureWorks", "adventure"),
    startsWithPrefixCaseInsensitive: STARTSWITH("AdventureWorks", "adventure", true)
}