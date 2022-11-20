class Product < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
         
  belongs_to:genre
  Genre.select(:name)
  has_one_attached :image
  validates:name,presence: true,length: { minimum: 1, maximum: 20 }
  validates:explanation, presence: true,length: { minimum: 1, maximum: 200 }
  validates:price,presence: true
  
  def add_tax_price
        (self.price * 1.08).round
  end
  
  def get_image(width,height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
     image.variant(resize_to_limit: [width, height]).processed
  end

end
