drop database if exists try_lock_db
;
create database try_lock_db
;

use try_lock_db
;

create table users (
  id integer primary key auto_increment,
  name varchar(20) not null,
  age integer not null,
  height integer not null
)
;

create index idx_age on users(age)
;

insert into users (name, age, height) values
('Tanaka', 10, 160),
('Sato', 20, 165),
('Nakata', 30, 170),
('Takeda', 40, 175),
('Kato', 50, 180)
;
