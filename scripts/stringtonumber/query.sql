SELECT VALUE {
    parseIntegerString: StringToNumber("100"), 
    parseDecimalString: StringToNumber("3.14"),
    parseWithWhitespace: StringToNumber("   60   "), 
    parseScientific: StringToNumber("-1.79769e+308"),
    parseInvalid: StringToNumber("Hello"),
    parseUndefined: StringToNumber(undefined),
    parseNull: StringToNumber(null),
    parseNaN: StringToNumber(NaN),
    parseInfinity: StringToNumber(Infinity)
}