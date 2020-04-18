class HomesController < ApplicationController
  def new_guest
    shop = Shop.find_or_create_by!(email: 'guest@example.com') do |shop|
      shop.password = SecureRandom.urlsafe_base64
      shop.name = "ゲストカフェ"
      shop.introduction = "全国からハンバーガーのテイクアウト目当てにお客さんが来てます"
      shop.area = "渋谷"
      shop.address = "東京都渋谷区道玄坂XX丁目XXXX−XX"
      shop.shop_holiday = "水曜日"
      shop.shop_time = "AM10:00~PM10:00"
    end
    sign_in shop
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end