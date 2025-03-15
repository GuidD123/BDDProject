-- Creazione Spettatore
CREATE TABLE Spettatore (
   	nickname VARCHAR(25) PRIMARY KEY,
    email VARCHAR(40) CHECK (LENGTH(email) >= 8),
	telefono VARCHAR(20) CHECK (LENGTH(telefono) >= 8),
	password VARCHAR(30) CHECK (LENGTH(password) >= 8) NOT NULL,
    data_creazione DATE DEFAULT CURRENT_DATE NOT NULL,
    portafoglio DECIMAL(6,2) DEFAULT 0 CHECK(portafoglio >= 0) NOT NULL,
    fragile BOOLEAN DEFAULT FALSE NOT NULL,
    premium BOOLEAN DEFAULT FALSE NOT NULL,
    stato BOOLEAN DEFAULT TRUE NOT NULL,
    data_nascita DATE NOT NULL,
    reputation SMALLINT DEFAULT 0 NOT NULL,
    affiliate BOOLEAN DEFAULT FALSE NOT NULL,
    tipo VARCHAR(10) DEFAULT 'spettatore' CHECK (tipo IN ('streamer', 'spettatore', 'admin')) NOT NULL,
	CONSTRAINT check_affiliate CHECK ((affiliate = 'true' AND tipo = 'streamer') OR (affiliate = 'false')),
	CONSTRAINT check_telefono_or_email CHECK (email IS NOT NULL OR telefono IS NOT NULL),
	CONSTRAINT unique_email UNIQUE (email),
	CONSTRAINT unique_telefono UNIQUE (telefono)
);

-- Creazione Canale
CREATE TABLE Canale (
    nome VARCHAR(25) PRIMARY KEY,
    stato BOOLEAN DEFAULT TRUE NOT NULL,
    descrizione VARCHAR(100) NOT NULL,
    trailer VARCHAR(255),
    immagine TEXT NOT NULL,
    facebook TEXT,
    instagram TEXT,
	CONSTRAINT canale_FK_streamer foreign key(nome) references Spettatore(nickname) ON DELETE CASCADE
);

-- Creazione Categoria
CREATE TABLE Categoria (
    nome VARCHAR(40) PRIMARY KEY
);

-- Creazione Video
CREATE TABLE Video (
    URL TEXT PRIMARY KEY,
    titolo VARCHAR(100) NOT NULL,
    durata INTEGER DEFAULT 0 NOT NULL,			
    premium BOOLEAN DEFAULT FALSE NOT NULL,
    fragile BOOLEAN DEFAULT FALSE NOT NULL,
    ora_inizio TIMESTAMP,
    ora_fine TIMESTAMP,
    spettatori_live INTEGER DEFAULT 0 NOT NULL,
	tipo VARCHAR(12) DEFAULT 'clip' CHECK (tipo IN ('clip', 'live', 'live_passata', 'maratona')) NOT NULL,
    canale VARCHAR(25) NOT NULL,
    categoria VARCHAR(40) NOT NULL,
	CONSTRAINT check_orario_live CHECK ((tipo <> 'live') OR (tipo = 'live' AND ora_inizio IS NOT NULL AND ora_fine IS NULL)),
	CONSTRAINT check_orario_livepassata_maratona CHECK ((tipo <> 'live_passata' AND tipo <> 'maratona') OR ((tipo = 'live_passata' OR tipo = 'maratona') AND ora_inizio IS NOT NULL AND ora_fine IS NOT NULL)),
	CONSTRAINT check_orario_clip CHECK ((tipo <> 'clip') OR (tipo = 'clip' AND ora_inizio IS NULL AND ora_fine IS NULL)),
	CONSTRAINT check_orario CHECK (ora_inizio IS NULL OR ora_fine IS NULL OR (ROUND(EXTRACT(EPOCH FROM (date_trunc('minute', ora_fine) - date_trunc('minute', ora_inizio))) / 60) = durata)),	CONSTRAINT check_durata CHECK ((tipo <> 'live' AND durata > 0) OR (tipo = 'live' AND durata = 0)),
	CONSTRAINT check_durata_maratona CHECK ((durata < 1440 AND tipo <> 'maratona') OR (durata >= 1440 AND tipo = 'maratona')),
	CONSTRAINT check_durata_clip CHECK ((durata >= 0 AND tipo <> 'clip') OR (durata <= 3 AND tipo = 'clip')),
	CONSTRAINT check_spettatorilive CHECK ((tipo = 'live' AND spettatori_live >= 0) OR spettatori_live = 0),
	CONSTRAINT video_FK_canale foreign key(canale) references Canale(nome) ON DELETE CASCADE,
	CONSTRAINT video_FK_categoria foreign key(categoria) references Categoria(nome)
);
	
-- Creazione Calendario
CREATE TABLE Calendario (
	canale VARCHAR(25),
	data_ora TIMESTAMP,
	titolo VARCHAR(100) NOT NULL,
	CONSTRAINT check_dataora_future CHECK (data_ora > CURRENT_TIMESTAMP),
	CONSTRAINT calendario_FK_canale foreign key(canale) references Canale(nome) ON DELETE CASCADE,
	PRIMARY KEY (canale, data_ora)
);

-- Creazione Notifica	
CREATE TABLE Notifica (
	spettatore VARCHAR(25),
	video TEXT,
	testo TEXT DEFAULT 'Live in corso' NOT NULL,
	CONSTRAINT notifica_FK_spettatore foreign key(spettatore) references Spettatore(nickname) ON DELETE CASCADE,
	CONSTRAINT notifica_FK_video foreign key(video) references Video(URL) ON DELETE CASCADE,
	PRIMARY KEY (spettatore, video)
);
	
-- Creazione Commento
CREATE TABLE Commento (
	ID SERIAL PRIMARY KEY,
	spettatore VARCHAR(25) NOT NULL,
	video TEXT NOT NULL,
	data_ora TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	testo TEXT NOT NULL,
	extra BOOLEAN DEFAULT FALSE NOT NULL,
	CONSTRAINT commento_FK_spettatore foreign key(spettatore) references Spettatore(nickname) ON DELETE CASCADE,
	CONSTRAINT commento_FK_video foreign key(video) references Video(URL) ON DELETE CASCADE
);

-- Creazione Reazione
CREATE TABLE Reazione (
	spettatore VARCHAR(25),
	video TEXT,
	testo VARCHAR(30) NOT NULL,
	extra BOOLEAN DEFAULT FALSE NOT NULL,
	CONSTRAINT reazione_FK_spettatore foreign key(spettatore) references Spettatore(nickname) ON DELETE CASCADE,
	CONSTRAINT reazione_FK_video foreign key(video) references Video(URL) ON DELETE CASCADE,
	PRIMARY KEY (spettatore, video)
);

-- Creazione Votare
CREATE TABLE Votare (
	spettatore VARCHAR(25),
	video TEXT,
	voto SMALLINT NOT NULL,
	CONSTRAINT check_voto CHECK (voto >= 1 AND voto <= 10),
	CONSTRAINT votare_FK_spettatore foreign key(spettatore) references Spettatore(nickname) ON DELETE CASCADE,
	CONSTRAINT votare_FK_video foreign key(video) references Video(URL) ON DELETE CASCADE,
	PRIMARY KEY (spettatore, video)
);

-- Creazione Piacere
CREATE TABLE Piacere (
	spettatore VARCHAR(25),
	video TEXT,
	CONSTRAINT piacere_FK_spettatore foreign key(spettatore) references Spettatore(nickname) ON DELETE CASCADE,
	CONSTRAINT piacere_FK_video foreign key(video) references Video(URL) ON DELETE CASCADE,
	PRIMARY KEY (spettatore, video)
);

-- Creazione Visualizzare
CREATE TABLE Visualizzare (
	ID SERIAL PRIMARY KEY,
	spettatore VARCHAR(25) NOT NULL,
	video TEXT NOT NULL,
	data_ora TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT visualizzare_FK_spettatore foreign key(spettatore) references Spettatore(nickname),
	CONSTRAINT visualizzare_FK_video foreign key(video) references Video(URL) ON DELETE CASCADE
);

-- Creazione Seguire
CREATE TABLE Seguire (
	spettatore VARCHAR(25),
	canale VARCHAR(25),
	importo DECIMAL(6,2) DEFAULT 0 CHECK(importo >= 0) NOT NULL,
	preferito BOOLEAN DEFAULT FALSE NOT NULL,
	CONSTRAINT check_spettatore_canale CHECK (spettatore <> canale),
	CONSTRAINT seguire_FK_spettatore foreign key(spettatore) references Spettatore(nickname) ON DELETE CASCADE,
	CONSTRAINT seguire_FK_canale foreign key(canale) references Canale(nome) ON DELETE CASCADE,
	PRIMARY KEY (spettatore, canale)
);

-- Creazione Gestire
CREATE TABLE Gestire (
	canale VARCHAR(25) PRIMARY KEY,
	admin VARCHAR(25) NOT NULL,
	CONSTRAINT gestire_FK_canale foreign key(canale) references Canale(nome) ON DELETE CASCADE,	
	CONSTRAINT gestire_FK_admin foreign key(admin) references Spettatore(nickname)
);

-- Creazione Movimenti
CREATE TABLE Movimenti (
	ID_transazione SERIAL PRIMARY KEY,
	canale VARCHAR(25) NOT NULL,
	admin VARCHAR(25) NOT NULL,
	importo DECIMAL(6,2) DEFAULT 50 CHECK(importo > 0) NOT NULL,
	data_pagamento DATE DEFAULT CURRENT_DATE NOT NULL,
	CONSTRAINT gestire_FK_canale foreign key(canale) references Gestire(canale) ON DELETE CASCADE,	
	CONSTRAINT gestire_FK_admin foreign key(admin) references Spettatore(nickname)
);

-- Creazione Scambiare
CREATE TABLE Scambiare (
	ID SERIAL PRIMARY KEY,
	mittente VARCHAR(25) NOT NULL,
	destinatario VARCHAR(25) NOT NULL,
	video TEXT,
	extra BOOLEAN DEFAULT FALSE NOT NULL,
	messaggio TEXT NOT NULL,
	donazione DECIMAL(6,2) DEFAULT 0 CHECK(donazione >= 0) NOT NULL,
	data_ora TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT check_mittente_destinatario CHECK (mittente <> destinatario),
	CONSTRAINT scambiare_FK_mittente foreign key(mittente) references Spettatore(nickname),
	CONSTRAINT scambiare_FK_destinatario foreign key(destinatario) references Spettatore(nickname),
	CONSTRAINT scambiare_FK_video foreign key(video) references Video(URL)
);