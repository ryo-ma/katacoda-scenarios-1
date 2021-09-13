# 4-1 Entityの削除

1. **/v2/entities/{id}** に対してDELETEメソッドを使うことで指定したEntityを削除することができます。

   `curl localhost:1026/v2/entities/Room2 -X DELETE`{{copy}}

2. 削除されたことを確認します。

   `curl localhost:1026/v2/entities | jq`{{copy}}

## 4-2 Attributeの削除

1. **/v2/entities/{id}/attrs/{attrName}** に対してDELETEメソッドを使うことで指定したEntityを削除することができます。

   `curl localhost:1026/v2/entities/Room1/attrs/pressure -X DELETE`{{copy}}

2. 削除されたことを確認します。

   `curl localhost:1026/v2/entities | jq`{{copy}}
