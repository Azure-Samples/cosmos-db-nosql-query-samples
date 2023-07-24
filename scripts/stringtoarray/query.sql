SELECT VALUE {
    parseEmptyArray: StringToArray("[]"),
    parseArray: StringToArray('[ "coats", "gloves", "hats" ]'),
    complexArray: StringToArray('[ { "types": [ "coats", "gloves" ] }, [ "hats" ], 76, false, null ]'),
    nestedArray: StringToArray('[ [ "coats", "gloves" ], [ "hats" ] ]'),
    invalidArray: StringToArray("[ 'coats', 'gloves', 'hats' ]"),
    parseUndefined: StringToArray(undefined),
    parseNull: StringToArray(null)
}