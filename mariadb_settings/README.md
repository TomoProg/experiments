# mariadb_lock
MariaDBの行ロックの実験用リポジトリ
- レコードロック
- ギャップロック
- ネクストキーロック

## セットアップの方法

### MariaDb or MySQL
```
# Dockerコンテナのビルド & 立ち上げ
docker-compose up mariadb_lock --build

# コンテナの中に入る
docker exec -it mariadb_lock /bin/bash

# コンテナの中でスクリプトを流す
mysql -h localhost -uroot -p12345678 < /var/scripts/setup.sql
```
