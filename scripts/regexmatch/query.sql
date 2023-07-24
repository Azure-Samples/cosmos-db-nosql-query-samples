SELECT VALUE {
    noModifiers: RegexMatch("abcd", "ABC"), 
    caseInsensitive: RegexMatch("abcd", "ABC", "i"), 
    wildcardCharacter: RegexMatch("abcd", "ab.", ""),
    ignoreWhiteSpace: RegexMatch("abcd", "ab c", "x"), 
    caseInsensitiveAndIgnoreWhiteSpace: RegexMatch("abcd", "aB c", "ix"),
    containNumberBetweenZeroAndNine: RegexMatch("03a", "[0-9]"),
    containPrefix: RegexMatch("salt3824908", "salt{1}"),
    containsFiveLetterWordStartingWithS: RegexMatch("shame", "s....", "i")
}