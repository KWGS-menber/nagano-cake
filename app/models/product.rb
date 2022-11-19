class Product < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
         
  belongs_to:genre
  Genre.select(:name)
  has_one_attached :image
  
  def get_image(width,height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
     image.variant(resize_to_limit: [width, height]).processed
  end

end
