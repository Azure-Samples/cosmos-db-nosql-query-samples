SELECT VALUE {
    isHeadquartersWithinCampus: ST_WITHIN({
        "type": "Point",
        "coordinates": [
            -122.12824857332558,
            47.6395516675712
        ]
    }, {            
        "type": "Polygon",
        "coordinates": [ [
            [
              -122.13236581015025,
              47.64606476313813
            ],
            [
              -122.13221982500913,
              47.633757091363975
            ],
            [
              -122.11840598103835,
              47.641749416109235
            ],
            [
              -122.12061400629656,
              47.64589264786028
            ],
            [
              -122.13236581015025,
              47.64606476313813
            ]
        ] ]
    })
}