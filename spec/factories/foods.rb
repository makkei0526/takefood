FactoryBot.define do
  factory :food do
    name              {"ハンバーガー"}
    image             {File.open("#{Rails.root}/spec/fixtures/banner.jpg")}
    price          {"300"}
    shop_id           {"1"}
    association :shop
  end
end
