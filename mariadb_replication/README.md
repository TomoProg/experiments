# mariadb_replication
MariaDBのレプリケーションの実験用リポジトリ

## 設定ファイル
- master側の設定ファイル
master.cnf

- slave側の設定ファイル
slave.cnf

## コンテナの立ち上げ方

```
# Dockerコンテナのビルド & 立ち上げ
docker-compose up --build

# masterコンテナの中に入る
docker exec -it mariadb_master /bin/bash

# slaveコンテナの中に入る
docker exec -it mariadb_slave /bin/bash
```

## master側のデータの投入方法

```
mariadb -h localhost -uroot -p12345678 < /var/scripts/setup_master.sql
```

## 参考
https://mariadb.com/kb/en/setting-up-replication/
