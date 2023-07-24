SELECT VALUE {
    emptyObject: StringToObject("{}"),
    objectWithProperty: StringToObject('{"isAvailable": true}'),
    objectNested: StringToObject('{"division": {"name": "Sales"}}'),
    objectInvalidJson: StringToObject("{'price': 27.55}"),
    parseUndefined: StringToNumber(undefined),
    parseNull: StringToNumber(null)
}