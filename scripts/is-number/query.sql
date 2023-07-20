SELECT VALUE {
    isBooleanANumber: IS_NUMBER(true),
    isNumberANumber: IS_NUMBER(1),
    isStringANumber: IS_NUMBER("value"),
    isNullANumber: IS_NUMBER(null),
    isObjectANumber: IS_NUMBER({ "name": "Tecozow coat" }),
    isObjectStringPropertyANumber: IS_NUMBER({ "name": "Tecozow coat" }.name),
    isObjectNumberPropertyANumber: IS_NUMBER({ "quantity": 0 }.quantity),
    isUndefinedANumber: IS_NUMBER({}.category)
}