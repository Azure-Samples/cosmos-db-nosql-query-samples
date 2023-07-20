SELECT VALUE {
    finiteValue: IS_FINITE_NUMBER(1234.567),
    infiniteValue: IS_FINITE_NUMBER(8.9 / 0.0),
    nanValue: IS_FINITE_NUMBER(SQRT(-1.0))
}