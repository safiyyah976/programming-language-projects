SELECT Camera_ID, Intersection, Address
FROM Cameras
WHERE Intersection LIKE '%Roosevelt%'
ORDER BY Camera_ID ASC;
