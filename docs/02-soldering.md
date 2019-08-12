# PCB組み立て

このパートでははんだを利用するので大変危険です。注意して作業してください。  
組み立ては背の低いパーツから行います。  
背の低い順に

- ダイオード
- スイッチソケット
- リセットスイッチ
- ジャック
- （オプション）UnderglowLED
- ProMicro（ソケット付け）

## それぞれの注意点を書く

## ダイオード

ダイオードには極性があるので向きに気を付けてつけてください。  
極性の向きを書く

## スイッチソケット

ソケットを乗せる前に薄くはんだをつけておくとつけやすいです。  
薄く乗せたはんだの上にソケットをしっかり差し込み再びしっかり温めてはんだ付けします。その際しっかりと差し込むようにしてください。  

## リセットスイッチ

向きに注意してはんだ付けしてください。  
回路図とスイッチの回路図を貼る  

## ジャック

（optional）i2cを利用する際ははんだでつなげず、R1,R2にそれぞれ4.7kΩ抵抗をつけてください。  

## ProMicro

ProMicroに同梱されているピンヘッダでも構いませんが、 `抜き差しできる`コンスルーピンヘッダを使用する例を載せます。同梱されているピンヘッダでは裏側へのはんだ付けも必要になります。  
基板に向きを揃えてコンスルーピンヘッダを挿します。  

ProMicroを載せます。  

向きはいろいろと実装されている方が表になるようにし、ピンヘッダを通したら表面をはんだ付けします。  

## （オプション）UnderglowLED

基板のProMicroの下部にUnderglowLED用の配線をしてあります。  
LEDテープなどに対してそれぞれ対応した部分をはんだ付けしてください。LEDも向きが決まっているので注意してください。  