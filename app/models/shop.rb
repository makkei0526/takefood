class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         mount_uploader :image, ImageUploader


         has_many :foods
         has_many :posts


         def self.search(search)
          if search
            Shop.where('area LIKE(?)', "%#{search}%")
          else
            Shop.all
          end
        end

end
