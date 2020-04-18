class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         mount_uploader :image, ImageUploader

#アソシエーション
         has_many :foods
         has_many :posts

         #バリデーション記述
  validates :name, presence: true
  validates :address, presence: true
  validates :introduction, presence: true
  validates :area, presence: true
  validates :shop_holiday, presence: true
  validates :shop_time, presence: true


         def self.search(search)
          if search
            Shop.where('area LIKE(?)', "%#{search}%")
          else
            Shop.all
          end
        end

end
