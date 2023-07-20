SELECT
    i.id,
    i.pk AS partitionKey,
    GetCurrentTimestamp() AS nonStaticTimestamp,
    GetCurrentTimestampStatic() AS staticTimestamp
FROM
    items i