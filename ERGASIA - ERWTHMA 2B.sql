CREATE VIEW MonthlyRecordingSchedule AS
SELECT r.title AS recording_title,
       r.recording_date AS recording_date,
       r.format AS recording_format,
       s.title AS song_title,
       a.title AS album_title,
	   a.main_producer AS featuring_artist,
       m.name AS musician_name,
       m.address AS musician_address
FROM recordings r
JOIN recordingsongs rs ON r.recording_id = rs.recording_id
JOIN songs s ON rs.song_id = s.song_id
JOIN albums a ON s.album_id = a.album_id
JOIN musiciansongs ms ON s.song_id = ms.song_id
JOIN musicians m ON ms.amka = m.AMKA
WHERE r.recording_date BETWEEN '2024-05-01' AND '2024-06-30'; 

SELECT * FROM MonthlyRecordingSchedule;