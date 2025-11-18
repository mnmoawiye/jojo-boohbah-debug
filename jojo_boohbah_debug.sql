--QUESTION 1
--Error
SELECT boohbah_id, AVG(sync_level), name
FROM boohbah_stand_link
JOIN boohbah USING (boohbah_id)
GROUP BY boohbah_id;

--Corrected 
SELECT boohbah_id, AVG(sync_level), name
FROM boohbah_stand_link
JOIN boohbah USING (boohbah_id)
GROUP BY boohbah_id, name;

--QUESTION 2
--Error
SELECT b.name, s.stand_name
FROM boohbah b
JOIN jojo_stand s
ON b.boohbah_id = s.stand_id;
--Corrected 
SELECT b.name, s.stand_name
FROM boohbah b
JOIN boohbah_stand_link l ON b.boohbah_id = l.boohbah_id
JOIN jojo_stand s ON l.stand_id = s.stand_id;

--QUESTION 3
--Error
SELECT boohbah_name, color
FROM boohbah
WHERE energy_level > 80;
--Corrected
SELECT name, color
FROM boohbah
WHERE energy_level > 80;

--Question 4
--Error
SELECT boohbah_id, stand_id
FROM boohbah b
JOIN boohbah_stand_link l
ON b.boohbah_id = l.boohbah_id
WHERE boohbah_id = 2;
--Corrected
SELECT b.boohbah_id, l.stand_id
FROM boohbah b
JOIN boohbah_stand_link l
ON b.boohbah_id = l.boohbah_id
WHERE b.boohbah_id = 2;

--QUESTION 5
--Error
SELECT name
FROM boohbah b
WHERE energy_level > (SELECT AVG(energy_level)
                      FROM boohbah
                      WHERE boohbah_id = boohbah_id);
--Corrected 
SELECT name
FROM boohbah b
WHERE energy_level > (SELECT AVG(energy_level)
                      FROM boohbah);

--QUESTION 6
--Error
SELECT name
FROM boohbah
WHERE energy_level > (SELECT power
                      FROM jojo_stand
                      WHERE season = 3);
--Corrected 
SELECT name
FROM boohbah
WHERE energy_level > ALL (SELECT power
                          FROM jojo_stand
                          WHERE season = 3);

--QUESTION 7
--Error
SELECT b.name, s.stand_name
FROM boohbah b, jojo_stand s
WHERE b.energy_level > 80;
--Corrected
SELECT b.name, s.stand_name
FROM boohbah b
JOIN boohbah_stand_link l ON b.boohbah_id = l.boohbah_id
JOIN jojo_stand s ON l.stand_id = s.stand_id
WHERE b.energy_level > 80;

--QUESTION 8
--Error
SELECT boohbah_id, sync_level
FROM boohbah_stand_link
WHERE sync_level > AVG(sync_level);
--Corrected
SELECT boohbah_id, sync_level
FROM boohbah_stand_link
WHERE sync_level > (SELECT AVG(sync_level) FROM boohbah_stand_link);

--QUESTION 9
--Error
SELECT boohbah_id, stand_id
FROM boohbah_stand_link
WHERE (boohbah_id, stand_id) IN
      (SELECT stand_id, boohbah_id FROM boohbah_stand_link);

--Corrected
SELECT boohbah_id, stand_id
FROM boohbah_stand_link
WHERE (boohbah_id, stand_id) IN
       (SELECT boohbah_id, stand_id FROM boohbah_stand_link);

