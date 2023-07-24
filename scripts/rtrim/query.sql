SELECT VALUE {
    whitespaceStart: RTRIM("  AdventureWorks"), 
    whitespaceStartEnd: RTRIM("  AdventureWorks  "), 
    whitespaceEnd: RTRIM("AdventureWorks  "), 
    noWhitespace: RTRIM("AdventureWorks"),
    trimSuffix: RTRIM("AdventureWorks", "Works"),
    trimPrefix: RTRIM("AdventureWorks", "Adventure"),
    trimEntireTerm: RTRIM("AdventureWorks", "AdventureWorks"),
    trimEmptyString: RTRIM("AdventureWorks", "")
}