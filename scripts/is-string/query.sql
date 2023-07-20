SELECT VALUE {
    isBooleanAString: IS_STRING(true),
    isNumberAString: IS_STRING(1),
    isStringAString: IS_STRING("value"),
    isArrayAString: IS_STRING([ "green", "red", "yellow" ]),
    isNullAString: IS_STRING(null),
    isObjectAString: IS_STRING({ "name": "Tecozow coat" }),
    isObjectStringPropertyAString: IS_STRING({ "name": "Tecozow coat" }.name),
    isObjectBooleanPropertyAString: IS_STRING({ "onSale": false }.onSale),
    isUndefinedAString: IS_STRING({}.category)
}