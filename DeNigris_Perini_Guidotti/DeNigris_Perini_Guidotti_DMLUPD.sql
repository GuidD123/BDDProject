-- Streamer aggiorna il titolo di live future dal suo calendario
UPDATE Calendario
SET titolo = 'Primissima live del canale!'
WHERE canale = 'phantumblade' AND data_ora = '2024-02-08 12:00';

UPDATE Calendario
SET titolo = '!! Nuovo panino laido e corrotto !!'
WHERE canale = 'cicciogamer' AND data_ora = '2024-02-10 14:00';

-- Streamer aggiorna la sua descrizione o immagine del suo canale
UPDATE Canale
SET descrizione = 'Un saluto masseiano a tutti 50k !!'
WHERE nome = 'ilmasseo';

UPDATE Canale
SET immagine = 'propic_cicciogamer.jpeg'
WHERE nome = 'cicciogamer';

-- Un Canale viene sospeso
UPDATE Canale
SET stato = FALSE
WHERE nome = 'denny';

-- Spettatore rimuove un commento
DELETE FROM Commento
WHERE id = '1';

DELETE FROM Commento
WHERE id = '3';

-- Spettatore rimuove 'mi piace' da un video
DELETE FROM Piacere
WHERE spettatore = 'luca.bianchi' AND video = 'video/1.mp4';

-- Spettatore si abbona ad un canale, pagando un importo
UPDATE Seguire
SET importo = 100
WHERE spettatore = 'mario-rossi' AND canale = 'phantumblade';

-- Spettatore modifica la sua email
UPDATE Spettatore
SET email = 'ale.labussa_modificato@gmail.com'
WHERE nickname = 'alessandro-labussa';

UPDATE Spettatore
SET email = 'jhonny@bravo_modificato.com'
WHERE nickname = 'jhonny.bravo';

-- Spettatore modifica il suo numero di telefono
UPDATE Spettatore
SET telefono = '+39 333-357-666'
WHERE nickname = 'alessandro-labussa';

UPDATE Spettatore
SET telefono = '+39 455-788-321'
WHERE nickname = 'bunny27';

-- Spettatore ricarica il suo portafoglio
UPDATE Spettatore
SET portafoglio = 45.60
WHERE nickname = 'andrea-laporta';

UPDATE Spettatore
SET portafoglio = 54.06
WHERE nickname = 'jhonny.bravo';

-- Spettatore diventa Premium
UPDATE Spettatore
SET premium = true
WHERE nickname = 'andrea-laporta';

-- Aggiornamento del numero di spetatori live in una live in corso
UPDATE Video
SET spettatori_live = 68 
WHERE URL = 'video/1.mp4';

UPDATE Video
SET spettatori_live = 1400 
WHERE URL = 'video/3.mp4';

-- Spettatore modifica il voto assegnato ad un Video
UPDATE Votare
SET voto = 8
WHERE spettatore = 'phantumblade' AND video = 'video/18.mp4';

UPDATE Votare
SET voto = 5
WHERE spettatore = 'phantumblade' AND video = 'video/8.mp4';