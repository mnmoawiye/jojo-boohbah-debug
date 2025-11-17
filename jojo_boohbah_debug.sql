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

SELECT name, color
FROM boohbah
WHERE energy_level > 80;

--Question 4
SELECT boohbah_id, stand_id
FROM boohbah b
JOIN boohbah_stand_link l
ON b.boohbah_id = l.boohbah_id
WHERE boohbah_id = 2;

SELECT b.boohbah_id, l.stand_id
FROM boohbah b
JOIN boohbah_stand_link l
ON b.boohbah_id = l.boohbah_id
WHERE b.boohbah_id = 2;

