COPY musicians (amka, name, address, phone)
FROM 'BASEIS DEDOMENWN\PROJECT\BASEIS-DEDOMENON-main\Musicians.csv'
CSV HEADER;
SELECT * FROM Musicians


COPY instruments (instrument_id, name, musical_key)
FROM 'BASEIS DEDOMENWN\PROJECT\BASEIS-DEDOMENON-main\Instruments.csv'
CSV HEADER;
SELECT * FROM instruments


COPY musicianinstruments (amka, instrument_id)
FROM 'BASEIS DEDOMENWN\PROJECT\BASEIS-DEDOMENON-main\MusicianInstruments.csv'
CSV HEADER;
SELECT * FROM musicianinstruments


COPY recordings (recording_id, title, recording_date, format)
FROM 'BASEIS DEDOMENWN\PROJECT\BASEIS-DEDOMENON-main\Recordings.csv'
CSV HEADER;
SELECT * FROM recordings


COPY albums (album_id, title, main_producer)
FROM 'BASEIS DEDOMENWN\PROJECT\BASEIS-DEDOMENON-main\Albums.csv'
CSV HEADER;
SELECT * FROM albums


COPY songs(song_id, title, album_id, creator, duration)
FROM 'BASEIS DEDOMENWN\PROJECT\BASEIS-DEDOMENON-main\Songs.csv'
CSV HEADER;
SELECT * FROM songs


COPY musiciansongs (amka, song_id)
FROM 'BASEIS DEDOMENWN\PROJECT\BASEIS-DEDOMENON-main\MusicianSongs.csv'
CSV HEADER;
SELECT * FROM musiciansongs


COPY recordingsongs (recording_id, song_id)
FROM 'BASEIS DEDOMENWN\PROJECT\BASEIS-DEDOMENON-main\RecordingSongs.csv'
CSV HEADER;
SELECT * FROM recordingsongs


