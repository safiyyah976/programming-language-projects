SELECT SUM(Num_Violations)
FROM Violations
WHERE Camera_ID IN (
  SELECT Camera_ID
  FROM Cameras
  WHERE Intersection LIKE '%Roosevelt%'
    AND Intersection LIKE '%Halsted%'
)
AND Violation_Date LIKE '%/2020';

SELECT SUM(Num_Violations)
FROM Violations
WHERE Camera_ID IN (
  SELECT Camera_ID
  FROM Cameras
  WHERE Intersection LIKE '%Roosevelt%'
    AND Intersection LIKE '%Halsted%'
)
AND Violation_Date LIKE '%/2023';
