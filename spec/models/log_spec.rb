require 'rails_helper'

RSpec.describe Log, type: :model do
  context '値を入れなくてはならないカラムのバリデーションが有効であるか確認する' do
    it "ログタイトル、カテゴリ, 成果、学習時間があれば有効" do
      log = FactoryBot.build(:log)
      expect(log).to be_valid
    end

    it "ログタイトルがなければ無効" do
      log = FactoryBot.build(:log, title:nil)
      log.valid?
      expect(log.errors[:title]).to include("を入力してください")
    end
    it "カテゴリがなければ無効" do
      log = FactoryBot.build(:log, category_id:nil)
      log.valid?
      expect(log.errors[:category_id]).to include("を入力してください")
    end
    it "成果がなければ無効" do
      log = FactoryBot.build(:log, achieve:nil)
      log.valid?
      expect(log.errors[:achieve]).to include("を入力してください")
    end
    it "学習時間がなければ無効" do
      log = FactoryBot.build(:log, study_record: nil)
      log.valid?
      expect(log.errors[:study_record]).to include("を入力してください")
    end
  end
  context '値の重複のバリデーションが有効であるか確認する' do
    it "メールアドレスが重複していたら無効" do
      User.create(
        name:  "test",
        email:      "user@email.com",
        password:   "password",
      )
      user = FactoryBot.build(:user)

      user.valid?
      expect(user.errors[:email]).to include("はすでに存在します")
    end

    it "ユーザーネームが重複していたら無効" do
      User.create(
        name:  "test",
        email:      "user@email.com",
        password:   "password",
      )
      user = FactoryBot.build(:user)
      user.valid?
      expect(user.errors[:name]).to include("はすでに存在します")
    end
  end
end