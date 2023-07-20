SELECT VALUE {
    isBooleanAPrimitive: IS_PRIMITIVE(true),
    isNumberAPrimitive: IS_PRIMITIVE(1),
    isStringAPrimitive: IS_PRIMITIVE("value"),
    isArrayAPrimitive: IS_PRIMITIVE([ "green", "red", "yellow" ]),
    isNullAPrimitive: IS_PRIMITIVE(null),
    isObjectAPrimitive: IS_PRIMITIVE({ "name": "Tecozow coat" }),
    isObjectStringPropertyAPrimitive: IS_PRIMITIVE({ "name": "Tecozow coat" }.name),
    isObjectBooleanPropertyAPrimitive: IS_PRIMITIVE({ "onSale": false }.onSale),
    isUndefinedAPrimitive: IS_PRIMITIVE({}.category)
}