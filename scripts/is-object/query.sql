SELECT VALUE {
    isBooleanAnObject: IS_OBJECT(true),
    isNumberAnObject: IS_OBJECT(1),
    isStringAnObject: IS_OBJECT("value"),
    isArrayAnObject: IS_OBJECT([ "green", "red", "yellow" ]),
    isNullAnObject: IS_OBJECT(null),
    isObjectAnObject: IS_OBJECT({ "name": "Tecozow coat" }),
    isObjectStringPropertyAnObject: IS_OBJECT({ "name": "Tecozow coat" }.name),
    isObjectObjectPropertyAnObject: IS_OBJECT({ "quantity": { "count": 0 } }.quantity),
    isUndefinedAnObject: IS_OBJECT({}.category)
}