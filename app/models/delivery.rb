class Delivery < ApplicationRecord
  belongs_to :customer
  validates :name, presence: true
  validates :zip, presence: true
  validates :address, presence: true

end
