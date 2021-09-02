# Step2 - FIWARE Orionにアクセスしてみよう

先ほど起動したFIWARE Orionにアクセスします。

Orionのデフォルトポートは`1026`で起動します。今回はコンテナの外からも同じように`1026`でアクセスできるようにポートフォワーディングしています。

## 2-1 Orionのバージョン情報を取得

1. localhostからの取得

   `curl localhost:1026/version`{{copy}}

2. katacodaのドメイン(外部アクセス)からの取得

   `curl https://[[HOST_SUBDOMAIN]]-1026-[[KATACODA_HOST]].environments.katacoda.com/version`{{copy}}

1.も2.も同じ結果になり、json形式でOrionのバージョン情報が取得できれば成功です。

## 2-2 OrionのEntity一覧を取得

1. localhostからの取得

   `curl localhost:1026/v2/entites`{{copy}}

2. katacodaのドメイン(外部アクセス)からの取得

   `curl https://[[HOST_SUBDOMAIN]]-1026-[[KATACODA_HOST]].environments.katacoda.com/v2/entities`{{copy}}

1.も2.も同じ結果になり、空のjson配列が帰ってくれば成功です。
