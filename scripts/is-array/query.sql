SELECT VALUE {
    booleanIsArray: IS_ARRAY(true),
    numberIsArray: IS_ARRAY(65),  
    stringIsArray: IS_ARRAY("AdventureWorks"),   
    nullIsArray: IS_ARRAY(null),  
    objectIsArray: IS_ARRAY({size: "small"}),   
    arrayIsArray: IS_ARRAY([25344, 82947]),  
    arrayObjectPropertyIsArray: IS_ARRAY({skus: [25344, 82947], vendors: null}.skus),
    invalidObjectPropertyIsArray: IS_ARRAY({skus: [25344, 82947], vendors: null}.size),
    nullObjectPropertyIsArray: IS_ARRAY({skus: [25344, 82947], vendors: null}.vendor)
}