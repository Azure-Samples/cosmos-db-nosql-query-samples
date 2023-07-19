SELECT
    i.id,
    i.pk AS partitionKey,
    GetCurrentDateTime() AS nonStaticDateTime,
    GetCurrentDateTimeStatic() AS staticDateTime
FROM
    items i