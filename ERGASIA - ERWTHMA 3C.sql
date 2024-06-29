SELECT s.title AS song_title,
       a.title AS album_title,
       m.name AS musician_name,
       r.title AS recording_title,
       r.recording_date AS recording_date,
       STRING_AGG(mi.instrument_name, ', ') AS instruments_played
FROM Songs s
JOIN Albums a ON s.album_id = a.album_id
JOIN MusicianSongs ms ON s.song_id = ms.song_id
JOIN Musicians m ON ms.amka = m.AMKA
JOIN RecordingSongs rs ON s.song_id = rs.song_id
JOIN Recordings r ON rs.recording_id = r.recording_id
LEFT JOIN (
    SELECT mi.amka, i.name AS instrument_name
    FROM MusicianInstruments mi
    JOIN Instruments i ON mi.instrument_id = i.instrument_id
) AS mi ON m.AMKA = mi.amka
GROUP BY s.title, a.title, m.name, r.title, r.recording_date;