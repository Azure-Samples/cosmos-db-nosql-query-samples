SELECT VALUE {
    endsWithWrongSuffix: ENDSWITH("AdventureWorks", "Adventure"),
    endsWithCorrectSuffix: ENDSWITH("AdventureWorks", "Works"),
    endsWithSuffixWrongCase: ENDSWITH("AdventureWorks", "works"),
    endsWithSuffixCaseInsensitive: ENDSWITH("AdventureWorks", "works", true)
}