# ファームウェア書き込み

## リポジトリ

qmk_firmwareを利用していますが、まだ本家の方へのPull Reqeusを発行していないため、以下のリポジトリから取得してください。  
[mukkoのqmk_firmware](https://github.com/mukko/qmk_firmware)  

## 書き込み
qmk_firmwareのルートディレクトリで以下のコマンドでビルドします。  

```
# build
make sockets_split/rev1:default
```
 
USBケーブルでPCとキーボードを接続し、上記コマンドで生成したバイナリファイルを書き込みます。  
リセットスイッチを押すと書き込める状態なるので、その状態の際に書き込みを実行してください。  
