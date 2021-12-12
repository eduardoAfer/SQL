SELECT
    D.DepId,
    D.Name,
    S.StaffId,
    S.Name
FROM
    DEPARTMENT as D inner join STAFF as S
    on D.Manager = S.StaffId;


