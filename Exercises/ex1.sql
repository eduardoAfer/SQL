SELECT 
    Title,
    Year
FROM 
    MOVIE
WHERE 
    Duration IN (
        SELECT 
            Duration
        FROM 
            MOVIE
        WHERE 
            Duration >= 180
    );