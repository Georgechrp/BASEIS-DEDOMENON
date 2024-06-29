CREATE VIEW RecordingSchedule AS
SELECT r.title AS recording_title,
       r.recording_date AS recording_date,
       r.format AS recording_format,
       s.title AS song_title,
	   s.duration AS song_duration,
       a.title AS album_title,
       m.name AS musician_name
FROM recordings r
JOIN recordingsongs rs ON r.recording_id = rs.recording_id
JOIN songs s ON rs.song_id = s.song_id
JOIN albums a ON s.album_id = a.album_id
JOIN musiciansongs ms ON s.song_id = ms.song_id
JOIN musicians m ON ms.amka = m.AMKA
WHERE r.recording_date = '2024-04-24'; 

SELECT * FROM RecordingSchedule;