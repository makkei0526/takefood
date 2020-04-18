require 'rails_helper'

describe Food do
  describe '#create' do
    it "foodの名前が空の場合登録できないこと" do
      food = build(:food,name: "")
      food.valid?
      expect(food.errors[:name]).to include("を入力してください")
    end

    it "値段が空の場合は登録できないこと" do
      food = build(:food,price: "")
      food.valid?
      expect(food.errors[:price]).to include("を入力してください")
      end

    it "食べものの画像が空の場合は登録できないこと" do
      food = build(:food,image: "")
      food.valid?
      expect(food.errors[:image]).to include("を入力してください")
      end

      it "全ての必須項目が入力されている場合投稿できる" do
        food = build(:food)
        expect(food).to be_valid
      end

  end  
end