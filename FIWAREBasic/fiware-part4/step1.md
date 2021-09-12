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
