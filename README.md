# docker-pleasanter-postgresql
Docker上でプリザンター + PostgreSQLの仕組みを構成します。**あくまでデモ用**ですので、実際に運用する際は色々と課題があります...。  
バージョンは以下です。

* Pleasanter 1.2.20(webフォルダのDockerfileを修正することで任意のバージョンが取得可能です)
* PostgreSQL 13
* Docker 20.10.8
* docker-compose 1.29.2

# システム構成図
<img src="./static/system-configuration.svg" alt="system-configuration" width="400"/>

# 利用手順
①以下のコマンドでソースコードをクローンします。
```
git clone https://github.com/Oooooomin2/docker-pleasanter-postgresql.git
```

②`docker-compose.yml`ファイルと同じフォルダ内にて以下のコマンドを打ち、環境を構築します。
```
docker-compose up -d
```

③`http://localhost:5000`へアクセスし、Pleasanterのログイン画面が開くことを確認します。

# 制約
①あくまでデモ用のため、データベースの永続化を行っておりません。永続化が必要な場合は任意の箇所にマウントしてデータを保管する必要があります。

②PostgreSQLのデータベースのユーザ名、パスワードは今回は固定でセットしていますので変更ができません。あくまでデモ用としてご利用いただければと思います。

③ナビゲーションメニューの検索欄が利用できません（検索するとアプリケーションエラーが発生します）。何かしら対策があったような気がしますが・・・ちょっと忘れちゃいました(;^_^A