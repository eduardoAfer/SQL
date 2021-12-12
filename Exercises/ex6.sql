SELECT 
    StaffId
FROM
    STAFF
WHERE
    Supervisor IS NULL
UNION
SELECT 
    Manager
FROM
    DEPARTMENT;