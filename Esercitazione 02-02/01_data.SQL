INSERT INTO Clienti (nome, cognome, residenza, email) VALUES
('Marco', 'Rossi', 'Roma', 'marco.rossi@email.it'),
('Giulia', 'Bianchi', 'Milano', 'giulia.bianchi@email.it'),
('Luca', 'Verdi', 'Torino', 'luca.verdi@email.it'),
('Sara', 'Neri', 'Firenze', 'sara.neri@email.it'),
('Alessandro', 'Conti', 'Bologna', 'alessandro.conti@email.it'),
('Martina', 'De Luca', 'Napoli', 'martina.deluca@email.it'),
('Francesco', 'Esposito', 'Salerno', 'francesco.esposito@email.it'),
('Chiara', 'Galli', 'Bergamo', 'chiara.galli@email.it'),
('Davide', 'Moretti', 'Pisa', 'davide.moretti@email.it'),
('Valentina', 'Marino', 'Palermo', 'valentina.marino@email.it');

INSERT INTO Prodotto (nome, prezzo, tipo) VALUES
('Carta Pokémon Pikachu', 3.50, 'Carta singola'),
('Carta Pokémon Charizard', 25.00, 'Carta singola'),
('Bustina Pokémon Base Set', 4.99, 'Bustina'),
('Mazzo Pokémon Fuoco', 14.90, 'Mazzo'),
('Carta Magic Black Lotus', 999.99, 'Carta singola'),
('Bustina Magic Core Set', 5.50, 'Bustina'),
('Mazzo Magic Verde', 16.00, 'Mazzo'),
('Carta Yu-Gi-Oh! Drago Bianco', 18.75, 'Carta singola'),
('Bustina Yu-Gi-Oh! Legend', 4.50, 'Bustina'),
('Mazzo Yu-Gi-Oh! Oscurità', 15.90, 'Mazzo');

INSERT INTO Negozio (nome, indirizzo, citta) VALUES
('Card World', 'Via Roma 10', 'Roma'),
('Magic Shop', 'Corso Buenos Aires 45', 'Milano'),
('PokéCenter', 'Via Toledo 22', 'Napoli'),
('Dragon Cards', 'Via Garibaldi 18', 'Torino'),
('Duel Zone', 'Piazza Maggiore 5', 'Bologna'),
('Fantasy Cards', 'Via Dante 30', 'Firenze'),
('Card Universe', 'Viale Europa 12', 'Verona'),
('Game & Cards', 'Via Libertà 40', 'Palermo'),
('Collector House', 'Via Mazzini 7', 'Bari'),
('Ultimate Cards', 'Corso Vittorio Emanuele 60', 'Cagliari');

INSERT INTO Acquisto (data_acquisto, quantita, id_cliente, id_negozio, id_prodotto) VALUES
('2025-02-01', 2, 1, 1, 3),
('2025-02-02', 1, 2, 2, 5),
('2025-02-03', 4, 3, 3, 1),
('2025-02-04', 1, 4, 4, 2),
('2025-02-05', 3, 5, 5, 7),
('2025-02-06', 2, 6, 6, 4),
('2025-02-07', 5, 7, 7, 6),
('2025-02-08', 1, 8, 8, 8),
('2025-02-09', 2, 9, 9, 9),
('2025-02-10', 1, 10, 10, 10);
