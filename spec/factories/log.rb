FactoryBot.define do
  factory :log do
    title { "test" }
    category_id { FactoryBot.create(:category).id }
    user_id {  FactoryBot.create(:user).id }
    achieve { "test" }
    study_record { 2 }
    keep { "test" }
    problem { "test" }
    try { "test" }
  end
end
