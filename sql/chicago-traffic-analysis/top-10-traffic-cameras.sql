SELECT rc.Camera_ID, rc.Address
FROM RedCameras rc
JOIN Intersections i
  ON i.Intersection_ID = rc.Intersection_ID
WHERE UPPER(i.Intersection) LIKE '%DAMEN%'
  AND UPPER(i.Intersection) LIKE '%DIVERSEY%'
ORDER BY rc.Camera_ID ASC;

