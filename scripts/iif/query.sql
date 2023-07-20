SELECT VALUE {
    evalTrue: IIF(true, 123, 456),
    evalFalse: IIF(false, 123, 456),
    evalNumberNotTrue: IIF(123, 123, 456),
    evalStringNotTrue: IIF("ABC", 123, 456),
    evalArrayNotTrue: IIF([1,2,3], 123, 456),
    evalObjectNotTrue: IIF({"name": "Alice", "age": 20}, 123, 456)
}