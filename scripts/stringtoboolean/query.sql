SELECT VALUE {
    parseBooleanString: StringToBoolean("true"),
    parseWithPrefix: StringToBoolean("true  "),
    parseWithSuffix: StringToBoolean("  false"),
    parseWithWhitespace: StringToBoolean("  false  "),
    parseBoolean: StringToBoolean(true),
    parseInteger: StringToBoolean("100"), 
    parseDecimal: StringToBoolean("3.14"),
    parseScientific: StringToBoolean("-1.79769e+308"),
    parseInvalid: StringToBoolean("Hello"),
    parseUndefined: StringToBoolean(undefined),
    parseNull: StringToBoolean(null),
    parseNaN: StringToBoolean(NaN),
    parseArray: StringToBoolean([ 1, 2, 3 ]),
    parseInfinity: StringToBoolean(Infinity)
}