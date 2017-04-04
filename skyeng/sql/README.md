# Знание SQL 
В базе данных есть следующие таблицы:
```
CREATE TABLE teacher(
	id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE student(
	id INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE teacher_student (
	teacher_id INT(10) NOT NULL, 
	student_id INT(10) NOT NULL
);
```

Т.е. существует школа, в которой есть учителя, ученики, и каждый учитель может обучать любое количество учеников, причём разные учителя могут обучать одних и тех же учеников.

__Напишите следующие SQL-запросы__:
- вывести всех учителей, у которых больше 5 учеников
- вывести любых двух учителей, у которых максимальное количество общих учеников 
