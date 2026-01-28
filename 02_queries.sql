#Mostrare tutto il contenuto delle tabelle;
mysql> SELECT * FROM GIOCO;
+----+----------------+-----------------+------------+-------+
| id | nome_gioco     | tipologia       | difficolta | costo |
+----+----------------+-----------------+------------+-------+
|  1 | God of War     | gioco offline   | 10         |  9.99 |
|  2 | Fifa 2025      | Gioco online    | 10         | 14.99 |
|  3 | Far Cry 3      | gioco offline   | 9          | 19.99 |
|  4 | Baldur s Gate  | Gioco online    | 6          | 24.99 |
|  5 | Minecraft      | Gioco online    | 2          | 29.99 |
|  6 | Dama           | Gioco da tavolo | 3          | 12.99 |
|  7 | Infamous       | gioco offline   | 5          | 17.99 |
|  8 | Carcassonne    | Gioco da tavolo | 7          | 22.99 |
|  9 | Ticket to Ride | Gioco da tavolo | 8          | 27.99 |
| 10 | Pandemic       | Gioco da tavolo | 1          | 34.99 |
+----+----------------+-----------------+------------+-------+
10 rows in set (0.008 sec);

#Mostrare solo il contenuto di alcune colonne della tabella; 
mysql> SELECT TIPOLOGIA, COSTO
    -> FROM GIOCO;
+-----------------+-------+
| TIPOLOGIA       | COSTO |
+-----------------+-------+
| gioco offline   |  9.99 |
| Gioco online    | 14.99 |
| gioco offline   | 19.99 |
| Gioco online    | 24.99 |
| Gioco online    | 29.99 |
| Gioco da tavolo | 12.99 |
| gioco offline   | 17.99 |
| Gioco da tavolo | 22.99 |
| Gioco da tavolo | 27.99 |
| Gioco da tavolo | 34.99 |
+-----------------+-------+
10 rows in set (0.005 sec);

#trova i giochi che hanno la tipologia gioco offline;
 select * from gioco
    -> WHERE tipologia = "gioco offline";
+----+------------+---------------+------------+-------+
| id | nome_gioco | tipologia     | difficolta | costo |
+----+------------+---------------+------------+-------+
|  1 | God of War | gioco offline | 10         |  9.99 |
|  3 | Far Cry 3  | gioco offline | 9          | 19.99 |
|  7 | Infamous   | gioco offline | 5          | 17.99 |
+----+------------+---------------+------------+-------+

#trova tutti i giochi con difficoltà sotto 7 e che costino meno di 20.

mysql> select * from gioco
    -> where costo <=20
    -> and difficolta <=6;
+----+------------+-----------------+------------+-------+
| id | nome_gioco | tipologia       | difficolta | costo |
+----+------------+-----------------+------------+-------+
|  6 | Dama       | Gioco da tavolo | 3          | 12.99 |
|  7 | Infamous   | gioco offline   | 5          | 17.99 |
+----+------------+-----------------+------------+-------+

#trova i giochi da tavolo o online;

mysql> select * from gioco
    -> where tipologia = "gioco offline"
    -> or tipologia = "Gioco da tavolo";
+----+----------------+-----------------+------------+-------+
| id | nome_gioco     | tipologia       | difficolta | costo |
+----+----------------+-----------------+------------+-------+
|  1 | God of War     | gioco offline   | 10         |  9.99 |
|  3 | Far Cry 3      | gioco offline   | 9          | 19.99 |
|  6 | Dama           | Gioco da tavolo | 3          | 12.99 |
|  7 | Infamous       | gioco offline   | 5          | 17.99 |
|  8 | Carcassonne    | Gioco da tavolo | 7          | 22.99 |
|  9 | Ticket to Ride | Gioco da tavolo | 8          | 27.99 |
| 10 | Pandemic       | Gioco da tavolo | 1          | 34.99 |
+----+----------------+-----------------+------------+-------+

#trova tutti i giochi non online;

mysql> select * from gioco
    -> where not tipologia = "gioco online";
+----+----------------+-----------------+------------+-------+
| id | nome_gioco     | tipologia       | difficolta | costo |
+----+----------------+-----------------+------------+-------+
|  1 | God of War     | gioco offline   | 10         |  9.99 |
|  3 | Far Cry 3      | gioco offline   | 9          | 19.99 |
|  6 | Dama           | Gioco da tavolo | 3          | 12.99 |
|  7 | Infamous       | gioco offline   | 5          | 17.99 |
|  8 | Carcassonne    | Gioco da tavolo | 7          | 22.99 |
|  9 | Ticket to Ride | Gioco da tavolo | 8          | 27.99 |
| 10 | Pandemic       | Gioco da tavolo | 1          | 34.99 |
+----+----------------+-----------------+------------+-------+

#Trova i giochi compresi tra 10 euro e 25;

mysql> select * from gioco
    -> where costo between 10 and 25;
+----+---------------+-----------------+------------+-------+
| id | nome_gioco    | tipologia       | difficolta | costo |
+----+---------------+-----------------+------------+-------+
|  2 | Fifa 2025     | Gioco online    | 10         | 14.99 |
|  3 | Far Cry 3     | gioco offline   | 9          | 19.99 |
|  4 | Baldur s Gate | Gioco online    | 6          | 24.99 |
|  6 | Dama          | Gioco da tavolo | 3          | 12.99 |
|  7 | Infamous      | gioco offline   | 5          | 17.99 |
|  8 | Carcassonne   | Gioco da tavolo | 7          | 22.99 |
+----+---------------+-----------------+------------+-------+

#trova i giochi da tavolo o online;

mysql> select * from gioco
    -> where tipologia in ("Gioco online", "Gioco da tavolo");
+----+----------------+-----------------+------------+-------+
| id | nome_gioco     | tipologia       | difficolta | costo |
+----+----------------+-----------------+------------+-------+
|  2 | Fifa 2025      | Gioco online    | 10         | 14.99 |
|  4 | Baldur s Gate  | Gioco online    | 6          | 24.99 |
|  5 | Minecraft      | Gioco online    | 2          | 29.99 |
|  6 | Dama           | Gioco da tavolo | 3          | 12.99 |
|  8 | Carcassonne    | Gioco da tavolo | 7          | 22.99 |
|  9 | Ticket to Ride | Gioco da tavolo | 8          | 27.99 |
| 10 | Pandemic       | Gioco da tavolo | 1          | 34.99 |
+----+----------------+-----------------+------------+-------+

#trova gli utenti il cui cognome inizia per R;

mysql> select * from utenti
    -> where cognome like "R%";
+----+-------+---------+-----------------------+------+
| id | nome  | cognome | email                 | eta  |
+----+-------+---------+-----------------------+------+
|  1 | Mario | Rossi   | mario.rossi@email.it  |   18 |
|  8 | Laura | Romano  | laura.romano@email.it |   22 |
| 10 | Elena | Ricci   | elena.ricci@email.it  |   33 |
+----+-------+---------+-----------------------+------+

#Trova gli studenti, i cui cognomi finiscono con la lettera "i";

mysql> select * from utenti
    -> where cognome like "%i";
+----+--------+---------+------------------------+------+
| id | nome   | cognome | email                  | eta  |
+----+--------+---------+------------------------+------+
|  1 | Mario  | Rossi   | mario.rossi@email.it   |   18 |
|  2 | Luigi  | Bianchi | luigi.bianchi@email.it |   21 |
|  3 | Giulia | Verdi   | giulia.verdi@email.it  |   25 |
|  4 | Anna   | Neri    | anna.neri@email.it     |   30 |
|  6 | Sara   | Conti   | sara.conti@email.it    |   28 |
|  7 | Paolo  | Ferrari | paolo.ferrari@email.it |   40 |
| 10 | Elena  | Ricci   | elena.ricci@email.it   |   33 |
+----+--------+---------+------------------------+------+

#Trova gli studenti, i cui cognomi hanno lunghezza di 5 lettere;

mysql> select * from utenti
    -> where cognome like "_____";
+----+--------+---------+-----------------------+------+
| id | nome   | cognome | email                 | eta  |
+----+--------+---------+-----------------------+------+
|  1 | Mario  | Rossi   | mario.rossi@email.it  |   18 |
|  3 | Giulia | Verdi   | giulia.verdi@email.it |   25 |
|  5 | Marco  | Gallo   | marco.gallo@email.it  |   35 |
|  6 | Sara   | Conti   | sara.conti@email.it   |   28 |
| 10 | Elena  | Ricci   | elena.ricci@email.it  |   33 |
+----+--------+---------+-----------------------+------+

#Trova gli studenti, i cui cognomi iniziano con "R" e hanno 5 lettere;

mysql> select * from utenti
    -> where cognome like "R_____";
+----+-------+---------+-----------------------+------+
| id | nome  | cognome | email                 | eta  |
+----+-------+---------+-----------------------+------+
|  8 | Laura | Romano  | laura.romano@email.it |   22 |
+----+-------+---------+-----------------------+------+

#Trova gli studenti, i cui cognomi hanno "a" come seconda lettera; 

mysql> select * from utenti
    -> where cognome like "_a%";
+----+-------+---------+----------------------+------+
| id | nome  | cognome | email                | eta  |
+----+-------+---------+----------------------+------+
|  5 | Marco | Gallo   | marco.gallo@email.it |   35 |
+----+-------+---------+----------------------+------+

#Trova gli studenti, i cui cognomi che non iniziano con la "R";

mysql> select * from utenti
    -> where cognome not like "R%";
+----+-----------+----------+-----------------------------+------+
| id | nome      | cognome  | email                       | eta  |
+----+-----------+----------+-----------------------------+------+
|  2 | Luigi     | Bianchi  | luigi.bianchi@email.it      |   21 |
|  3 | Giulia    | Verdi    | giulia.verdi@email.it       |   25 |
|  4 | Anna      | Neri     | anna.neri@email.it          |   30 |
|  5 | Marco     | Gallo    | marco.gallo@email.it        |   35 |
|  6 | Sara      | Conti    | sara.conti@email.it         |   28 |
|  7 | Paolo     | Ferrari  | paolo.ferrari@email.it      |   40 |
|  9 | Francesco | Esposito | francesco.esposito@email.it |   27 |
+----+-----------+----------+-----------------------------+------+

#Visualizza gli studenti in base ai cognomi in ordine alfabetico crescente;

mysql> select * from utenti
    -> order by cognome asc;
+----+-----------+----------+-----------------------------+------+
| id | nome      | cognome  | email                       | eta  |
+----+-----------+----------+-----------------------------+------+
|  2 | Luigi     | Bianchi  | luigi.bianchi@email.it      |   21 |
|  6 | Sara      | Conti    | sara.conti@email.it         |   28 |
|  9 | Francesco | Esposito | francesco.esposito@email.it |   27 |
|  7 | Paolo     | Ferrari  | paolo.ferrari@email.it      |   40 |
|  5 | Marco     | Gallo    | marco.gallo@email.it        |   35 |
|  4 | Anna      | Neri     | anna.neri@email.it          |   30 |
| 10 | Elena     | Ricci    | elena.ricci@email.it        |   33 |
|  8 | Laura     | Romano   | laura.romano@email.it       |   22 |
|  1 | Mario     | Rossi    | mario.rossi@email.it        |   18 |
|  3 | Giulia    | Verdi    | giulia.verdi@email.it       |   25 |
+----+-----------+----------+-----------------------------+------+

#Visualizza gli studenti in base all'età in ordine decrescente;

mysql> select * from utenti
    -> order by eta desc;
+----+-----------+----------+-----------------------------+------+
| id | nome      | cognome  | email                       | eta  |
+----+-----------+----------+-----------------------------+------+
|  7 | Paolo     | Ferrari  | paolo.ferrari@email.it      |   40 |
|  5 | Marco     | Gallo    | marco.gallo@email.it        |   35 |
| 10 | Elena     | Ricci    | elena.ricci@email.it        |   33 |
|  4 | Anna      | Neri     | anna.neri@email.it          |   30 |
|  6 | Sara      | Conti    | sara.conti@email.it         |   28 |
|  9 | Francesco | Esposito | francesco.esposito@email.it |   27 |
|  3 | Giulia    | Verdi    | giulia.verdi@email.it       |   25 |
|  8 | Laura     | Romano   | laura.romano@email.it       |   22 |
|  2 | Luigi     | Bianchi  | luigi.bianchi@email.it      |   21 |
|  1 | Mario     | Rossi    | mario.rossi@email.it        |   18 |
+----+-----------+----------+-----------------------------+------+

#conta il numero totale di utenti;

mysql> select count(*) from utenti;
+----------+
| count(*) |
+----------+
|       10 |
+----------+

#Calcola il numero di giochi per tipologia;

mysql> select tipologia, count(*) from gioco
    -> group by tipologia;
+-----------------+----------+
| tipologia       | count(*) |
+-----------------+----------+
| gioco offline   |        3 |
| Gioco online    |        3 |
| Gioco da tavolo |        4 |
+-----------------+----------+

