SELECT VALUE {
    containsItem: ARRAY_CONTAINS(["coats", "jackets", "sweatshirts"], "coats"),
    missingItem: ARRAY_CONTAINS(["coats", "jackets", "sweatshirts"], "hoodies"),
    containsFullMatchObject: ARRAY_CONTAINS([{ category: "shirts", color: "blue" }], { category: "shirts", color: "blue" }),
    missingFullMatchObject: ARRAY_CONTAINS([{ category: "shirts", color: "blue" }], { category: "shirts" }),
    containsPartialMatchObject: ARRAY_CONTAINS([{ category: "shirts", color: "blue" }], { category: "shirts" }, true),
    missingPartialMatchObject: ARRAY_CONTAINS([{ category: "shirts", color: "blue" }], { category: "shorts", color: "blue" }, true)
}