SELECT v.camera_id, c.address, SUM(v.num_violations) AS total_violations
FROM redviolations v
JOIN redcameras c
  ON v.camera_id = c.camera_id
GROUP BY v.camera_id, c.address
ORDER BY SUM(v.num_violations) DESC
LIMIT 10;
