SELECT VALUE {
    sliceFromStart: ARRAY_SLICE([70, 86, 92, 99, 85, 90, 82], 0),
    sliceFromSecond: ARRAY_SLICE([70, 86, 92, 99, 85, 90, 82], 1),
    sliceFromLast: ARRAY_SLICE([70, 86, 92, 99, 85, 90, 82], -1),
    sliceFromSecondToLast: ARRAY_SLICE([70, 86, 92, 99, 85, 90, 82], -2),
    sliceThreeFromStart: ARRAY_SLICE([70, 86, 92, 99, 85, 90, 82], 0, 3),
    sliceTwelveFromStart: ARRAY_SLICE([70, 86, 92, 99, 85, 90, 82], 0, 12),
    sliceFiveFromThird: ARRAY_SLICE([70, 86, 92, 99, 85, 90, 82], 3, 5),
    sliceOneFromSecondToLast: ARRAY_SLICE([70, 86, 92, 99, 85, 90, 82], -2, 1)
}