SELECT VALUE {
    whitespaceStart: LTRIM("  AdventureWorks"), 
    whitespaceStartEnd: LTRIM("  AdventureWorks  "), 
    whitespaceEnd: LTRIM("AdventureWorks  "), 
    noWhitespace: LTRIM("AdventureWorks"),
    trimSuffix: LTRIM("AdventureWorks", "Works"),
    trimPrefix: LTRIM("AdventureWorks", "Adventure"),
    trimEntireTerm: LTRIM("AdventureWorks", "AdventureWorks"),
    trimEmptyString: LTRIM("AdventureWorks", "")
}