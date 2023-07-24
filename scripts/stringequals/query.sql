SELECT VALUE {
    compareSameCase: STRINGEQUALS("AdventureWorks", "AdventureWorks"),
    compareDifferentCase: STRINGEQUALS("AdventureWorks", "adventureworks"),
    compareIgnoreCase: STRINGEQUALS("AdventureWorks", "adventureworks", true)
}