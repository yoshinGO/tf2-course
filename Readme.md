- docker imageのbuild
```
make build
```

- dockerコンテナにアクセス
```
make bash
```

- jupyter labの起動
```
make run-jupyter
```
このコマンド後にターミナルに表示される`token=ハッシュ値のようなもの`の  
`ハッシュ値のようなもの`を`localhost:8889` にアクセスしたあと入力する

** ファイルの変更をコンテナ上に反映させたい場合、buildし直すこと**
