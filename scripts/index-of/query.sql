SELECT VALUE {
    indexOfFirstLetter: INDEX_OF("AdventureWorks", "A"),
    indexOfLastLetter: INDEX_OF("AdventureWorks", "s"),
    indexOfPrefix: INDEX_OF("AdventureWorks", "Adventure"),
    indexOfSuffix: INDEX_OF("AdventureWorks", "Works"),
    indexOfSubstring: INDEX_OF("AdventureWorks", "tureW"),
    indexOfNonMatch: INDEX_OF("AdventureWorks", "Cosmos"),
    indexOfCustomStartMatch: INDEX_OF("AdventureWorks", "Works", 5),
    indexOfCustomStartNoMatch: INDEX_OF("AdventureWorks", "Adventure", 5),
    indexOfCaseSensitive: INDEX_OF("AdventureWorks", "aD")
}