--ΜΟΥΣΙΚΟΙ--
CREATE TABLE Musicians (
    AMKA CHAR(11) PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    address VARCHAR(255),
    phone CHAR(10)
);


--ΟΡΓΑΝΑ--
CREATE TABLE Instruments (
    instrument_id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    musical_key VARCHAR(10)
);


CREATE TABLE MusicianInstruments (
    amka CHAR(11) NOT NULL,
    instrument_id INT NOT NULL,
    FOREIGN KEY (amka) REFERENCES Musicians(AMKA),
    FOREIGN KEY (instrument_id) REFERENCES Instruments(instrument_id)
);


--ΗΧΟΓΡΑΦΗΣΕΙΣ--
CREATE TABLE Recordings (
    recording_id INT PRIMARY KEY NOT NULL,
    title VARCHAR(50),
    recording_date DATE,
    format VARCHAR(4)
);


--ΑΛΜΠΟΥΜ--
CREATE TABLE Albums (
    album_id INT PRIMARY KEY NOT NULL,
    title VARCHAR(50),
    main_producer VARCHAR(50)
);


--ΤΡΑΓΟΥΔΙΑ--
CREATE TABLE Songs (
    song_id INT PRIMARY KEY NOT NULL,
    title VARCHAR(50),
	album_id INT NOT NULL,
    creator VARCHAR(50),
	duration INTERVAL
);


--ΣΕ ΠΟΙΑ ΤΡΑΓΟΥΔΙΑ ΕΙΝΑΙ Ο ΚΑΘΕ ΜΟΥΣΙΚΟΣ--
CREATE TABLE MusicianSongs (
	amka CHAR(11) NOT NULL,
	song_id INT NOT NULL,
	FOREIGN KEY (amka) REFERENCES Musicians(AMKA),
	FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);


CREATE TABLE RecordingSongs (
    recording_id INT NOT NULL,
    song_id INT NOT NULL,
    FOREIGN KEY (recording_id) REFERENCES Recordings(recording_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);





