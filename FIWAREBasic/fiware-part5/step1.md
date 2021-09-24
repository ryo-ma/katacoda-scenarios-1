Part5ではFiware-ServiceとFiware-ServicePathについて学習します。

# 1-1 環境の起動

今回は以下の構成が自動で起動します。

![全体構成図](./assets/part1/1-1.png)


今回はdocker-composeにより以下の内容が自動で構築されます。
※今回はFIWAREの学習がメインなので[docker-compose](https://docs.docker.jp/compose/toc.html)の説明については割愛します。

* FIWARE Orion
* MongoDB
* FIWARE Cygnus
* PostgreSQL


# 1-2 FIWARE-Serviceによるマルチテナンシーについて

FIWARE には論理的にデータベースを分離するマルチテナンシーの機能があります。  
FIWAREセキュリティフレームワーク(PEP proxy, IDM, Access Control)のようなコンポーネントで認可ポリシーの実現などを容易に実現します。

Orionでは"FIWARE-Service"というHTTPヘッダーでFIWARE-Service名を設定することができます。
