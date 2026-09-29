SELECT SUBSTR(sv.Violation_Date, 1, 4) AS Year,
       SUM(sv.Num_Violations) AS Total_Violations
FROM SpeedCameras sc
JOIN SpeedViolations sv
  ON sv.Camera_ID = sc.Camera_ID
WHERE UPPER(sc.Address) LIKE '%2928%'
  AND UPPER(sc.Address) LIKE '%HALSTED%'
GROUP BY SUBSTR(sv.Violation_Date, 1, 4)
ORDER BY SUM(sv.Num_Violations) ASC
LIMIT 5;

