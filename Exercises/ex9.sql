SELECT 
    m.Title,
    m.Duration,
    m.Year,
    s.StreamDate
FROM 
    MOVIE AS m NATURAL JOIN STREAM as s
WHERE
    m.Duration >= 140 AND m.Year = YEAR(s.StreamDate) - 1;

    
