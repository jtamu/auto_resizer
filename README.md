# Auto Resizer

## How to use

1. `docker compose up`してください
2. リサイズしたい画像をimagesディレクトリ配下に置いてください
3. あとは自動でリサイズされます

## Additional usage

- docker-compose.ymlの以下の環境変数を変更することで動作をカスタマイズできます
	- SIZE
		- 画像サイズを指定します
		- imagemagickのconvertコマンドのresizeオプションとして有効な形式で指定してください
	- EXT
		- 画像ファイルとして認識したいファイルの拡張子です
		- EXTに指定されたパターンとマッチしていたらリサイズします
		- bashの正規表現として有効な形式で指定してください
