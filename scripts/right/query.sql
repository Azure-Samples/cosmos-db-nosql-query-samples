SELECT VALUE {
    lastZero: RIGHT("AdventureWorks", 0),
    lastOne: RIGHT("AdventureWorks", 1),
    lastFive: RIGHT("AdventureWorks", 5),
    fullLength: RIGHT("AdventureWorks", LENGTH("AdventureWorks")),
    beyondMaxLength: RIGHT("AdventureWorks", 100)
}