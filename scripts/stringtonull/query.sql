SELECT VALUE {
    parseNullString: StringToNull("null"),
    parseWithPrefix: StringToNull("null  "),
    parseWithSuffix: StringToNull("  null"),
    parseWithWhitespace: StringToNull("  null  "),
    parseUppercase: StringToNull("NULL"),
    parseTitlecase: StringToNull("Null"),
    parseNull: StringToNull(null),
    parseUndefined: StringToNull(undefined)
}