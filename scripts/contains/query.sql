SELECT VALUE {
    containsPrefix: CONTAINS("AdventureWorks", "Adventure"), 
    containsSuffix: CONTAINS("AdventureWorks", "Works"),
    containsWrongCase: CONTAINS("AdventureWorks", "adventure"), 
    containsWrongCaseValidateCase: CONTAINS("AdventureWorks", "adventure", false), 
    containsWrongCaseIgnoreCase: CONTAINS("AdventureWorks", "works", true),
    containsMismatch: CONTAINS("AdventureWorks", "Contoso")
}