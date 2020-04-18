class Food < ApplicationRecord

  belongs_to :shop
  mount_uploader :image, ImageUploader


  #バリデーション記述
  validates :name, presence: true
  validates :price, presence: true
  validates :image, presence: true
end
