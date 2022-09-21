use desafio2;


CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);

INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("bike ergométrica", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("bike ergométrica", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dança", 15, 200, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dança", 15, 165, 120);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("natação", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("natação", 25, 72, 80);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("escalada", 30, 70, 90);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("caminhada", 60, 80, 85);


set @suaIdade = 220;

select * , case
when heart_rate > (220 - @suaIdade) then "Acima do máximo"
when heart_rate > (220 - @suaIdade)*0.9 then "Acima do objetivo"
when heart_rate > (220 - @suaIdade)*0.5 then "Dentro do objetivo"
else "abaixo do objetivo"
end as hr_zone from desafio2.exercise_logs;