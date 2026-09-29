SELECT SUBSTR(rv.Violation_Date, 1, 4) AS Year,
       SUM(rv.Num_Violations) AS Total_Violations
FROM RedViolations rv
JOIN RedCameras rc
  ON rc.Camera_ID = rv.Camera_ID
JOIN Intersections i
  ON i.Intersection_ID = rc.Intersection_ID
WHERE UPPER(i.Intersection) LIKE '%CICERO%'
  AND UPPER(i.Intersection) LIKE '%I55%'
GROUP BY SUBSTR(rv.Violation_Date, 1, 4)
ORDER BY SUBSTR(rv.Violation_Date, 1, 4) ASC;

