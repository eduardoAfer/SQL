SELECT 
    SUM(Charge)
FROM
    STREAM
WHERE
    Year(StreamDate) = '2018';