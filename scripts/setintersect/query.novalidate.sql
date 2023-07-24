SELECT VALUE {
    simpleIntersect: SetIntersect([1, 2, 3, 4], [3, 4, 5, 6]),
    emptyIntersect: SetIntersect([1, 2, 3, 4], []),
    duplicatesIntersect: SetIntersect([1, 2, 3, 4], [1, 1, 1, 1]),
    noMatchesIntersect: SetIntersect([1, 2, 3, 4], ["A", "B"]),
    unorderedIntersect: SetIntersect([1, 2, "A", "B"], ["A", 1])
}