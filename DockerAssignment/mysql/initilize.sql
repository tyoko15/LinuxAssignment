DROP DATABASE IF EXISTS project;
CREATE DATABASE IF NOT EXISTS project;

DROP TABLE IF EXISTS jobs;
CREATE TABLE IF NOT EXISTS jobs (
id INT PRIMARY KEY,
name VARCHAR(255)
);

insert into jobs (id, name) values (1, 'planner');
insert into jobs (id, name) values (2, 'programmer');
insert into jobs (id, name) values (3, 'designer');

DROP TABLE IF EXISTS creaters;
CREATE TABLE IF NOT EXISTS creaters (
id INT PRIMARY KEY,
name VARCHAR(255),
progress INT,
sub_id INT
);

insert into creaters (id, name, progress, sub_id) values (1, 'Kamada', 70, 3);
insert into creaters (id, name, progress, sub_id) values (2, 'Kawanami', 50, 1);
insert into creaters (id, name, progress, sub_id) values (3, 'Shimada', 60, 2);
insert into creaters (id, name, progress, sub_id) values (4, 'Shirasaki', 65, 2);
insert into creaters (id, name, progress, sub_id) values (5, 'Deguti', 80, 2);
insert into creaters (id, name, progress, sub_id) values (6, 'Nakamura', 50, 3);
insert into creaters (id, name, progress, sub_id) values (7, 'Nagasaka', 40, 2);
insert into creaters (id, name, progress, sub_id) values (8, 'Maeda', 40, 1);