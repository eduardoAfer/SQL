SELECT 
    Year,
    COUNT(*) AS N
FROM 
    MOVIE
WHERE
   Duration >= 120
GROUP BY 
    Year
HAVING 
    N >= 20;