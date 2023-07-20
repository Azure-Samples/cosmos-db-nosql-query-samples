SELECT VALUE {
    mod: IntMod(12, 5),
    positiveResult: IntMod(12, -5),
    negativeResult: IntMod(-12, -5),
    resultZero: IntMod(15, 5),
    modZero: IntMod(12, 0),
    modDecimal: IntMod(12, 0.2)
}