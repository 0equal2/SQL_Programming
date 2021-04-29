/*
Enter your query here.
*/

-- 평면상의 두 점 P1(a,b), P2(c,d)
-- a : LAT_N min값
-- b : LONG_W min값
-- c : LAT_N max값
-- d : LONG_W max값
-- P1과 P2의 거리를 소수점 4자리까지 표현 sqrt((a-c)^2+(b-d)^2)

SELECT ROUND((c-a)+(d-b),4)
FROM (
    SELECT
    MIN(LAT_N) AS a,
    MIN(LONG_W) AS b,
    MAX(LAT_N) AS c,
    MAX(LONG_W) AS d
    FROM STATION
) t;

