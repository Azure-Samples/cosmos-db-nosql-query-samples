SELECT VALUE {
    simpleUnion: SetUnion([1, 2, 3, 4], [3, 4, 5, 6]),
    emptyUnion: SetUnion([1, 2, 3, 4], []),
    duplicatesUnion: SetUnion([1, 2, 3, 4], [1, 1, 1, 1]),
    unorderedUnion: SetUnion([1, 2, "A", "B"], ["A", 1])
}