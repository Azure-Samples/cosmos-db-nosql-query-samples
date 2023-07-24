SELECT VALUE
    p.name
FROM
    products p
WHERE
    p.category = "winter-coats" AND    
    RegexMatch(p.name, " coat{1}")