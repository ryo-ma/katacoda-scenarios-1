Part3ではFIWARE OrionのSubscription機能について学習していきます。


# 1-1 FIWARE OrionとMongoDBの起動確認

今回は以下の構成が自動起動されます。  
※起動の詳細に関してはFIWARE Basicの[Part1](https://www.katacoda.com/c3lab/courses/fiwarebasic/fiware-part1)または[Part2](https://www.katacoda.com/c3lab/courses/fiwarebasic/fiware-part2)を参照

![全体構成図](https://github.com/c-3lab/katacoda-scenarios/raw/main/assets/part1/1-1.png)

ターミナルの処理が終了したら以下のコマンドで動作確認します。

`curl localhost:1026/v2/entities | jq`{{copy}}

初期データとして登録されているRoom1のEntityが表示されたら成功です。


# 1-2 FIWARE OrionのSubscription機能について

FIWARE Orionにはデータの変更を検知して特定のシステムへ通知する機能があります。
**/v2/subscriptions/**に通知先の設定をすることで実現できます。

```json
curl -v localhost:1026/v2/subscriptions -s -S -H 'Content-Type: application/json' -d @- <<EOF
{
	"description": "A subscription to get info about Room1",
  "subject": {
    "entities": [
      {
        "id": "Room1",
        "type": "Room"
      }
    ],
    "condition": {
      "attr": ["pressuer"]
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

pressuerの値を変更してみます。

`curl localhost:1026/v2/entities/Room1/attrs/pressure/value -s -S -H 'Content-Type: text/plain' -X PUT -d 28.5`{{copy}}

# 1-3 
