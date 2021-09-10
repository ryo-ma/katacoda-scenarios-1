Part2ではFIWARE Orionのデータ操作における基本的な操作を学習していきます。


# 1-1 FIWARE OrionとMongoDBの起動確認

今回は以下の構成が自動起動されます。  
※起動の詳細に関してはFIWARE BasicのPart1またはPart2を参照

![全体構成図](https://github.com/c-3lab/katacoda-scenarios/raw/main/assets/part1/1-1.png)

FIWARE Orionが問題なく動作していることを確認するために以下のコマンドを実行します。

`curl localhost:1026/v2/entities`{{copy}}

まだデータは入っていないので空のjson配列`[]`が帰ってくれば成功です。
