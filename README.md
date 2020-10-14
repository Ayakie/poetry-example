poetry と Docker を用いた環境構築例  
https://wimper-1996.hatenablog.com/entry/2020/10/14/114458

## 既に入っているパッケージ

`pyproject.toml` 参照
- scikit-learn = 0.23.1
- jupyter ^1.0.0
- autopep8

# 使い方

1. poetry-example ディレクトリに移動し、以下のコマンドでDocker イメージのビルドとコンテナ起動

```
(poetry_example) $ docker-compose up --build
```

2. コンテナ内のシェルに入り、好きなパッケージを追加

```
(poetry_example) $ docker exec -it poetry-example /bin/bash

/workspace# poetry add [パッケージ名]
```

3. Control + C で一旦コンテナを停止し、再びイメージをビルド・コンテナ起動

```
(poetry_example) $ docker-compose up --build
```