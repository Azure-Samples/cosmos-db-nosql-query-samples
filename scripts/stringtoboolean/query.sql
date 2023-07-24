SELECT VALUE {
    parseBooleanString: StringToBoolean("true"),
    parseWithPrefix: StringToBoolean("true  "),
    parseWithSuffix: StringToBoolean("  false"),
    parseWithWhitespace: StringToBoolean("  false  "),
    parseBoolean: StringToBoolean(true),
    parseUndefined: StringToBoolean(undefined),
    parseNull: StringToBoolean(null)
}