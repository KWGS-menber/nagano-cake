class Delivery < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :customer
  validates :name, presence: true
  validates :zip, presence: true
  validates :address, presence: true

end
