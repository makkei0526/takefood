require 'rails_helper'
describe Post do
  describe '#create' do
    it "contentがない場合は登録できないこと" do
      post = build(:post,content: "")
      post.valid?
      expect(post.errors[:content]).to include("を入力してください")
    end
  end
end