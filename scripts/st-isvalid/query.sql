SELECT VALUE {
    valid: ST_ISVALID({ 
        "type": "Point",
        "coordinates": [-84.38876194345323, 33.75682784306348] 
    }),
    invalid: ST_ISVALID({ 
        "type": "Point",
        "coordinates": [133.75682784306348, -184.38876194345323] 
    })
}