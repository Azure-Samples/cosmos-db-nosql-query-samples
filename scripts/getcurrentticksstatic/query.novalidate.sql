SELECT
    i.id,
    i.pk AS partitionKey,
    GetCurrentTicks() AS nonStaticTicks,
    GetCurrentTicksStatic() AS staticTicks
FROM
    items i