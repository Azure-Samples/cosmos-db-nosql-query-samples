SELECT VALUE {
    integerToString: ToString(125),
    floatToString: ToString(0.1234),
    booleanToString: ToString(false),
    arrayToString: ToString([ 1, 2, 3 ]),
    objectToString: ToString({ "department": "Bicycles" }),
    stringToString: ToString("Hello World"),
    undefinedToString: ToString(undefined),
    notANumberToString: ToString(NaN),
    infinityToString: ToString(Infinity)
}