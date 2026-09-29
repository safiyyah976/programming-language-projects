SELECT sc.Camera_ID, sc.Address, SUM(sv.Num_Violations) AS Total_Violations
FROM SpeedCameras sc
JOIN SpeedViolations sv
  ON sv.Camera_ID = sc.Camera_ID
JOIN Intersections i
  ON i.Intersection_ID = sc.Intersection_ID
WHERE UPPER(i.Intersection) LIKE '%PULASKI%'
  AND UPPER(i.Intersection) LIKE '%55TH%'
  AND UPPER(i.Intersection) NOT LIKE '%I55%'
  AND UPPER(i.Intersection) NOT LIKE '%I-55%'
  AND UPPER(i.Intersection) NOT LIKE '%I 55%'
GROUP BY sc.Camera_ID, sc.Address
ORDER BY SUM(sv.Num_Violations) DESC
LIMIT 1;

