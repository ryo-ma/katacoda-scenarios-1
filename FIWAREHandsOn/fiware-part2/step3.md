様々なEntityの取得方法を紹介していきます。

# 3-1 **/v2/entities/{id}** によるEntityの取得

**/v2/entities/**ではすべてのEntityを取得しましがた、idを指定することによって特定のEntityを取得することもできます。

`curl localhost:1026/v2/entities/Room1 | jq`{{copy}}

# 3-2 Key Value形式での取得

keyValuesオプションを使うことでattributeを属性値だけ取得するようにできます

`curl localhost:1026/v2/entities/Room1?options=keyValues | jq`{{copy}}

# 3-3 Values形式での取得

さらにコンパクトにValuesオプンションを使ってattirbuteの値のみの配列を取得することもできます。

`curl localhost:1026/v2/entities/Room1?options=values | jq`{{copy}}

attrsを指定することで取得するattributeの指定と順序を指定することができます。

`curl localhost:1026/v2/entities/Room1?options=values&attrs=temperature,pressure | jq`{{copy}}

`curl localhost:1026/v2/entities/Room1?options=values&attrs=pressure,pressure | jq`{{copy}}

# 3-4 **/v2/entities/{id}/attrs/{attrsName}**によるattributeの取得

**/v2/entities/{id}/attrs/{attrsName}**を使用することによって単一のattributeを取得することもできます。

`curl localhost:1026/v2/entities/Room1/attrs/temperature | jq`{{copy}}

# 3-5 **/v2/entities/{id}/attrs/{attrsName}/value**によるattributeの取得

**/v2/entities/{id}/attrs/{attrsName}/value**で指定したattributeのvalueのみを取得することもできます。

`curl localhost:1026/v2/entities/Room1/attrs/temperature/value`{{copy}}


