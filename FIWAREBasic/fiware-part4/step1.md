Part4ではFIWARE Cygnusによる履歴データの作成について学習していきます。


# 1-1 環境の起動

今回は以下の構成が自動で起動します。

![全体構成図](./assets/4-1.png)


今回はdocker-composeにより以下の内容が自動で構築されます。
※今回はFIWAREの学習がメインなので[docker-compose](https://docs.docker.jp/compose/toc.html)の説明については割愛します。

* FIWARE Orion
* MongoDB
* FIWARE Cygnus
* PostgreSQL

以下のコマンドでdocker-composeで起動された内容を確認します。

`cat docker-compose.yaml`{{copy}}


