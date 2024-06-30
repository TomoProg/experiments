# small_outer_table
駆動表を小さくしてSQLを高速化する
テストデータ

## セットアップの方法

### MariaDb or MySQL
```
# Dockerコンテナのビルド & 立ち上げ
docker-compose up maria_db --build

# コンテナの中に入る
docker exec -it maria_db /bin/bash

# コンテナの中でスクリプトを流す
mysql -h localhost -uroot -p12345678 < /var/scripts/ddl.sql
```


### ダンプコマンド
```
mysqldump -h localhost -u root -p12345678 --single-transaction --databases small_outer_table_db > /var/data/dump.sql
```

