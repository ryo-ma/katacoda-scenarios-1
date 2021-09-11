Orion Subscriptionにおける様々な設定に関して学習していきます。


# 2-1 idPatternによる検知対象の指定

変更を検知するEntityの指定方法にidPatternを使うことができます。  
idPatternは正規表現を使用しマッチしたEntityを対象とすることができます。

![idPattern](./assets/3-6.png)

今回の例では".\*"を指定することで全てのidを対象にしています。


元のTerminalで以下のコマンドを実行します。

```json
curl -v localhost:1026/v2/subscriptions/ -s -S -H 'Content-Type: application/json' -d @- <<EOF
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
      "attr": ["temperature"]
    }
  },
  "notification": {
    "http": {
      "url": "https://[[HOST_SUBDOMAIN]]-1028-[[KATACODA_HOST]].environments.katacoda.com/accumulate"
    },
    "attrs": [
      "temperature"
    ]
  }
}
EOF
```{{copy}}
