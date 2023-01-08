require 'rails_helper'

RSpec.describe Category, type: :model do
  context '値を入れなくてはならないカラムのバリデーションが有効であるか確認する' do
    it "カテゴリ名があれば有効" do
      category = FactoryBot.build(:category)
      expect(category).to be_valid
    end
  end
  context '値の重複のバリデーションが有効であるか確認する' do
    it "カテゴリ名が重複していたら無効" do
      Category.create(
        name:  "test",
      )
      category = FactoryBot.build(:category)
      category.valid?
      expect(category.errors[:name]).to include("はすでに存在します")
    end
  end
end