SELECT
    o.name,
    ST_DISTANCE(o.location, {
        "type": "Point", 
        "coordinates": [-122.11758113953535, 47.66901087006131]
    }) / 1000 AS distanceKilometers
FROM
    offices o
WHERE
    o.category = "business-offices"