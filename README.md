# アプリケーション名

Steadily

# アプリケーション概要
自分の取り組み（学習や努力）　”ログ” を日報形式で記録していくアプリケーションです。

# URL

https://steadily.herokuapp.com/

# アカウント
下記のアカウントでログイン可能です。

email: test@gmail.com  
password: testtest

# 利用方法
・トップページに遷移後、フォームにユーザーネームとメールアドレス、パスワードを記入して登録します  
・ログイン後、ログ作成ボタンを押すと、ログ記入フォームに遷移します。  
・ログ投稿後、Twitterにログの情報を共有することも可能です。
・ログ記入フォームにログタイトル・カテゴリ・成果・学習時間を記入すると投稿が可能です。  
・マイページでは自分の学習記録の一覧・総学習時間・カテゴリごとの学習時間・各種グラフを確認可能です  

# 目指した課題解決
・ プログラミングやその他の継続的な努力が必要な人に向けて、積み上げてきた努力の明示化・次にやるべきアクション・ツイッターへ取り組みの共有を行うことでモチベーションの維持をすることが本アプリケーションの目的です。またKPT（keep、problem、try）によるフレームワークの振り返りによって、普段から密度の高い振り返りを行う習慣を身につける事ができることを目指しています。

# 役割
要件定義から開発まで1人で行いました。

#　 使用技術

Ruby 3.1.2  
Ruby on Rails 7.0.4  
bootstrap 5.3  
PostgreSQL 15.1  

# 機能一覧  
・ユーザー登録  
・ログイン機能  
・ログアウト機能  
・ユーザー編集機能  
・ユーザー一覧機能  
・ログ（日報）投稿機能  
・ログ詳細・編集・削除機能  
・カテゴリ登録機能  
・マイページ機能（ログインユーザーに紐付いたログを一覧表示）  
・カテゴリ詳細機能（ログインユーザー及び設定したカテゴリに紐付いたログを一覧表示）  

# 今後の展望  
・ユーザーに利用してもらう  
→ツイッターで呼びかけて利用してもらう。その後フィードバックをもらい改善  
・KPTのうちTryに当たる項目をチェックリスト化し、その項目が完了したらチェックリストからなくす機能実装  
→Tryは普段の取り組みで自身の足りない部分を補うために必要な努力のため、ただ日報に記録するだけではなく、実際に行ったのかどうか判断できる機能を実装したい  
→シーケンス図の作成
・TailwindCSSを用いた、レイアウトの改善  
→bootstrapのみだとUIが簡素なものになってしまうのでより自由度の高い実装を行いたい  
