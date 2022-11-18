class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #アソシエーション
  has_many :orders, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  has_many :deliveries, dependent: :destroy

  #バリテーション
  validates :first_name, presence:true, length: { minimum: 1, maximum: 20 }
  validates :last_name, presence:true, length: { minimum: 1, maximum: 20 }
  validates :first_kana, presence:true, length: { minimum: 1, maximum: 20 }
  validates :last_kana, presence:true, length: { minimum: 1, maximum: 20 }
  validates :zip, presence:true
  validates :address, presence:true
  validates :phone_number, presence:true
  validates :email, presence:true

  #退会機能
  #def active_for_authentication?

end