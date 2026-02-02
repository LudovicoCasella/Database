#mostrami quali clienti hanno comprato più di due pezzi

mysql> SELECT
    ->     C.id_cliente,
    ->     C.nome,
    ->     C.cognome,
    ->     C.email,
    ->     A.data_acquisto,
    ->     A.quantita
    -> FROM Acquisto A
    -> JOIN Clienti C ON A.id_cliente = C.id_cliente
    -> WHERE A.quantita > 2;
+------------+------------+----------+-----------------------------+---------------+----------+
| id_cliente | nome       | cognome  | email                       | data_acquisto | quantita |
+------------+------------+----------+-----------------------------+---------------+----------+
|          3 | Luca       | Verdi    | luca.verdi@email.it         | 2025-02-03    |        4 |
|          5 | Alessandro | Conti    | alessandro.conti@email.it   | 2025-02-05    |        3 |
|          7 | Francesco  | Esposito | francesco.esposito@email.it | 2025-02-07    |        5 |
+------------+------------+----------+-----------------------------+---------------+----------+

#mostrami i nomi composti da meno di 10 parole

SELECT 
    C.nome AS nome_cliente,
    C.cognome,
    N.nome AS nome_negozio
FROM Clienti C
LEFT JOIN Negozio N ON 1 = 1
WHERE LENGTH(C.nome) < 10;

mysql> SELECT
    ->     C.nome AS nome_cliente,
    ->     C.cognome,
    ->     N.nome AS nome_negozio
    -> FROM Clienti C
    -> LEFT JOIN Negozio N ON 1 = 1
    -> WHERE LENGTH(C.nome) < 5;
+--------------+---------+-----------------+
| nome_cliente | cognome | nome_negozio    |
+--------------+---------+-----------------+
| Luca         | Verdi   | Ultimate Cards  |
| Luca         | Verdi   | Collector House |
| Luca         | Verdi   | Game & Cards    |
| Luca         | Verdi   | Card Universe   |
| Luca         | Verdi   | Fantasy Cards   |
| Luca         | Verdi   | Duel Zone       |
| Luca         | Verdi   | Dragon Cards    |
| Luca         | Verdi   | PokéCenter      |
| Luca         | Verdi   | Magic Shop      |
| Luca         | Verdi   | Card World      |
| Sara         | Neri    | Ultimate Cards  |
| Sara         | Neri    | Collector House |
| Sara         | Neri    | Game & Cards    |
| Sara         | Neri    | Card Universe   |
| Sara         | Neri    | Fantasy Cards   |
| Sara         | Neri    | Duel Zone       |
| Sara         | Neri    | Dragon Cards    |
| Sara         | Neri    | PokéCenter      |
| Sara         | Neri    | Magic Shop      |
| Sara         | Neri    | Card World      |
+--------------+---------+-----------------+

#Mostriamo i clienti che hanno fatto più di due acquisti
mysql> SELECT
    ->     C.nome,
    ->     C.cognome,
    ->     A.quantita,
    ->     A.data_acquisto
    -> FROM Clienti C, Acquisto A
    -> WHERE C.id_cliente = A.id_cliente
    ->   AND A.quantita > 2;
+------------+----------+----------+---------------+
| nome       | cognome  | quantita | data_acquisto |
+------------+----------+----------+---------------+
| Luca       | Verdi    |        4 | 2025-02-03    |
| Alessandro | Conti    |        3 | 2025-02-05    |
| Francesco  | Esposito |        5 | 2025-02-07    |
+------------+----------+----------+---------------+