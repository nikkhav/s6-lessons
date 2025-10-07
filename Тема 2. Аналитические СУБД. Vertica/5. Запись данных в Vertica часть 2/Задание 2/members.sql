CREATE TABLE stv202510067.members
(
    id int NOT NULL,
    age int,
    gender char,
    email varchar(50),
    CONSTRAINT C_PRIMARY PRIMARY KEY (id) DISABLED
);

COPY STV202510067.members (id, age, gender, email  ENFORCELENGTH )
FROM LOCAL '/Users/nikitakhavkin/PycharmProjects/s6-lessons/Тема 2. Аналитические СУБД. Vertica/5. Запись данных в Vertica часть 2/Задание 2/members.csv'
DELIMITER ';'
REJECTED DATA AS TABLE STV202510067.members_rej
;

SELECT * FROM stv202510067.members;
