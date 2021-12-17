# SQL
fundamental concepts for designing, using, and implementing database systems and database applications.


## Content Program

- Exercises from the book **[Fundamentals of database systems, 7th edition](https://www.pearson.com/us/higher-education/program/Elmasri-Fundamentals-of-Database-Systems-7th-Edition/PGM189052.html)**, R. Elmasri e S. B. Navathe, Pearson
- Basic introductory concepts
- Database modeling using the ER (entity-relationship) model and the relational model. Relational algebra. Normalization of relational schemes.
- Use of SQL language for definition and manipulation of relational databases
- Implementation of database management systems: transactions and competition, physical organization of data and use of indexes.
- Programmatic access to databases with embedded SQL, security issues,...

## Esquema da BD MovieStream

### [===================== Exercise 1 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex1.sql)
$R_0 ← σ_{Duration ≥ 180} (MOVIE)$

$R_1 ← π_{Title,Year} (R_0)$

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:


**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+-----------------------------------------------+------+
| Lawrence of Arabia                            | 1962 |
| Gone with the Wind                            | 1939 |
| Shichinin no samurai                          | 1954 |
| The Wolf of Wall Street                       | 2013 |
| The Lord of the Rings: The Return of the King | 2003 |
| Pearl Harbor                                  | 2001 |
| The Deer Hunter                               | 1978 |
| Schindler's List                              | 1993 |
| Once Upon a Time in America                   | 1984 |
| Grindhouse                                    | 2007 |
| The Hateful Eight                             | 2015 |
| Ben-Hur                                       | 1959 |
| Gandhi                                        | 1982 |
| The Godfather: Part II                        | 1974 |
| King Kong                                     | 2005 |
| The Green Mile                                | 1999 |
| Titanic                                       | 1997 |
| Dances with Wolves                            | 1990 |
| Magnolia                                      | 1999 |
+-----------------------------------------------+------+
19 rows in set (0.00 sec)

```

---

### [===================== Exercise 2 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex2.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:



**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+-------------------+---------------------+------------------+
| Name              | City                | Country          |
+-------------------+---------------------+------------------+
| Christine Roberts | Faaa                | French Polynesia |
| Cheryl Murphy     | Mysore              | India            |
| Christina Ramirez | al-Hawiya           | Saudi Arabia     |
| Charlotte Hunter  | guas Lindas de Gois | Brazil           |
| Charlene Alvarez  | Zanzibar            | Tanzania         |
| Christy Vargas    | Datong              | China            |
| Charles Kowalski  | Sungai Petani       | Malaysia         |
| Christopher Greco | Brescia             | Italy            |
| Chris Brothers    | Gijn                | Spain            |
| Chad Carbone      | Katihar             | India            |
| Charlie Bess      | Baiyin              | China            |
| Chester Benner    | Suihua              | China            |
| Christian Jung    | Amroha              | India            |
+-------------------+---------------------+------------------+
13 rows in set (0.00 sec)

```

---

### [===================== Exercise 3 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex3.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:

R0←σYear(StreamDate)=2018(STREAM)R1←FSUM(Charge)(R0)

**Resultado esperado:**

```
+-------------+
|    55774.00 |
+-------------+
1 row in set (0.01 sec)

```

### [===================== Exercise 4 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex4.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:

![Captura de ecrã 2021-12-11, às 09.24.46.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e3b9717f-e51f-4d37-86cc-502a23b77704/Captura_de_ecra_2021-12-11_as_09.24.46.png)

**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+------------------+----------+-------------+
|             2016 |        2 |       14.75 |
|             2017 |     3057 |    23944.75 |
|             2018 |     7100 |    55774.00 |
|             2019 |        2 |       14.25 |
+------------------+----------+-------------+
4 rows in set (0.01 sec)

```

---

### [===================== Exercise 5 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex5.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:

![Captura de ecrã 2021-12-11, às 09.28.08.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9f8c3924-9a2f-456b-949d-d910cb1f7145/Captura_de_ecra_2021-12-11_as_09.28.08.png)

**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+------+----+
| 2007 | 21 |
| 2012 | 22 |
| 2013 | 24 |
| 2014 | 21 |
| 2015 | 26 |
+------+----+
5 rows in set (0.00 sec)

```

---

### [===================== Exercise 6 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex6.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:

R0←σSupervisorISNULL(STAFF)R1←πStaffId(R0)R2←πManager(DEPARTMENT)R3←R1∪R2

**Dica:** Considere o uso de **[UNION](https://dev.mysql.com/doc/refman/5.7/en/union.html)** para a união de resultados de duas consultas

```
  SELECT ...
UNION
  SELECT ...

```

**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+---------+
|       1 |
|       2 |
|       7 |
|      11 |
|      14 |
+---------+
5 rows in set (0.00 sec)

```

---

### [===================== Exercise 7 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex7.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:

![Captura de ecrã 2021-12-11, às 09.46.24.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/7115fc6e-0e5d-454e-aedf-54ab8679da00/Captura_de_ecra_2021-12-11_as_09.46.24.png)

**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+-------+------------------+---------+---------------+
|     1 | IT               |       2 | Xavier Semedo |
|     2 | Public Relations |       7 | José Santos   |
|     3 | Finance          |      11 | Augusto Sousa |
|     4 | Customer         |      14 | António Mota  |
+-------+------------------+---------+---------------+
4 rows in set (0.00 sec)

```

---

### [===================== Exercise 8 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex8.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:

![Captura de ecrã 2021-12-11, às 09.55.14.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/a4537d56-bd8e-4936-80ba-bbcaa59fd81b/Captura_de_ecra_2021-12-11_as_09.55.14.png)

**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+------------------------------------+-----------------+
| Title                              | Name            |
+------------------------------------+-----------------+
| Batman v Superman: Dawn of Justice | Henry Cavill    |
| Batman v Superman: Dawn of Justice | Jesse Eisenberg |
| Batman v Superman: Dawn of Justice | Amy Adams       |
| Batman v Superman: Dawn of Justice | Ben Affleck     |
| Superman Returns                   | Kate Bosworth   |
| Superman Returns                   | Kevin Spacey    |
| Superman Returns                   | James Marsden   |
| Superman Returns                   | Brandon Routh   |
+------------------------------------+-----------------+
8 rows in set (0.00 sec)

```

### [===================== Exercise 9 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex9.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:

![Captura de ecrã 2021-12-12, às 11.04.00.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d897d173-a1fd-4cdb-9243-500c53431dc7/Captura_de_ecra_2021-12-12_as_11.04.00.png)

**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+------------------------------------+----------+------+---------------------+
| Batman v Superman: Dawn of Justice |      151 | 2016 | 2017-09-18 19:04:00 |
| Batman v Superman: Dawn of Justice |      151 | 2016 | 2017-10-24 12:44:00 |
| Batman v Superman: Dawn of Justice |      151 | 2016 | 2017-11-09 07:24:00 |
| Batman v Superman: Dawn of Justice |      151 | 2016 | 2017-11-25 16:01:00 |
| Batman v Superman: Dawn of Justice |      151 | 2016 | 2017-12-02 01:23:00 |
| X-Men: Apocalypse                  |      144 | 2016 | 2017-01-17 07:22:00 |
| X-Men: Apocalypse                  |      144 | 2016 | 2017-03-30 21:27:00 |
| X-Men: Apocalypse                  |      144 | 2016 | 2017-05-01 17:48:00 |
| X-Men: Apocalypse                  |      144 | 2016 | 2017-11-04 06:52:00 |
| Captain America: Civil War         |      147 | 2016 | 2017-07-20 02:44:00 |
| Captain America: Civil War         |      147 | 2016 | 2017-07-25 15:18:00 |
| Captain America: Civil War         |      147 | 2016 | 2017-09-20 10:15:00 |
| Captain America: Civil War         |      147 | 2016 | 2017-10-12 21:15:00 |
| Captain America: Civil War         |      147 | 2016 | 2017-12-04 07:42:00 |
+------------------------------------+----------+------+---------------------+
14 rows in set (0.00 sec)

```

### [===================== Exercise 10 ========================](https://github.com/eduardoAfer/SQL/blob/main/Exercises/ex10.sql)

Escreva uma instrução **SELECT** para obter os registos correspondentes à seguinte sequência de operações em álgebra relacional para a BD MovieStream:

![Captura de ecrã 2021-12-12, às 11.10.36.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/36fe0808-1be6-452c-b157-fe81c45a13dc/Captura_de_ecra_2021-12-12_as_11.10.36.png)

**Resultado esperado (a ordem é irrelevante, não precisa de usar ORDER BY):**

```
+-----------------+----------+
| Africa          |       63 |
| America         |      148 |
| Asia            |      252 |
| Europe          |      125 |
| Other countries |       11 |
+-----------------+----------+

```
