--
-- select系
--
-- あるディレクトリ配下のファイルをすべて表示する
-- 02_ブログネタの配下のファイルをすべて表示する
-- これだと階層が一つ増えるごとにjoinするテーブルが一つ増える
select f1.name, f2.name, f3.name 
from files f1 left join files f2 on f2.parent_id = f1.file_id 
left join files f3 on f3.parent_id = f2.file_id
where f1.file_id = 4;

with 
t1 as (
select f1.file_id, f1.name
from files f1 
where f1.file_id = 4
),
t2 as (
select f1.name
from files f1 
where f1.parent_id in (select file_id from t1)
),
t3 as (
select f1.name
from files f1 
where f1.parent_id in (select file_id from t2)
)
select name from t1
UNION
select name from t2
UNION
select name from t3
;


--
-- insert系
--
-- 隣接リストにデータを追加する
-- parent_idさえ分かればデータを追加可能
-- 01_買い物リストにファイルを追加する
insert into files (parent_id, name, is_dir) values (1, '20240103.txt', 0);

-- トップに追加する場合はparent_idをNULLにする
insert into files (parent_id, name, is_dir) values (NULL, '03_仕事関連', 1);

--
-- update系
--
-- ファイルを移動する
-- parent_idを変更することでファイルを移動できる
-- /02_ブログネタ/01_Rails のディレクトリを /01_買い物リスト/ に移動する
-- 子のレコードは何もしなくても追従できる
update files set parent_id = 1 where file_id = 5;

-- トップに移動したい場合はparent_idをNULLにする
update files set parent_id = NULL where file_id = 5;

--
-- delete系
--
-- ファイルを削除する
-- 最下層のファイルを削除する場合はそのレコードのみを削除すればいいだけ。
-- マイグレーションの方法.txtを削除する
delete from files where file_id = 6

-- ディクレトリを削除する場合はディレクトリ内のファイルをすべて削除してから、ディレクトリを削除する
-- 外部キー制約時にcascadeすれば一件削除で問題ない？
-- 02_ブログネタのディレクトリを削除する
delete from files where file_id = 6 -- マイグレーションの方法.txt
delete from files where file_id = 5 -- 01_Rails
delete from files where file_id = 4 -- 02_ブログネタ