# 🖥 Takefood テイクアウトを広めよう
https://app.takefood.work/

<img width="1440" alt="スクリーンショット 2020-04-22 10 31 18" src="https://user-images.githubusercontent.com/61016123/79942353-96a1ab00-84a1-11ea-8134-d95c018f3e7a.png">

画面上部のゲストログインボタンから、【ゲストユーザー】としてログインできます。

# 📱  レスポンシブデザイン

<div align="center">
<img width="400" alt="スクリーンショット 2020-04-22 10 31 18" src="https://user-images.githubusercontent.com/61016123/79946943-e8e7c980-84ab-11ea-89a9-55f2226bfa44.PNG">
</div>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![takefood](https://user-images.githubusercontent.com/61016123/80514662-c67a1280-89bb-11ea-9975-2593e654fba3.gif)

# 💡 サービス概要
  コロナウィルスの影響で
  お店に人が来ないのでテイクアウトを始めたことを広めることができる
  <br>逆に食べたいものがあるのにお店に行けない方が
  テイクアウト可能なお店を調べることができる
  <br>そんなサービスとなっております

# 登場人物

  - エンドユーザー
    - 消費者（一般ユーザー）
      <br>仕事が忙しくて外食が、メインだった社会人、飲食店でおいしい料理を食べたい方
    - 提供者（飲食店など、経営者）
      <br>テイクアウトを始めた飲食店の経営者

# 😔ユーザーが抱える課題

  - 消費者（一般ユーザー）
      <br>コロナウィルスの影響でどこのお店も店内飲食が禁止されていて食べに行けない,,,

      お持ち帰りできたらいいのに,,,

      近くの地域からテイクアウトができるお店が探したい

  - 提供者（飲食店など、経営者）

      <br>コロナの影響でお店に来る人が減ったので経営が困難になってきた

      どうにかお客さんにきてもらうためにテイクアウトを始めたがどうやって広めればいいのかわからない

      テイクアウトを広めて、お得な価格でもいいからお客様に買いに来て欲しい

# 😎解決方法
  テイクアウトができる飲食店を近くの地域から検索できれば、買いに行ける

  各飲食店がお店の情報を登録し、テイクアウトのメニューを投稿でき、今やっているお得な情報を発信できる

# プロダクト
  テイクアウト検索できる、Webアプリケーション   

# マーケット
テイクアウトをやっている飲食店

テイクアウトをしたい社会人や主婦

# 使用技術
  ## 環境
  GitFlowでの開発（擬似チーム開発）   
  Ruby 2.6.1  
  Rails 5.2.4   
  MySQL 5.7   
  Docker

## 📗 インフラ
AWS (EC2, RDS for MySQL, S3, VPC, Route53, Elastic IP, ALB)

## 📕 フロント
・HTML５（haml)   
・css3(SASS)    
・jquery(インクリメンタルサーチ、メッセージの非同期化、画像のプレビュー表示、ドロップダウンメニュ   ー、無限スクロール）    
・レスポンシブデザイン（メディアクエリ）    
・Webフォント（Google fonts)    
・アイコンフォント（font-awesome)   
・CSSアニメーション

## 📘 サーバー
・Ruby on Rails(devise,carrierwave,mini_magick,kaminari)    
・rspec、factory_botを用いたテスト    
・Mysql   


## 👨‍🍳 なぜこのアプリを作ろうと思ったか
実際に自分の周りにコロナの影響でお店に人が来ないから、テイクアウトを始めたんだけど広める方法がわからないという問題があったので、  
それを解決するべく、テイクアウトを始めことを広め、ユーザーが近くの地域からそれを探せるアプリを作ろうと思いました。


## ✅ 作る上で工夫した点
ユーザーにストレスのないUI.UXを実装するのを心がけた点です。 

特にアプリのロード中は、一番ストレスを与えやすい場面だと思うので、%表示でロードが可視化してわかるように実装いたしました。

![aed4c5e63cb23178505730cf36cfb3e3](https://user-images.githubusercontent.com/61016123/80304198-6e8eb080-87ef-11ea-82f2-3a806c4fc22c.gif)

インクリメンタルサーチで    
キーワードを入力したら一致する地域の飲食店がすぐに出てくるようにしました。

![76dfde7d9ac1d2510028e3ed6e71f696](https://user-images.githubusercontent.com/61016123/80511728-74cf8900-89b7-11ea-9db4-6b9e17a9466b.gif)


## 🔎 作る上で苦労した点、どうやって乗り越えたか
開発環境にDockerを用いてエラーが多発した点で苦労しました。    
まずは、構文に問題がないか、エラー文をしっかり見て、Googleで調べることで解決ができました。    
エラーが出てもどこかに必ずヒントがあるので冷静に対処できる力がついてきたと感じました。

## 👀ER図
![TakeFood ER 図](https://user-images.githubusercontent.com/61016123/80510638-faead000-89b5-11ea-8487-418771ccb0ac.png)

## 📌 今後実装したい機能
アプリの規模がまだまだ小さいので    
ユーザー視点に立って本当に必要な機能を追加していく予定です。    
issueにまとめております。

https://github.com/makkei0526/takefood/issues


## 🌐アプリURL
https://app.takefood.work/

## 😄作成者

[ブログ](https://kashimablog.com/)   
[Twitter](https://twitter.com/makkei12)   
[GitHub](https://github.com/makkei0526)   
[Instagram](https://www.instagram.com/makkei9194/?hl=ja)   