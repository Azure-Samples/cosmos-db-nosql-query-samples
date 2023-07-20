SELECT VALUE {
    booleanIsBool: IS_BOOL(true),
    numberIsBool: IS_BOOL(65),  
    stringIsBool: IS_BOOL("AdventureWorks"),   
    nullIsBool: IS_BOOL(null),  
    objectIsBool: IS_BOOL({size: "small"}),   
    arrayIsBool: IS_BOOL([25344, 82947]),  
    arrayObjectPropertyIsBool: IS_BOOL({skus: [25344, 82947], vendors: null}.skus),
    invalidObjectPropertyIsBool: IS_BOOL({skus: [25344, 82947], vendors: null}.size),
    nullObjectPropertyIsBool: IS_BOOL({skus: [25344, 82947], vendors: null}.vendor)
}