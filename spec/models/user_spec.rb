require 'rails_helper'

RSpec.describe User, type: :model do
  context '値を入れなくてはならないカラムのバリデーションが有効であるか確認する' do
    it "ユーザー名、メールアドレス、パスワードがあれば有効" do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end

    it "ユーザー名がなければ無効" do
      user = FactoryBot.build(:user, name:nil)
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end
    it "メールアドレスがなければ無効" do
      user = FactoryBot.build(:user, email:nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    it "パスワードがなければ無効" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
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