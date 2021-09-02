
# Step1 - Orionを立ち上げよう

Step1ではOrionを起動するために必要な知識を習得します。

## 1-1 Orionのデータを保存するMongoDBの立ち上げ

まずはOrionのデータベースとして使われるMongoDBの立ち上げを行いましょう。
今回の立ち上げには[Docker](https://www.docker.com/)を使います。※今回はDockerの説明については割愛します。
今回はレジストレーションサービス([DockerHub](https://hub.docker.com/))に公開されているMongoDBのImageを取得しコンテナとして起動します。

以下のコマンドでMongoDBを起動します。

`docker run --name mongodb -d mongo:4.4`{{copy}}


以下のコマンドで起動しているコンテナを確認します。

`docker ps`{{copy}}

一覧に`mongodb`があれば成功です。

## 1-2 Orionの立ち上げ

次にOrion本体を起動します。
MongoDBと同様にDockerHubに公開されているFIWARE公式のImageを使って起動することができます。

次のdockerコマンドでは`-p`コマンドを使ってOrionへアクセスするためのポートフォワーディングの設定を行っています。
Orionはデフォルトで`1026`番のポートで立ち上がりますので、そのままのポート番号でポートフォワーディングします。
この設定によりコンテナの外部から`1026`番でアクセスできるようになります。

`docker run -d --name orion --link mongodb:mongodb -p 1026:1026 fiware/orion -dbhost mongodb`{{copy}}

`docker ps`{{copy}}


