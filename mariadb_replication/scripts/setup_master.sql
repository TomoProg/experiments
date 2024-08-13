-- レプリケーション用のユーザを作成する
-- slaveからはこのユーザで接続する
create user if not exists 'repl'@'%' identified by '12345678';

-- レプリケーション
-- slaveがバイナリログイベントを読み込めるようにする
grant replication slave on *.* to 'repl'@'%';

-- 初期データ作成
create database if not exists sample;
use sample;
create table if not exists t1(id int, name varchar(20));
insert into t1 values(1, 'taro');
insert into t1 values(2, 'jiro');

system echo 'Success!!!';