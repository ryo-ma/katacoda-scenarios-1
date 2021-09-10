Part2ではFIWARE Orionのデータ操作における基本的な操作を学習していきます。


# 1-1 FIWARE OrionとMongoDBの起動確認

今回は以下の構成が自動起動されます。  
※起動の詳細に関してはFIWARE Basicの[Part1](https://www.katacoda.com/c3lab/courses/fiwarebasic/fiware-part1)または[Part2](https://www.katacoda.com/c3lab/courses/fiwarebasic/fiware-part2)を参照

![全体構成図](https://github.com/c-3lab/katacoda-scenarios/raw/main/assets/part1/1-1.png)

ターミナルの処理が終了したら以下のコマンドで動作確認します。

`curl localhost:1026/v2/entities`{{copy}}

まだデータは入っていないので空のjson配列`[]`が帰ってくれば成功です。
