
# Step1 - Orionを立ち上げよう

Step1ではOrionを起動するために必要な知識を習得します。

## 1-1 MongoDBの立ち上げ

まずはOrionのデータベースとして使われるMongoDBの立ち上げを行いましょう。

今回の立ち上げには[Docker](https://www.docker.com/)を使います。  
※今回はDockerの説明については割愛します。

1. 以下のコマンドでMongoDBを起動します。

   docker run --name mongodb -d mongo:4.4`{{copy}}


2. 完了したら以下のコマンドで起動しているコンテナを確認します。

   docker ps`{{copy}}

   一覧に`mongodb`があれば成功です。

## 1-2 Orionの立ち上げ

次にOrion本体を起動します。

MongoDBと同様にDockerHubに公開されているFIWARE公式のImageを使って起動することができます。

1. 以下のコマンドでOrionを起動します。

   `docker run -d --name orion --link mongodb:mongodb -p 1026:1026 fiware/orion -dbhost mongodb`{{copy}}

2. 完了したら以下のコマンドで起動しているコンテナを確認します。

   `docker ps`{{copy}}

   一覧に`orion`と`mongodb`があれば成功です。
