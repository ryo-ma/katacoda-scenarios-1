様々なEntityの取得方法を紹介していきます。

# 3-1 **/v2/entities/{id}** によるEntityの取得

**/v2/entities/**ではすべてのEntityを取得しましがた、idを指定することによって特定のEntityを取得することもできます。

`curl localhost:1026/v2/entities/Room1 | jq`{{copy}}

# 3-2 Key Value形式での取得

keyValuesオプションを使うことで属性値だけを含めコンパクトに表示することができます。

`curl localhost:1026/v2/entities/Room1?options=keyValues | jq`{{copy}}
