# 2-1 FIWARE Orionにデータを投入


FIWARE OrionではNGSIという形式でデータの管理を行います。  
※今回はNGSI v2を使います。

## 2-1-1 NGSI v2 について

NGSIv2は以下のようなデータモデルになります。

![NGSIv2](https://github.com/c-3lab/katacoda-scenarios/raw/main/assets/part2/2-0.png)

NGSIではjson形式でデータを表現します。  
実例のデータを見て見ましょう。

`cat example-ngsi.json`


データモデル図の踏まえて、以下に実例として部屋(Room)の温度(temperature)と湿度(pressure)の情報を含んだEntityを示しています。

![NGSIv2](https://github.com/c-3lab/katacoda-scenarios/raw/main/assets/part2/2-1.png)


## 2-2 Entityの登録

以下のコマンドで先ほどのEntityをOrionに登録して見ましょう。  
Entityを登録する際はHTTPで`/v2/entities`というエンドポイントに対してPOSTをおこないます。

`curl localhost:1026/v2/entities -s -S -H 'Content-Type: application/json' -d @example-ngsi.json`{{copy}}

先ほど投入したEntityを確認します。

`curl localhost:1026/v2/entities`{{copy}}


## 2-3 データの更新

更新の際も登録と同じ方法をとることができます。

example-ngsi.jsonを以下のようにそれぞれのvalueを変更して見ましょう。

```json
{
  "id": "Room1",
  "type": "Room",
  "temperature": {
     "value": 25.1,
     "type": "Float",
     "metadata": {}
  },
  "pressure": {
     "value": 721,
     "type": "Integer",
     "metadata": {}
  }
}

```

再び`/v2/entities`に対してPOSTを行います。

`curl localhost:1026/v2/entities -s -S -H 'Content-Type: application/json' -d @example-ngsi.json`{{copy}}

Entityが更新されていることを確認します。

`curl localhost:1026/v2/entities`{{copy}}
