SELECT i.name AS instrument_name, i.musical_key, m.name
FROM musicians m
JOIN musicianinstruments mi ON m.AMKA = mi.amka
JOIN instruments i ON mi.instrument_id = i.instrument_id
WHERE m.AMKA = '29623952006';