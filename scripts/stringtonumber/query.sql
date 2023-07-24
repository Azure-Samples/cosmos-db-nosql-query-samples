SELECT VALUE {
    parseInteger: StringToNumber("100"), 
    parseDecimal: StringToNumber("3.14"),
    parseWithWhitespace: StringToNumber("   60   "), 
    parseScientific: StringToNumber("-1.79769e+308"),
    parseInvalid: StringToNumber("Hello")
}