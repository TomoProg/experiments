--
-- 隣接リスト用DBの初期データ作成
--
create database if not exists adjacency_list;
use adjacency_list;
create table if not exists files(
    file_id int not null auto_increment,
    parent_id int,
    name varchar(50) not null,
    is_dir tinyint not null default(0), -- 1であればディレクトリとする
    primary key (file_id),
    foreign key (parent_id) references files(file_id)
);

insert into files values
    (1, NULL, '01_買い物リスト', 1),
        (2, 1, '20240101.txt', 0),
        (3, 1, '20240102.txt', 0),
    (4, NULL, '02_ブログネタ', 1),
        (5, 4, '01_Rails', 1),
            (6, 5, 'マイグレーションの方法.txt', 0),
        (7, 4, '02_MySQL', 1),
    (8, NULL, '99_使い方.txt', 0)
;

--
-- 経路列挙モデル用DBの初期データ作成
--
create database if not exists path_enumeration;
use path_enumeration;
create table if not exists files(
    file_id int not null auto_increment,
    path varchar(1000) not null,
    name varchar(50) not null,
    is_dir tinyint not null default(0), -- 1であればディレクトリとする
    primary key (file_id)
);

insert into files values
    (1, '1/', '01_買い物リスト', 1),
        (2, '1/2/', '20240101.txt', 0),
        (3, '1/3/', '20240102.txt', 0),
    (4, '4/', '02_ブログネタ', 1),
        (5, '4/5/', '01_Rails', 1),
            (6, '4/5/6/', 'マイグレーションの方法.txt', 0),
        (7, '4/7/', '02_MySQL', 1),
    (8, '8/', '99_使い方.txt', 0)
;

system echo 'Success!!!';