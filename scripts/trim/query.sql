SELECT VALUE {
    trimPrefix: TRIM("   AdventureWorks"),
    trimSuffix: TRIM("AdventureWorks   "),
    trimWhitespace: TRIM("   AdventureWorks   "),
    trimWrongCharacter: TRIM("---AdventureWorks---"),
    trimUnderscores: TRIM("___AdventureWorks___", "_"),
    trimHyphens: TRIM("---AdventureWorks---", "-"),
    trimSubsetCharacters: TRIM("-- AdventureWorks --", "-")
}