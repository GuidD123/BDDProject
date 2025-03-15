-- DML

-- Tabella Spettatore
INSERT INTO Spettatore (nickname, email, telefono, password, data_creazione, portafoglio, fragile, premium, stato, data_nascita, reputation, affiliate, tipo) VALUES 
	('alessandro-labussa', 'ale.labussa@gmail.com', NULL, 'dhbjYVGhbvvg6', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, '1995-12-21', DEFAULT, DEFAULT, 'admin'),
	('andrea-laporta', NULL, '+393331122333', 'dfnjVGBHgh2', '2024-01-01', DEFAULT, DEFAULT, DEFAULT, DEFAULT, '1997-05-31', DEFAULT, DEFAULT, 'admin'),
	('dario-lafinestra', 'dario.lafinestra@email.com', NULL, 'ddnVGYyhhv', '2023-12-25', DEFAULT, DEFAULT, DEFAULT, DEFAULT, '1975-08-06', DEFAULT, DEFAULT, 'admin'),
	('gerardo-oppu', 'gerardo@oppu.com', '+33981522556', 'dfsfsdsdf', '2023-12-01', DEFAULT, DEFAULT, DEFAULT, DEFAULT, '1988-02-16', DEFAULT, DEFAULT, 'admin'),
	('mario-rossi', 'mario@rossi.it', NULL, 'ekoepkOKp', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, '1982-02-20', 4, DEFAULT, DEFAULT),
	('luca.bianchi', NULL, '+3151818985', 'YByhnj34fs', '2023-11-25', 30, DEFAULT, DEFAULT, 'false', '1999-05-22', DEFAULT, DEFAULT, DEFAULT),
	('ernesto.verdi', 'ernesto.green@gmail.com', NULL, '567gVGvbs', DEFAULT, DEFAULT, 'true', DEFAULT, DEFAULT, '1989-05-03', 2, DEFAULT, DEFAULT),
	('windows', NULL, '+3921525125', 'opkphIHBiil', DEFAULT, DEFAULT, DEFAULT, 'true', DEFAULT, '1996-04-20', DEFAULT, DEFAULT, DEFAULT),
	('linux-forever', 'linux@email.com', NULL, 'hbusdjVUY', '2024-01-20', DEFAULT, DEFAULT, 'true', DEFAULT, '1980-02-20', DEFAULT, DEFAULT, DEFAULT),
	('jhonny.bravo', 'jhonny@bravo.com', NULL, 'uvbbsjknsdp', DEFAULT, 120, 'true', 'true', DEFAULT, '1992-06-21', 6, DEFAULT, DEFAULT),
	('phantumblade', 'phantum@gmail.com', NULL, 'VYUvuyvb2', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, '1999-01-20', DEFAULT, 'true', 'streamer'),
	('cicciogamer', NULL, '+345688252', 'vfBJUvyujnm', '2024-01-03', 35, DEFAULT, DEFAULT, DEFAULT, '2000-09-20', DEFAULT, DEFAULT, 'streamer'),
	('ilmasseo', 'masseo@email.com', '+396633221', 'dbhdbdisio', '2023-10-20', DEFAULT, DEFAULT, DEFAULT, DEFAULT, '1988-01-20', DEFAULT, DEFAULT, 'streamer'),
	('denny', 'denny@gmail.com', NULL, 'dbyhdksos', DEFAULT, DEFAULT, 'true', DEFAULT, DEFAULT, '1996-05-29', 1, 'true', 'streamer'),
	('bunny27', NULL, '+3956555562', 'dnfnfokods', DEFAULT, DEFAULT, 'true', 'true', DEFAULT, '2002-01-09', 7, 'true', 'streamer'),
	('yellow_jacket', 'yellow@jacket.com', NULL, 'UVBinninl', DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, '1987-02-09', DEFAULT, DEFAULT, 'streamer');

-- Tabella Canale
INSERT INTO Canale (nome, descrizione, trailer, immagine, facebook, instagram) VALUES
	('phantumblade', 'Questo è il canale di pahntumblade, videogame a gogo!', 'trailer_phantumblade.mp4', 'propic_phantumblade.jpeg', 'phantumblade.facebook', 'phantumblade.instagram'),
	('cicciogamer', '89 esimo paguro: porto video di cucina e gaming', 'trailer_cicciogamer.mp4', 'propic_phantumblade.jpeg', 'cicciogamer.facebook', 'cicciogamer.instagram'),
	('ilmasseo', 'Un saluto masseiano a tutti!', 'trailer_ilmasseo.mp4', 'propic_ilmasseo.jpeg', 'ilmasseo.facebook', 'ilmasseo.instagram'),
	('denny', 'Bella regà so denny venite con me a scoprire le meraviglie di foggia', 'trailer_denny.mp4', 'propic_denny.jpeg', 'denny.facebook', 'denny.instagram'),
	('bunny27', 'Benvenuti sul canale di bunnygirl, facciamo video IRL e reaction', 'trailer_bunny27.mp4', 'propic_bunny27.jpeg', 'bunny27.facebook', 'bunny27.instagram'),
	('yellow_jacket', 'Benvenuti sul canale di yellow_jacket!', 'trailer_yellow_jacket.mp4', 'propic_yellow_jacket.jpeg', 'yellow_jacket.facebook', NULL);

-- Tabella Calendario
INSERT INTO Calendario (canale, data_ora, titolo) VALUES 
	('phantumblade', '2024-02-08 12:00:00', 'Prima live del canale!'),
	('phantumblade', '2024-02-15 15:30:00', 'Baldurs Gate 3: si comincia!'),
	('phantumblade', '2024-03-05 18:45:00', 'Proviamo Palworld'),
	('cicciogamer', '2024-02-10 14:00:00', 'Nuovo panino laido e corrotto'),
	('cicciogamer', '2024-02-25 17:15:00', 'Vi spiego cosa è successo davvero al Romics del 2016...'),
	('cicciogamer', '2024-03-10 20:30:00', 'Fortnite con i bro'),
	('ilmasseo', '2024-02-05 13:45:00', 'Alle 15 torneo di Pokemon!'),
	('ilmasseo', '2024-02-20 16:00:00', 'Vicissitudini e PIL'),
	('ilmasseo', '2024-03-08 19:15:00', 'Eclettico sbustamento Pokemon'),
	('denny', '2024-02-12 11:30:00', 'Recensione di Barbie, Margot Robbie meritava un Oscar?'),
	('denny', '2024-02-28 14:45:00', 'Torneo di biliardo [Roma - Cesena]'),
	('denny', '2024-03-15 17:00:00', 'Esploriamo il vesuvio'),
	('bunny27', '2024-02-08 10:15:00', 'Genshin impact momento [alle 12 Just Chatting]'),
	('bunny27', '2024-02-23 12:30:00', 'Just Chatting #12 + Ospiti'),
	('bunny27', '2024-03-12 15:45:00', 'Approfondimento su vita e opere di HP Lovecraft');

-- Tabella Categoria
INSERT INTO Categoria (nome) VALUES 
	('Sport'),
	('Musica'),
	('Videogames'),
	('IRL'),
	('Food'),
	('Commedia'),
	('Cinema'),
	('Just Chatting');

-- Tabella Video
INSERT INTO Video (URL, titolo, premium, tipo, ora_inizio, canale, categoria, fragile, spettatori_live) VALUES 
	('video/1.mp4', 'Live - Corsa cavalli', TRUE, 'live', '2024-01-20 08:00', 'phantumblade', 'Sport', TRUE, 50),
	('video/2.mp4', 'Live - Suono la chitarra', FALSE, 'live', '2024-01-20 09:00', 'cicciogamer', 'Musica', FALSE, 22),
	('video/3.mp4', 'Live - Gioco a FIFA', FALSE, 'live', '2024-01-21 15:00', 'ilmasseo', 'Videogames', FALSE, 1505),
	('video/4.mp4', 'In diretta da San Francisco!', FALSE, 'live', '2024-01-21 20:00', 'denny', 'IRL', FALSE, 522),
	('video/5.mp4', 'Live - Recensione film', FALSE, 'live', '2024-01-21 22:00', 'bunny27', 'Cinema', FALSE, 203),
	('video/6.mp4', 'Live - Gioco a GTA', FALSE, 'live', '2024-01-20 06:00', 'yellow_jacket', 'Videogames', TRUE, 2568);
INSERT INTO Video (URL, durata, titolo, premium, canale, categoria, fragile) VALUES 
	('video/7.mp4', 1, 'Facciamoci due risate', TRUE, 'phantumblade', 'Commedia', FALSE),
	('video/8.mp4', 3, 'Suono il pianoforte', FALSE, 'cicciogamer', 'Musica', TRUE),
	('video/9.mp4', 2, 'Gioco a PES2006', FALSE, 'ilmasseo', 'Videogames', FALSE),
	('video/10.mp4', 2, 'Cosa visitare a Parigi', FALSE, 'denny', 'IRL', FALSE),
	('video/11.mp4', 2, 'La mia prima partita a San Siro', TRUE, 'bunny27', 'Sport', FALSE),
	('video/12.mp4', 2, 'Barzellette migliori', FALSE, 'bunny27', 'Commedia', TRUE),
	('video/13.mp4', 3, 'Partita a padel', FALSE, 'bunny27', 'Sport', FALSE),
	('video/14.mp4', 1, 'Provo il sushi', TRUE, 'bunny27', 'Food', FALSE),
	('video/15.mp4', 2, 'Suono arpa', FALSE, 'yellow_jacket', 'Musica', FALSE),
	('video/16.mp4', 3, 'Recensione su cucina giapponese', TRUE, 'yellow_jacket', 'Food', FALSE),
	('video/17.mp4', 2, 'Partitona a FIFA', FALSE, 'yellow_jacket', 'Videogames', TRUE);
INSERT INTO Video (URL, titolo, premium, tipo, ora_inizio, ora_fine, durata, canale, categoria, fragile) VALUES
	('video/18.mp4', 'Maratona - Guardando partite', FALSE, 'maratona', '2024-01-16 00:00', '2024-01-18 00:00', 2880, 'phantumblade', 'Sport', TRUE),
	('video/19.mp4', 'Maratona - Ascoltando musica', FALSE, 'maratona', '2024-01-17 00:00', '2024-01-20 00:00', 4320, 'cicciogamer', 'Musica', FALSE),
	('video/20.mp4', 'Maratona - Giochi vari', TRUE, 'maratona', '2024-01-18 00:00', '2024-01-19 00:00', 1440, 'ilmasseo', 'Videogames', FALSE),
	('video/21.mp4', 'Maratona - I miei viaggi', TRUE, 'maratona', '2024-01-19 00:00', '2024-01-21 00:00', 2880, 'denny', 'IRL', FALSE),
	('video/22.mp4', 'Maratona - Ricette', FALSE, 'maratona', '2024-01-19 00:00', '2024-01-23 00:00', 5760, 'bunny27', 'Food', FALSE);
INSERT INTO Video (URL, titolo, premium, tipo, ora_inizio, ora_fine, durata, canale, categoria, fragile) VALUES 
	('video/23.mp4', 'Le migliori canzoni', FALSE, 'live_passata', '2024-01-16 10:00', '2024-01-16 11:00', 60, 'cicciogamer', 'Musica', FALSE),
	('video/24.mp4', 'I migliori film', TRUE, 'live_passata', '2024-01-16 15:00', '2024-01-16 16:30', 90, 'cicciogamer', 'Cinema', FALSE),
	('video/25.mp4', 'I migliori giochi', FALSE, 'live_passata', '2024-01-18 02:00', '2024-01-18 04:00', 120, 'ilmasseo', 'Videogames', TRUE),
	('video/26.mp4', 'Le migliori partite', FALSE, 'live_passata', '2024-01-19 12:00', '2024-01-19 12:30', 30, 'denny', 'IRL', FALSE),
	('video/27.mp4', 'I match piu interessanti', FALSE, 'live_passata', '2024-01-20 22:00', '2024-01-20 22:20', 20, 'bunny27', 'Sport', FALSE),
	('video/28.mp4', 'Due risate insieme', FALSE, 'live_passata', '2024-01-18 02:00', '2024-01-18 02:10', 10, 'yellow_jacket', 'Commedia', FALSE),
	('video/29.mp4', 'Gioco in live a padel', TRUE, 'live_passata', '2024-01-18 02:00', '2024-01-18 04:00', 120, 'yellow_jacket', 'Sport', FALSE),
	('video/30.mp4', 'Mangio con voi in live', FALSE, 'live_passata','2024-01-16 15:00', '2024-01-16 16:00' ,60, 'yellow_jacket', 'Food', TRUE);

-- Tabella Commento
INSERT INTO Commento (spettatore, video, testo, extra) VALUES 
	('mario-rossi', 'video/1.mp4', 'Bel video, mi piacciono le corse dei cavalli!', DEFAULT),
	('ernesto.verdi', 'video/1.mp4', 'Spettacolare!', FALSE),
	('jhonny.bravo', 'video/2.mp4', 'Grande suonatore!', FALSE),
	('luca.bianchi', 'video/2.mp4', 'Mi piace un sacco la chitarra!', TRUE),
	('windows', 'video/2.mp4', 'Che talento!', FALSE),
	('ernesto.verdi', 'video/3.mp4', 'Emozionante!', FALSE),
	('linux-forever', 'video/3.mp4', 'Che gameplay coinvolgente, soprattuto quando spendi 100 euro di spacchettamenti!', TRUE),
	('cicciogamer', 'video/4.mp4', 'Incredibile, San Francisco è magnifica!',FALSE),
  ('ilmasseo', 'video/4.mp4', 'Mi piace vedere i tuoi viaggi!', TRUE),
  ('yellow_jacket', 'video/5.mp4', 'Recensione film molto interessante!', FALSE),
  ('jhonny.bravo', 'video/5.mp4', 'Mi piace il tuo stile di recensione!', TRUE),
  ('bunny27', 'video/6.mp4', 'GTA è sempre divertente da guardare!', FALSE),
  ('ernesto.verdi', 'video/6.mp4', 'Divertente gameplay!', FALSE),
  ('phantumblade', 'video/6.mp4', 'Mi piace il tuo stile di gioco!', FALSE),
  ('mario-rossi', 'video/7.mp4', 'Mi piacciono le tue clip, Phantumblade!', TRUE),
  ('denny', 'video/7.mp4', 'che spanzo ahahha!', FALSE),
  ('phantumblade', 'video/8.mp4', 'Bella performance!', FALSE),
  ('windows', 'video/8.mp4', 'Grande ciccio, sempre al top!', FALSE),
  ('phantumblade', 'video/9.mp4', 'Bello, mi hai fatto venire voglia di giocare a PES!', TRUE),
  ('linux-forever', 'video/10.mp4', 'Le tue recensioni sono sempre molto dettagliate, bravo!', FALSE),
  ('windows', 'video/10.mp4', 'Mi hai fatto venire voglia di visitare quei posti, Denny!', FALSE),
  ('ernesto.verdi', 'video/10.mp4', 'Continua così, sei un grande ispiratore!', FALSE),
  ('luca.bianchi', 'video/11.mp4', 'La partita a San Siro è stata epica, complimenti!', FALSE),
  ('windows', 'video/11.mp4', 'Mi piace il tuo spirito sportivo, continua così!', TRUE),
  ('cicciogamer', 'video/11.mp4', 'Spettacolare, Bunny27!', FALSE),
  ('yellow_jacket', 'video/12.mp4', 'Barzellette fantastiche, mi hai fatto ridere un sacco!', FALSE),
  ('ernesto.verdi', 'video/12.mp4', 'Le tue barzellette sono sempre le migliori, Phantumblade!', TRUE),
  ('denny', 'video/12.mp4', 'Divertentissimo, complimenti Phantumblade!', FALSE),
  ('mario-rossi', 'video/13.mp4', 'Partita intensa, complimenti a tutti!', FALSE),
  ('ilmasseo', 'video/13.mp4', 'Bunny27, sei un grande giocatore, spettacolo!', FALSE),
  ('jhonny.bravo', 'video/13.mp4', 'Sempre emozionante guardare le tue partite, Bunny27!', FALSE),
  ('windows', 'video/14.mp4', 'Mi hai fatto venire fame, ottima recensione!', FALSE),
  ('phantumblade', 'video/14.mp4', 'Bunny27, sei un grande gourmet!', FALSE),
  ('windows', 'video/15.mp4', 'Yellow_Jacket, sei davvero bravissimo nell esibirti con l arpa!', TRUE),
  ('mario-rossi', 'video/16.mp4', 'Ottima recensione sulla cucina giapponese!', FALSE),
  ('ilmasseo', 'video/16.mp4', 'Mi piace il tuo approccio alla cucina, Yellow_Jacket!', FALSE),
  ('ernesto.verdi', 'video/17.mp4', 'Partita a FIFA intensa, complimenti!', FALSE),
  ('denny', 'video/17.mp4', 'Bello vedere le tue avventure virtuali, Yellow_Jacket!', FALSE),
  ('linux-forever', 'video/17.mp4', 'Continua a giocare e divertirci!', FALSE),
  ('luca.bianchi', 'video/18.mp4', 'Grande evento, complimenti Phantumblade!', FALSE),
  ('mario-rossi', 'video/18.mp4', 'Bello vedere così tante partite', FALSE),
  ('mario-rossi', 'video/19.mp4', 'Maratona musicale fantastica, Phantumblade!', TRUE),
  ('bunny27', 'video/19.mp4', 'Bella maratona, Phantumblade, mi sono divertito!', FALSE),
  ('phantumblade', 'video/20.mp4', 'Maratona di giochi molto divertente, masseo!', FALSE),
  ('yellow_jacket', 'video/21.mp4', 'Denny, i tuoi viaggi sono sempre interessanti!', TRUE),
  ('cicciogamer', 'video/21.mp4', 'Mi hai fatto conoscere posti nuovi, Denny, grazie!', FALSE),
  ('ernesto.verdi', 'video/21.mp4', 'Grazie a tutti per aver partecipato alla maratona, è stato fantastico!', FALSE),
  ('luca.bianchi', 'video/22.mp4', 'Mi hai fatto venire voglia di cucinare, Bunny27, grazie!', FALSE),
  ('phantumblade', 'video/23.mp4', 'sono le mie canzoni preferite uwu, ottima scelta!', FALSE),
  ('ilmasseo', 'video/23.mp4', 'Continua così con le selezioni musicali, Phantumblade e Cicciogamer!', FALSE),
  ('cicciogamer', 'video/25.mp4', 'Mi hai fatto venire voglia di giocare, grazie Ilmasseo!', TRUE),
  ('phantumblade', 'video/26.mp4', 'partite pazzesche!', FALSE),
  ('windows', 'video/26.mp4', 'Mi hai fatto rivivere momenti emozionanti, grazie Denny!', FALSE),
  ('mario-rossi', 'video/27.mp4', 'I match più interessanti, Bunny27, ottima scelta!', FALSE),
  ('ernesto.verdi', 'video/27.mp4', 'Grazie a tutti per aver partecipato alla live sugli sport, è stato fantastico!', FALSE),
	('mario-rossi', 'video/28.mp4', 'Continua così con le live divertenti, Yellow_Jacket!', FALSE),
	('bunny27', 'video/29.mp4', 'bellissimo il padel!', FALSE),
	('ernesto.verdi', 'video/29.mp4', 'Grazie a tutti per aver partecipato alla live sul padel, è stato fantastico!', FALSE),
	('windows', 'video/30.mp4', 'Ora ho fame', FALSE),
	('jhonny.bravo', 'video/30.mp4', 'Mi hai fatto venire fame, grazie Yellow_Jacket!', FALSE),
	('cicciogamer', 'video/30.mp4', 'Grazie a tutti per aver partecipato alla live culinaria, è stato fantastico!', TRUE);

-- Tabella Gestire
INSERT INTO Gestire (canale,admin) VALUES 
('phantumblade', 'alessandro-labussa'),
('cicciogamer', 'andrea-laporta'),
('ilmasseo', 'andrea-laporta'),
('denny', 'dario-lafinestra'),
('bunny27', 'gerardo-oppu'),
('yellow_jacket', 'alessandro-labussa');

-- Tabella Movimenti
INSERT INTO Movimenti (canale,admin,importo,data_pagamento) VALUES 
('phantumblade', 'alessandro-labussa', '50.00', '2024-01-01'),
('phantumblade', 'alessandro-labussa', '50.00', '2024-01-15'),
('phantumblade', 'alessandro-labussa', '50.00', '2024-01-31'),
('cicciogamer', 'andrea-laporta', '56.00', '2024-01-01'),
('cicciogamer', 'andrea-laporta', '56.00', '2024-01-15'),
('cicciogamer', 'andrea-laporta', '56.00', '2024-01-31'),
('ilmasseo', 'andrea-laporta', '60.00', '2024-01-01'),
('ilmasseo', 'andrea-laporta', '60.00', '2024-01-15'),
('ilmasseo', 'andrea-laporta', '60.00', '2024-01-31'),
('denny', 'dario-lafinestra', '50.00', '2023-12-15'),
('denny', 'dario-lafinestra', '50.00', '2023-12-31'),
('bunny27', 'gerardo-oppu', '70.00', '2023-12-31'),
('bunny27', 'gerardo-oppu', '70.00', '2024-01-15'),
('bunny27', 'gerardo-oppu', '70.00', '2024-01-30'),
('yellow_jacket', 'alessandro-labussa', 50, '2023-12-01'),
('yellow_jacket', 'alessandro-labussa', 50, '2023-12-15'),
('yellow_jacket', 'alessandro-labussa', 50, '2024-12-31'),
('yellow_jacket', 'alessandro-labussa', 50, '2024-01-15'),
('yellow_jacket', 'alessandro-labussa', 50, '2024-01-30');

-- Tabella Notifica
INSERT INTO Notifica (spettatore, video, testo) VALUES
	('mario-rossi', 'video/1.mp4', DEFAULT),
	('luca.bianchi', 'video/3.mp4', DEFAULT),
	('ernesto.verdi', 'video/2.mp4', 'Eccoci live!!'),
	('windows', 'video/6.mp4', DEFAULT),
	('linux-forever', 'video/2.mp4', 'Siamo ora in diretta!'),
	('jhonny.bravo', 'video/5.mp4', DEFAULT);

-- Tabella Piacere
INSERT INTO Piacere (spettatore, video) VALUES
	('luca.bianchi', 'video/1.mp4'),
	('ernesto.verdi', 'video/5.mp4'),
	('mario-rossi', 'video/6.mp4'),
	('windows', 'video/2.mp4'),
	('linux-forever', 'video/7.mp4'),
	('jhonny.bravo', 'video/9.mp4'),
	('jhonny.bravo', 'video/11.mp4'),
	('phantumblade', 'video/10.mp4'),
	('mario-rossi', 'video/15.mp4'),
	('windows', 'video/15.mp4'),
	('ernesto.verdi', 'video/8.mp4'),
	('phantumblade', 'video/7.mp4'),
	('yellow_jacket', 'video/5.mp4'),
	('ernesto.verdi', 'video/29.mp4'),
	('phantumblade', 'video/29.mp4'),
	('cicciogamer', 'video/22.mp4'),
	('ernesto.verdi', 'video/24.mp4');

-- Tabella Reazione
INSERT INTO Reazione (spettatore, video, testo, extra) VALUES
	('linux-forever', 'video/7.mp4', 'U+1F600', 'true'),
	('ernesto.verdi', 'video/6.mp4', 'U+1F602', 'false'),
	('windows', 'video/3.mp4', 'U+1F609', 'false'),
	('luca.bianchi', 'video/5.mp4', 'U+1F605', 'true'),
	('jhonny.bravo', 'video/1.mp4', 'U+1F601', 'false'),
	('mario-rossi', 'video/2.mp4', 'U+1F60E', 'true'),
	('linux-forever', 'video/17.mp4', '#favoloso', 'false'),
	('ernesto.verdi', 'video/16.mp4', '#numerouno', 'false'),
	('windows', 'video/23.mp4', '#spettacolo', 'false'),
	('mario-rossi', 'video/12.mp4', '#adv', 'false');

-- Tabella Scambiare
INSERT INTO Scambiare (mittente, destinatario, video, extra, messaggio, donazione, data_ora) VALUES
	('linux-forever', 'yellow_jacket', 'video/1.mp4','false', 'che schifo', 1, '2024-01-20'),
	('mario-rossi', 'bunny27', 'video/6.mp4','true', 'bel videooooooooooooooo', DEFAULT, '2024-01-03'),
	('ernesto.verdi', 'cicciogamer', 'video/5.mp4','false', 'pagurone', DEFAULT, '2024-01-20'),
	('linux-forever', 'ilmasseo', 'video/7.mp4','true', 'wowwww che bello!', 20, '2024-01-01'),
	('windows', 'phantumblade', 'video/2.mp4','false', 'daje', DEFAULT,'2024-01-09'),
	('luca.bianchi', 'bunny27', 'video/3.mp4','true', 'buongiorno kaffeehhhhhhhhhhh', 20, '2024-01-04');

-- Tabella Seguire
INSERT INTO Seguire (spettatore, canale) VALUES
	('mario-rossi', 'phantumblade'),
	('mario-rossi', 'ilmasseo'),
	('ernesto.verdi', 'phantumblade'),
	('windows', 'yellow_jacket'),
	('jhonny.bravo', 'phantumblade');
INSERT INTO Seguire (spettatore, canale, importo) VALUES
	('linux-forever', 'ilmasseo', 20),
	('jhonny.bravo', 'bunny27', 50);
INSERT INTO Seguire VALUES
	('linux-forever', 'cicciogamer', 60, 'true'),
	('luca.bianchi', 'phantumblade', 100, 'true');
INSERT INTO Seguire (spettatore, canale, preferito) VALUES ('jhonny.bravo', 'denny', 'true');

-- Tabella Visualizzare
INSERT INTO Visualizzare(spettatore, video) VALUES
	('mario-rossi', 'video/1.mp4'),
	('luca.bianchi', 'video/2.mp4'),
	('ernesto.verdi', 'video/3.mp4'),
	('windows', 'video/4.mp4'),
	('linux-forever', 'video/5.mp4'),
	('jhonny.bravo', 'video/6.mp4'),
	('phantumblade', 'video/7.mp4'),
	('cicciogamer', 'video/8.mp4'),
	('ilmasseo', 'video/9.mp4'),
	('bunny27', 'video/9.mp4');

INSERT INTO Visualizzare(spettatore, video, data_ora) VALUES
	('mario-rossi', 'video/10.mp4', '2024-01-20 08:00'),
	('mario-rossi', 'video/10.mp4', '2024-01-21 15:20'),
	('mario-rossi', 'video/10.mp4', '2024-01-20 19:00'),
	('mario-rossi', 'video/10.mp4', '2024-01-22 15:30'),
	('luca.bianchi', 'video/11.mp4', '2024-01-19 13:00'),
	('ernesto.verdi', 'video/12.mp4', '2024-01-18 05:00'),
	('windows', 'video/13.mp4', '2024-01-17 09:00'),
	('linux-forever', 'video/14.mp4', '2024-01-22 05:00'),
	('jhonny.bravo', 'video/15.mp4', '2024-01-24 01:00'),
	('jhonny.bravo', 'video/15.mp4', '2024-01-21 03:00'),
	('jhonny.bravo', 'video/15.mp4', '2024-01-23 15:40'),
	('jhonny.bravo', 'video/15.mp4', '2024-01-22 12:00'),
	('phantumblade', 'video/16.mp4', '2024-01-21 18:05'),
	('cicciogamer', 'video/17.mp4', '2024-01-20 12:00'),
	('ilmasseo', 'video/18.mp4', '2024-01-20 09:00'),
	('bunny27', 'video/19.mp4', '2024-01-22 08:05'),
	('bunny27', 'video/20.mp4', '2024-01-21 10:00');

-- Tabella Votare
INSERT INTO Votare VALUES
	('phantumblade', 'video/18.mp4', 10),
	('phantumblade', 'video/8.mp4', 2),
	('phantumblade', 'video/7.mp4', 1),
	('phantumblade', 'video/5.mp4', 5),
	('mario-rossi', 'video/3.mp4', 8),
	('luca.bianchi', 'video/2.mp4', 8),
	('luca.bianchi', 'video/11.mp4', 9),
	('luca.bianchi', 'video/22.mp4', 6),
	('ernesto.verdi', 'video/26.mp4', 2),
	('ernesto.verdi', 'video/17.mp4', 1),
	('windows', 'video/16.mp4', 4),
	('windows', 'video/13.mp4', 5),
	('linux-forever', 'video/15.mp4', 7),
	('linux-forever', 'video/20.mp4', 8),
	('jhonny.bravo', 'video/11.mp4', 2),
	('ilmasseo', 'video/22.mp4', 4),
	('bunny27', 'video/21.mp4', 6),
	('yellow_jacket', 'video/30.mp4', 10);