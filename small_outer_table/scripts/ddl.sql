drop database if exists small_outer_table_db
;
create database small_outer_table_db
;

use small_outer_table_db
;

create table small_table (
  id integer primary key auto_increment,
  val integer not null
)
;

create table big_table (
  id integer primary key auto_increment,
  val integer not null
)
;

