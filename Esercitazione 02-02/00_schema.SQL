CREATE TABLE Clienti (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    residenza VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Prodotto (
    id_prodotto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    prezzo DECIMAL(6,2) NOT NULL,
    tipo VARCHAR(50)
);

CREATE TABLE Negozio (
    id_negozio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    indirizzo VARCHAR(150),
    citta VARCHAR(50)
);

CREATE TABLE Acquisto (
    id_acquisto INT AUTO_INCREMENT PRIMARY KEY,
    data_acquisto DATE NOT NULL,
    quantita INT NOT NULL
);
