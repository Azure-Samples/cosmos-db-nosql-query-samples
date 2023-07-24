SELECT VALUE {
    firstZero: LEFT("AdventureWorks", 0),
    firstOne: LEFT("AdventureWorks", 1),
    firstFive: LEFT("AdventureWorks", 5),
    fullLength: LEFT("AdventureWorks", LENGTH("AdventureWorks")),
    beyondMaxLength: LEFT("AdventureWorks", 100)
}