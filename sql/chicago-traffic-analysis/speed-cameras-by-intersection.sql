SELECT i.Intersection_ID, i.Intersection, COUNT(sc.Camera_ID) AS Num_Speed_Cameras
FROM Intersections i
JOIN SpeedCameras sc
  ON sc.Intersection_ID = i.Intersection_ID
GROUP BY i.Intersection_ID, i.Intersection
ORDER BY COUNT(sc.Camera_ID) DESC, i.Intersection_ID ASC;
