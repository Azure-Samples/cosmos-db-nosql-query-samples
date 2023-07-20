SELECT VALUE {
    isDefined: IS_DEFINED({ "quantity" : 5 }.quantity), 
    isNotDefined: IS_DEFINED({ "quantity" : 5 }.name)
}