自由にOrionを利用しNGSIの学習などに活用するPlaygroundです


# FIWARE OrionとFIWARE Cygnusの起動

今回は以下の構成が自動起動されます。  
※起動の詳細に関してはFIWARE Basicの[Part4](https://www.katacoda.com/c3lab/courses/fiwarebasic/fiware-part4)を参照

![全体構成図](./assets/1-1.png)

ターミナルの処理が終了したら以下のコマンドで動作確認します。

`curl localhost:1026/v2/entities | jq`{{copy}}

初期データとして登録されているRoom1のEntityが表示されたら成功です。

# サンプルデータとデータタイプ

参考：[smart-data-models](https://github.com/smart-data-models)

## WaterQuality

![WaterQuality](./assets/1-2.png)
