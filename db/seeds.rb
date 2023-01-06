# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(
  email: 'hikaricareer@gmail.com',
  password: 'password',
  name: 'hikari'
)

Category.create!(
  name: "Steadily"
)

Log.create!(
  [
    {
      title: "本番環境への移行",
      achieve: "・データベースのマイグレーション ・本番環境でもLogの投稿が可能に",
      study_record: 6,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "bootstrap導入",
      achieve: "・次回からのbootstrap導入迅速化 ・次回からのjQuery導入迅速化",
      study_record: 1,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "カテゴリ機能実装",
      achieve: "・カテゴリ一覧・作成・編集・削除機能実装 ・CategoryとLogの1対多のアソシエーション ・tweet時にカテゴリ反映",
      study_record: 2,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "KPTについてリサーチ・ER図の作成",
      achieve: "・KPT法の理解と効果的な運用方法の策定 ・draw.io を用いたER図の作成",
      study_record: 2,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "LogのフォームにKPT追加",
      achieve: "・LogフォームにKPTカラムを追加",
      study_record: 1,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "学習時間のデータ型変更",
      achieve: "・学習時間のデータ型をintegerからfloatに更新",
      study_record: 0.5,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "ヘッダー作成",
      achieve: "・基本的な遷移先設定 ・bootstrapによるレイアウト",
      study_record: 1,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "設計",
      achieve: "画面一覧・機能一覧の作成",
      study_record: 1.3,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "マイページ実装",
      achieve: "・ユーザーに紐付いたログ一覧の実装 ・ユーザーに紐付いたカテゴリ一覧の実装",
      study_record: 2.3,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "学習時間表示・カテゴリごとのログ一覧",
      achieve: "・各画面の学習時間の合計を表示 ・カテゴリに紐付いたログ一覧の表示",
      study_record: 0.5,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "円グラフ実装",
      achieve: "・カテゴリごとのログの数の割合を円グラフで表示できた",
      study_record: 1.5,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "ログイン機能の修正",
      achieve: "・パスワードが正しいのにログインできない状態を解消できた",
      study_record: 3,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "一覧画面のレイアウト調整",
      achieve: "・bootstrapを使ってレイアウトを作成した",
      study_record: 2,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "Rspec",
      achieve: "・モデルのテストの書き方を習得 ・Rspecの導入方法理解",
      study_record: 2,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "一意制約、データベースリセット、カテゴリー機能変更",
      achieve: "・categoryテーブルのnameカラムに一意制約付与 ・データベースの構造変化に際し、本番環境のDBのリセット ・カテゴリ一覧ページの不要なリンクの削除",
      study_record: 3,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "フォーム・詳細画面の改善",
      achieve: "・bootstrapを用いたレイアウトを作成 ・tweetボタン・フォーム部分を共通テンプレート化",
      study_record: 3,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "フォーム・詳細画面の改善",
      achieve: "・bootstrapを用いたレイアウトを作成 ・tweetボタン・フォーム部分を共通テンプレート化",
      study_record: 3,
      user_id: 1,
      category_id: 1,
      keep: nil,
      try: nil,
      problem: nil
    },
    {
      title: "各画面のUI調整",
      achieve: "・フォームのsubmitボタンのレイアウト ・ユーザー一覧リンクのボタンのレイアウト ・カテゴリー一覧の配置のレイアウト",
      study_record: 1,
      user_id: 1,
      category_id: 1,
      keep: "・新たなレイアウト方法を覚えた",
      try: nil,
      problem: "・一覧のレイアウトがまだまだダサい"
    },
    {
      title: "ページネーション",
      achieve: "・各一覧画面にページネーション機能を実装",
      study_record: 1,
      user_id: 1,
      category_id: 1,
      keep: "UIをカスタマイズする方法を学習できた",
      try: "学習時間の表示ができるようにコントローラーでcountsの値を取得する",
      problem: "2ページ目に行ったときに総学習時間が0になってしまう"
    },
    {
      title: "バリデーション",
      achieve: "・バリデーション・エラーメッセージ実装",
      study_record: 2,
      user_id: 1,
      category_id: 1,
      keep: "・パーシャルを用いたところ",
      try: "・エラーメッセージの日本語化方法を探す",
      problem: "・エラーメッセージの日本語化"
    },
    {
      title: "各画面UI調整・非ログインユーザーの権限管理",
      achieve: "・サインアップ・サインイン画面のUI調整 ・非ログイン時の各画面の表示範囲と権限を調整 ・ヘッダーのUI調整",
      study_record: 4,
      user_id: 1,
      category_id: 1,
      keep: "・bootstrapを使いこなすことができるようになってきた",
      try: "TaiwandCSSを使える状態にする",
      problem: "bootstrapだけだとどうあがいてもダサい"
    },
    {
      title: "学習時間周りの調整",
      achieve: "・学習時間の表示の際に1.0ではなく1で表示できるように ・学習時間の入力をセレクトボックスで行えるように",
      study_record: 3,
      user_id: 1,
      category_id: 1,
      keep: "・調べてなんとかなった",
      try: "\・<%= \"\%.15g\"\%log.study_record %> 上記のコードをメソッド化したい",
      problem: "・<%= \"\%.15g\"\%log.study_record %> ビューに上記のコードをベタ貼りしているだけなのでどうにかしたい ・まだまだレイアウトがダサい"
    }
  ]
)