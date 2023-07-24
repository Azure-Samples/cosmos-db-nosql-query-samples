SELECT VALUE {
    parseEmptyObject: StringToObject("{}"),
    parseObjectWithProperty: StringToObject('{"isAvailable": true}'),
    parseObjectNested: StringToObject('{"division": {"name": "Sales"}}'),
    parseObjectInvalidJson: StringToObject("{'price': 27.55}"),
    parseUndefined: StringToNumber(undefined),
    parseNull: StringToNumber(null)
}