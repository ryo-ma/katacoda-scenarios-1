# 2-1 FIWARE Orionにデータを投入


FIWARE OrionではNGSIという形式でデータの管理を行います。  
※今回はNGSI v2を使います。

## 2-1-1 NGSI v2 について

NGSIv2は以下のようなデータモデルになります。

![NGSIv2](https://github.com/c-3lab/katacoda-scenarios/raw/main/assets/part2/2-0.png)

NGSIではjson形式でデータを表現します。  
実例のデータを見て見ましょう。

`example-ngsi.json`{{open}}


デーモデル図の踏まえて、以下に実例として部屋(Room)の温度(temperature)と湿度(pressure)の情報を含んだEntityを示しています。

![NGSIv2](https://github.com/c-3lab/katacoda-scenarios/raw/main/assets/part2/2-1.png)



