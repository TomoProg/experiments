# 木構造に立ち向かう方法
木構造に立ち向かうやり方の実験用リポジトリ
まだできてません。

## コンテナの立ち上げ方

```
# Dockerコンテナのビルド & 立ち上げ
docker-compose up --build

# masterコンテナの中に入る
docker exec -it mariadb_master /bin/bash

# slaveコンテナの中に入る
docker exec -it mariadb_slave /bin/bash
```

## 参考
https://mariadb.com/kb/en/setting-up-replication/
