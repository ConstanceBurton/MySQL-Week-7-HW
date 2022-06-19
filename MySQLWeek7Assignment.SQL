1. Show all employees who were born before 1965-01-01
	Query:
		mysql> use employees;
Database changed
mysql> SELECT * FROM employees WHERE birth_date < '1965-01-01';
	
	Results:
 499980 | 1959-06-28 | Gino           | Usery            | M      | 1991-02-11 |
| 499981 | 1955-01-02 | Yunming        | Mitina           | F      | 1991-03-07 |
| 499982 | 1954-08-25 | Mohammed       | Pleszkun         | M      | 1986-02-21 |
| 499983 | 1955-08-29 | Uri            | Juneja           | F      | 1989-08-28 |
| 499984 | 1959-08-31 | Kaijung        | Rodham           | M      | 1985-09-11 |
| 499985 | 1964-12-26 | Gila           | Lukaszewicz      | M      | 1997-02-11 |
| 499986 | 1952-07-22 | Nathan         | Ranta            | F      | 1985-08-11 |
| 499987 | 1961-09-05 | Rimli          | Dusink           | F      | 1998-09-20 |
| 499988 | 1962-09-28 | Bangqing       | Kleiser          | F      | 1986-06-06 |
| 499989 | 1954-05-26 | Keiichiro      | Lindqvist        | M      | 1993-10-28 |
| 499990 | 1963-11-03 | Khaled         | Kohling          | M      | 1985-10-10 |
| 499991 | 1962-02-26 | Pohua          | Sichman          | F      | 1989-01-12 |
| 499992 | 1960-10-12 | Siamak         | Salverda         | F      | 1987-05-10 |
| 499993 | 1963-06-04 | DeForest       | Mullainathan     | M      | 1997-04-07 |
| 499994 | 1952-02-26 | Navin          | Argence          | F      | 1990-04-24 |
| 499995 | 1958-09-24 | Dekang         | Lichtner         | F      | 1993-01-12 |
| 499996 | 1953-03-07 | Zito           | Baaz             | M      | 1990-09-27 |
| 499997 | 1961-08-03 | Berhard        | Lenart           | M      | 1986-04-21 |
| 499998 | 1956-09-05 | Patricia       | Breugel          | M      | 1993-10-13 |
| 499999 | 1958-05-01 | Sachin         | Tsukuda          | M      | 1997-11-30 |
+--------+------------+----------------+------------------+--------+------------+

2. Show all employees who are female and were hired after 1990.

	Query:
	mysql> SELECT * FROM employees WHERE gender = 'F' AND hire_date >= '1991-01-01';

	Results last 20 rows:
 499861 | 1959-11-18 | Subhash        | Barriga          | F      | 1998-02-15 |
| 499871 | 1958-11-13 | Elrique        | Walstra          | F      | 1993-07-05 |
| 499875 | 1961-01-11 | Chenyi         | Hainaut          | F      | 1991-07-16 |
| 499885 | 1963-09-21 | Jagoda         | Lanphier         | F      | 1997-05-09 |
| 499902 | 1952-07-31 | Aloke          | Wuwongse         | F      | 1991-06-18 |
| 499910 | 1957-11-07 | Doowon         | Versino          | F      | 1991-12-22 |
| 499912 | 1956-06-19 | Parke          | Pell             | F      | 1993-10-23 |
| 499916 | 1962-01-09 | Florina        | Cusworth         | F      | 1997-05-18 |
| 499923 | 1964-12-21 | Sergi          | Melton           | F      | 1993-04-08 |
| 499933 | 1957-10-21 | Chuanti        | Riesenhuber      | F      | 1993-05-28 |
| 499934 | 1957-02-19 | Tonia          | Butner           | F      | 1991-01-02 |
| 499938 | 1960-06-30 | JiYoung        | Binding          | F      | 1993-04-18 |
| 499941 | 1956-10-16 | Udaiprakash    | Hockney          | F      | 1994-02-04 |
| 499942 | 1963-01-10 | Feiyu          | Sanella          | F      | 1997-02-10 |
| 499950 | 1964-07-15 | Weidon         | Gente            | F      | 1991-06-05 |
| 499956 | 1959-01-08 | Zhonghua       | Crooks           | F      | 1994-10-12 |
| 499977 | 1956-06-05 | Martial        | Weisert          | F      | 1996-09-17 |
| 499981 | 1955-01-02 | Yunming        | Mitina           | F      | 1991-03-07 |
| 499987 | 1961-09-05 | Rimli          | Dusink           | F      | 1998-09-20 |
| 499995 | 1958-09-24 | Dekang         | Lichtner         | F      | 1993-01-12 |
+--------+------------+----------------+------------------+--------+------------+
43639 rows in set (0.41 sec)

3. Show the first and last name of the first 50 employees whos last name starts with F.

	Query:
mysql> SELECT * FROM employees WHERE last_name LIKE 'f%' LIMIT 50;

Results:
--------+------------+-------------+--------------+--------+------------+
| emp_no | birth_date | first_name  | last_name    | gender | hire_date  |
+--------+------------+-------------+--------------+--------+------------+
|  10022 | 1952-07-08 | Shahaf      | Famili       | M      | 1995-08-22 |
|  10086 | 1962-11-19 | Somnath     | Foote        | M      | 1990-02-16 |
|  10089 | 1963-03-21 | Sudharsan   | Flasterstein | F      | 1986-08-12 |
|  10120 | 1960-03-26 | Armond      | Fairtlough   | F      | 1996-07-06 |
|  10139 | 1963-03-03 | Ewing       | Foong        | F      | 1998-03-15 |
|  10156 | 1964-09-19 | Sumali      | Fargier      | M      | 1985-03-10 |
|  10174 | 1959-05-15 | Badri       | Furudate     | M      | 1987-06-01 |
|  10190 | 1964-12-11 | Arve        | Fairtlough   | F      | 1986-06-23 |
|  10192 | 1960-09-16 | Mohua       | Falck        | M      | 1988-06-13 |
|  10198 | 1953-05-28 | Pranav      | Furedi       | M      | 1985-08-31 |
|  10220 | 1958-05-25 | Kish        | Fasbender    | F      | 1992-06-25 |
|  10244 | 1961-10-24 | Foong       | Flasterstein | M      | 1985-12-23 |
|  10327 | 1954-04-01 | Roded       | Facello      | M      | 1987-09-18 |
|  10370 | 1957-08-03 | Clyde       | Fandrianto   | M      | 1992-04-04 |
|  10372 | 1952-04-08 | Anneli      | Frijda       | F      | 1985-07-30 |
|  10412 | 1958-02-26 | Masoud      | Fabrizio     | F      | 1986-05-06 |
|  10538 | 1955-08-18 | Przemyslawa | Falby        | M      | 1987-07-23 |
|  10558 | 1964-10-08 | Hisao       | Famili       | M      | 1990-04-06 |
|  10629 | 1954-03-23 | Lalit       | Francisci    | F      | 1986-01-30 |
|  10637 | 1954-07-11 | Heejo       | Frolund      | M      | 1993-07-11 |
|  10653 | 1953-06-16 | Otmar       | Feinberg     | M      | 1987-04-30 |
|  10696 | 1952-03-23 | Unal        | Fendler      | M      | 1991-09-09 |
|  10748 | 1964-04-12 | Yuchang     | Francisci    | F      | 1990-08-14 |
|  10754 | 1956-09-08 | Chenyi      | Feinberg     | M      | 1988-01-11 |
|  10809 | 1962-01-06 | Shim        | Feldhoffer   | F      | 1987-03-04 |
|  10811 | 1954-06-29 | Ashish      | Fortenbacher | M      | 1997-07-08 |
|  10825 | 1958-03-27 | Fan         | Fairtlough   | M      | 1985-12-30 |
|  10830 | 1954-08-17 | Fen         | Fiebach      | M      | 1991-08-24 |
|  10890 | 1963-04-13 | Ramzi       | Furudate     | M      | 1988-04-21 |
|  10912 | 1952-07-27 | Oscal       | Fasbender    | M      | 1986-04-23 |
|  10935 | 1961-08-09 | Morris      | Famili       | M      | 1990-03-09 |
|  10940 | 1953-01-07 | Aleksander  | Fioravanti   | F      | 1994-12-02 |
|  10985 | 1952-05-31 | Chiradeep   | Furedi       | F      | 1990-12-10 |
|  10990 | 1954-10-22 | Shin        | Foote        | M      | 1988-07-06 |
|  11082 | 1962-07-26 | Deniz       | Fontan       | M      | 1992-12-01 |
|  11095 | 1961-12-31 | Nathan      | Flowers      | M      | 1994-05-28 |
|  11114 | 1955-09-08 | Tse         | Felcyn       | M      | 1989-10-14 |
|  11197 | 1955-05-11 | Tadahiro    | Fordan       | M      | 1986-04-13 |
|  11220 | 1962-06-25 | Sahrah      | Figueira     | F      | 1989-11-24 |
|  11227 | 1956-01-31 | Dayanand    | Figueira     | M      | 1985-03-08 |
|  11263 | 1961-09-09 | Kwangjo     | Fiebach      | M      | 1989-08-15 |
|  11270 | 1962-10-10 | Gina        | Falster      | M      | 1988-09-28 |
|  11284 | 1961-03-25 | Bernice     | Felcyn       | M      | 1985-04-25 |
|  11287 | 1963-08-16 | Sreenivas   | Farrag       | M      | 1987-08-12 |
|  11300 | 1952-12-14 | Lillian     | Fontet       | M      | 1992-09-10 |
|  11316 | 1963-11-02 | Ult         | Farrar       | F      | 1997-07-18 |
|  11321 | 1959-06-25 | Heping      | Fontan       | M      | 1995-03-18 |
|  11328 | 1958-10-13 | Xiong       | Ferriere     | M      | 1986-08-08 |
|  11331 | 1959-10-15 | Kasturi     | Fraisse      | F      | 1987-03-03 |
|  11346 | 1962-04-25 | Jungsoon    | Fiebach      | M      | 1988-10-27 |
+--------+------------+-------------+--------------+--------+------------+
50 rows in set (0.01 sec)

4. Insert 3 new employees into the employees table.  Their emp_no should be 100, 101, and 102. You can choose the rest of the data.

	Query:
	mysql> INSERT INTO employees VALUES(100, '1982-08-08', 'Gerald', 'Pete', 'M', '2011-09-08'),
    -> (101, '1977-06-07', 'Kevin', 'Hannah', 'M', '2005-05-06'),
    -> (102, '2000-01-01', 'Taylor', 'Harris', 'F', '2022-03-15');
Query OK, 3 rows affected (0.02 sec)

	Results:
mysql> SELECT * FROM employees LIMIT 15;
+--------+------------+------------+-------------+--------+------------+
| emp_no | birth_date | first_name | last_name   | gender | hire_date  |
+--------+------------+------------+-------------+--------+------------+
|    100 | 1982-08-08 | Gerald     | Pete        | M      | 2011-09-08 |
|    101 | 1977-06-07 | Kevin      | Hannah      | M      | 2005-05-06 |
|    102 | 2000-01-01 | Taylor     | Harris      | F      | 2022-03-15 |
|  10008 | 1958-02-19 | Saniya     | Kalloufi    | M      | 1994-09-15 |
|  10009 | 1952-04-19 | Sumant     | Peac        | F      | 1985-02-18 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau    | F      | 1989-08-24 |
|  10011 | 1953-11-07 | Mary       | Sluis       | F      | 1990-01-22 |
|  10012 | 1960-10-04 | Patricio   | Bridgland   | M      | 1992-12-18 |
|  10013 | 1963-06-07 | Eberhardt  | Terkki      | M      | 1985-10-20 |
|  10015 | 1959-08-19 | Guoxiang   | Nooteboom   | M      | 1987-07-02 |
|  10016 | 1961-05-02 | Kazuhito   | Cappelletti | M      | 1995-01-27 |
|  10017 | 1958-07-06 | Cristinel  | Bouloucos   | F      | 1993-08-03 |
|  10018 | 1954-06-19 | Kazuhide   | Peha        | F      | 1987-04-03 |
|  10019 | 1953-01-23 | Lillian    | Haddadi     | M      | 1999-04-30 |
|  10020 | 1952-12-24 | Mayuko     | Warwick     | M      | 1991-01-26 |
+--------+------------+------------+-------------+--------+------------+
15 rows in set (0.00 sec)


5. Change the employee's first name to Bob for the employee with the emp_no of 10023.

	Query Before Change:

mysql> SELECT * FROM employees WHERE emp_no= 10023;
+--------+------------+------------+------------+--------+------------+
| emp_no | birth_date | first_name | last_name  | gender | hire_date  |
+--------+------------+------------+------------+--------+------------+
|  10023 | 1953-09-29 | Bojan      | Montemayor | F      | 1989-12-17 |
+--------+------------+------------+------------+--------+------------+
1 row in set (0.00 sec)

	Query After Change:
mysql> UPDATE employees SET first_name = 'Bob' WHERE emp_no= 10023;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

	Results:

mysql> SELECT * FROM employees WHERE emp_no= 10023;
+--------+------------+------------+------------+--------+------------+
| emp_no | birth_date | first_name | last_name  | gender | hire_date  |
+--------+------------+------------+------------+--------+------------+
|  10023 | 1953-09-29 | Bob        | Montemayor | F      | 1989-12-17 |
+--------+------------+------------+------------+--------+------------+
1 row in set (0.00 sec)


6. Change all employees hire dates to 2002-01-01 whose first or last names start with P.

	Query:
mysql> UPDATE employees SET hire_date = '2002-01-01' WHERE first_name LIKE 'p%' OR last_name LIKE 'p%';
Query OK, 31566 rows affected (1.69 sec)
Rows matched: 31566  Changed: 31566  Warnings: 0

	Results:
| 499801 | 1959-01-19 | Sverrir        | Pelc             | F      | 2002-01-01 |
| 499808 | 1955-04-05 | Paris          | Deyuan           | F      | 2002-01-01 |
| 499817 | 1953-08-03 | Lihong         | Pusterhofer      | M      | 2002-01-01 |
| 499838 | 1959-09-07 | Annemarie      | Peroz            | M      | 2002-01-01 |
| 499849 | 1954-10-12 | Moriyoshi      | Pusterhofer      | F      | 2002-01-01 |
| 499859 | 1962-05-20 | Huican         | Passafiume       | F      | 2002-01-01 |
| 499870 | 1955-03-14 | Kayoko         | Peroz            | M      | 2002-01-01 |
| 499873 | 1960-12-10 | Kasidit        | Picel            | F      | 2002-01-01 |
| 499903 | 1959-06-30 | Premal         | Passino          | M      | 2002-01-01 |
| 499912 | 1956-06-19 | Parke          | Pell             | F      | 2002-01-01 |
| 499926 | 1956-10-15 | Youpyo         | Perfilyeva       | F      | 2002-01-01 |
| 499929 | 1959-11-03 | Phillip        | Schnabel         | M      | 2002-01-01 |
| 499935 | 1963-12-18 | Ymte           | Perelgut         | M      | 2002-01-01 |
| 499937 | 1955-07-28 | Pantung        | Litzler          | F      | 2002-01-01 |
| 499948 | 1953-05-24 | Cordelia       | Paludetto        | M      | 2002-01-01 |
| 499953 | 1960-09-04 | Leszek         | Pulkowski        | M      | 2002-01-01 |
| 499974 | 1956-09-10 | Shuichi        | Piazza           | F      | 2002-01-01 |
| 499979 | 1962-10-29 | Prasadram      | Waleschkowski    | M      | 2002-01-01 |
| 499982 | 1954-08-25 | Mohammed       | Pleszkun         | M      | 2002-01-01 |
| 499991 | 1962-02-26 | Pohua          | Sichman          | F      | 2002-01-01 |
| 499998 | 1956-09-05 | Patricia       | Breugel          | M      | 2002-01-01 |
+--------+------------+----------------+------------------+--------+------------+

7. Delete all employees who have an emp_no less than 10000

	Query:
mysql> DELETE FROM employees WHERE emp_no < 10000;
Query OK, 3 rows affected (0.01 sec)

mysql> SELECT * FROM employees LIMIT 15;

	Results:
mysql> SELECT * FROM employees LIMIT 15;
+--------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date  |
+--------+------------+------------+-----------+--------+------------+
|  10001 | 1953-09-02 | Georgi     | Facello   | M      | 1986-06-26 |
|  10002 | 1964-06-02 | Bezalel    | Simmel    | F      | 1985-11-21 |
|  10003 | 1959-12-03 | Parto      | Bamford   | M      | 2002-01-01 |
|  10004 | 1954-05-01 | Chirstian  | Koblick   | M      | 1986-12-01 |
|  10005 | 1955-01-21 | Kyoichi    | Maliniak  | M      | 1989-09-12 |
|  10006 | 1953-04-20 | Anneke     | Preusig   | F      | 2002-01-01 |
|  10007 | 1957-05-23 | Tzvetan    | Zielinski | F      | 1989-02-10 |
|  10008 | 1958-02-19 | Saniya     | Kalloufi  | M      | 1994-09-15 |
|  10009 | 1952-04-19 | Sumant     | Peac      | F      | 2002-01-01 |
|  10010 | 1963-06-01 | Duangkaew  | Piveteau  | F      | 2002-01-01 |
|  10011 | 1953-11-07 | Mary       | Sluis     | F      | 1990-01-22 |
|  10012 | 1960-10-04 | Patricio   | Bridgland | M      | 2002-01-01 |
|  10013 | 1963-06-07 | Eberhardt  | Terkki    | M      | 1985-10-20 |
|  10014 | 1956-02-12 | Berni      | Genin     | M      | 1987-03-11 |
|  10015 | 1959-08-19 | Guoxiang   | Nooteboom | M      | 1987-07-02 |
+--------+------------+------------+-----------+--------+------------+
15 rows in set (0.00 sec)

8. Delete all employee who have an emp_no of 10048, 10099, 10234, and 20089.

	Query Before:
mysql> SELECT * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);

	Results Before: 
+--------+------------+-------------+-----------+--------+------------+
| emp_no | birth_date | first_name  | last_name | gender | hire_date  |
+--------+------------+-------------+-----------+--------+------------+
|  10048 | 1963-07-11 | Florian     | Syrotiuk  | M      | 1985-02-24 |
|  10099 | 1956-05-25 | Valter      | Sullins   | F      | 1988-10-18 |
|  10234 | 1961-01-18 | Arunachalam | Bakhtari  | M      | 1990-11-19 |
|  20089 | 1953-11-29 | Unal        | Merli     | M      | 1991-12-14 |
+--------+------------+-------------+-----------+--------+------------+
4 rows in set (0.00 sec)

	Query After:
mysql> DELETE FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);
Query OK, 4 rows affected (0.02 sec)
	
	Results After:
mysql> SELECT * FROM employees WHERE emp_no IN (10048, 10099, 10234, 20089);
Empty set (0.00 sec)
