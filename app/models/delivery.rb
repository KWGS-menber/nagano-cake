class Delivery < ApplicationRecord

  belongs_to :user
  validates :name, presence: true
  validates :zip, presence: true
  validates :address, presence: true

end
