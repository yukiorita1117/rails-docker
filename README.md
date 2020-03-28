# README

この README の内容は、通常は
アプリケーションを起動して実行します。

## 以下、考慮しておきたい事:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

## docker のコンテンナについて

- コンテナの起動
  `docker-compose up -d`

- コンテナの停止
  `docker-compose stop`

- コンテナの削除
  `docker-compose down`

- server.pid ファイルが残ってしまう場合の対処
  ctrl + C で強制的にコンテナを止め、`docker-compose up`を行うと`server.pid`が残り、warning が出る。
  そのため`-d`をつけて行うか、もしくは `docker-compose up` の後に`rm tmp/pids/server.pid`で pid ファイルを削除する。

- Gemfile にパッケージを追加した際
  `docker-compose build`
