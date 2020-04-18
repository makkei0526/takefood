FactoryBot.define do
  factory :shop do
    id                    {"1"}
    email                 {"aaa@gmail.com"}
    password              {"00000000"}
    name                  {"テストストア"}
    introduction                  {"ハンバーグが美味しい店"}
    image                 {File.open("#{Rails.root}/spec/fixtures/banner.jpg")}
    address               {"東京都渋谷区道玄坂XX丁目XX"}
    area               {"渋谷"}
    shop_holiday          {"水曜日"}
    shop_time             {"AM10:00~PM10:00"}
  end
end