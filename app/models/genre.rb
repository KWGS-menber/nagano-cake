class Genre < ApplicationRecord
  # devise :detabase_authenticatable, : authentication_keys => [:name], :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable

  has_many :products
  validates :name, presence: true, uniqueness: true
  validates :email, presence: false


end
