SELECT VALUE {
    exclusiveOr: IntBitXor(56, 100),
    exclusiveOrSame: IntBitXor(56, 56),
    exclusiveOrZero: IntBitXor(56, 0),
    exclusiveOrDecimal: IntBitXor(56, 0.1)
}