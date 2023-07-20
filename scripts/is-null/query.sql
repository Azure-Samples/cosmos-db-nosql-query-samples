SELECT VALUE {
    booleanIsNull: IS_NULL(true),
    numberIsNull: IS_NULL(15),  
    stringIsNull: IS_NULL("AdventureWorks"),   
    nullIsNull: IS_NULL(null),  
    objectIsNull: IS_NULL({price: 85.23}),   
    arrayIsNull: IS_NULL(["red", "blue", "yellow"]),  
    populatedObjectPropertyIsNull: IS_NULL({quantity: 25, vendor: null}.quantity),
    invalidObjectPropertyIsNull: IS_NULL({quantity: 25, vendor: null}.size),
    nullObjectPropertyIsNull: IS_NULL({quantity: 25, vendor: null}.vendor)
}