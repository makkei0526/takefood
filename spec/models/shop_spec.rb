require 'rails_helper'

describe Shop do
  describe '#create' do
    it "emailが空では登録できない" do
      shop = build(:shop, email: "")
      shop.valid?
      expect(shop.errors[:email]).to include("を入力してください")
    end
  end
end
