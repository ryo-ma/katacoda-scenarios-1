先ほど起動したFIWARE Orionにアクセスします。

Orionのデフォルトポートは`1026`で起動します。今回はコンテナの外からも同じように`1026`でアクセスできるようにポートフォワーディングしています。

![MongoDB](https://github.com/c-3lab/katacoda-scenarios/raw/main/assets/2-1.png)

問題なく動作していることを確認するため、`/version`と`/v2/entities`にアクセスしてみましょう。

# 2-1 Orionのバージョン情報を取得

1. localhostからの取得

   `curl localhost:1026/version`{{copy}}

2. katacodaのドメイン(外部アクセス)からの取得

   `curl https://[[HOST_SUBDOMAIN]]-1026-[[KATACODA_HOST]].environments.katacoda.com/version`{{copy}}

1.も2.も同じ結果になります。json形式でOrionのバージョン情報が取得できれば成功です。

# 2-2 OrionのEntity一覧を取得

1. localhostからの取得

   `curl localhost:1026/v2/entities`{{copy}}

2. katacodaのドメイン(外部アクセス)からの取得

   `curl https://[[HOST_SUBDOMAIN]]-1026-[[KATACODA_HOST]].environments.katacoda.com/v2/entities`{{copy}}

1.も2.も同じ結果になります。まだデータは入っていないので空のjson配列`[]`が帰ってくれば成功です。
