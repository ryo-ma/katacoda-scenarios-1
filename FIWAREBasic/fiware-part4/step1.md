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

以下のコマンドで起動と初期データを確認します。

`curl localhost:1026/v2/entities | jq`{{copy}}

# 1-2 SubscriptionによるCygnusへの通知

Cygnusに履歴データを作成する方法はOrionからのSubscriptionによる通知で実現します。

以下のSubscription設定でcygnusの**/notify**へ通知するように設定します。

```json
curl -v -X PATCH localhost:1026/v2/subscriptions/${SUBSCRIPTION_ID} -s -S -H 'Content-Type: application/json' -d @- <<EOF
{
  "description": "A subscription to get info about Room",
  "subject": {
    "entities": [
      {
        "idPattern"l ".*",
        "type": "Room"
      }
    ],
    "condition": {
      "attr": ["temperature", "pressure"]
    }
  },
  "notification": {
    "http": {
      "url": "http://cygnus:5050/notify"
    },
    "attrs": [
      "temperature",
      "pressure"
    ]
  }
}
EOF
```{{copy}}

temperatureの値を変更してみます。

`curl localhost:1026/v2/entities/Room1/attrs/temperature/value -s -S -H 'Content-Type: text/plain' -X PUT -d 29.5`{{copy}}

postgreSQL Clientを起動してデータベースに接続を行います。

`docker run -it --rm  --network root_default jbergknoff/postgresql-client postgresql://postgres:password@postgres-db:5432/postgres`{{copy}}

スキーマの一覧を確認します。

`\dn`
