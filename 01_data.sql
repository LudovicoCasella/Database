CREATE TABLE utenti (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  cognome VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL
);

CREATE TABLE gioco (
  id INT AUTO_INCREMENT PRIMARY KEY,
  ruolo VARCHAR(50) NOT NULL,
  ruolo_secondario VARCHAR(50)

  INSERT INTO gioco (nome_gioco, tipologia) VALUES
('Monopoly', 'Gioco da tavolo'),
('Risiko', 'Gioco da tavolo'),
('Cluedo', 'Gioco da tavolo'),
('Scarabeo', 'Gioco da tavolo'),
('Scacchi', 'Gioco da tavolo'),
('Dama', 'Gioco da tavolo'),
('Catan', 'Gioco da tavolo'),
('Carcassonne', 'Gioco da tavolo'),
('Ticket to Ride', 'Gioco da tavolo'),
('Pandemic', 'Gioco da tavolo');

INSERT INTO gioco (nome_gioco, tipologia) VALUES
('The Witcher 3', 'RPG'),
('FIFA 24', 'Sport'),
('Call of Duty', 'FPS'),
('Minecraft', 'Sandbox'),
('League of Legends', 'MOBA'),
('Elden Ring', 'Action RPG'),
('Fortnite', 'Battle Royale'),
('GTA V', 'Open World'),
('Dark Souls', 'Action RPG'),
('Animal Crossing', 'Simulazione');

CREATE TABLE iscrizione (
  id INT AUTO_INCREMENT PRIMARY KEY,
  costo DECIMAL(6,2) NOT NULL,
  data_iscrizione DATE NOT NULL
);

INSERT INTO iscrizione (costo, data_iscrizione) VALUES
(19.99, '2024-01-10'),
(24.99, '2024-01-15'),
(29.99, '2024-02-01'),
(14.99, '2024-02-10'),
(39.99, '2024-03-05'),
(9.99,  '2024-03-20'),
(49.99, '2024-04-01'),
(19.99, '2024-04-12'),
(34.99, '2024-05-01'),
(29.99, '2024-05-18');



