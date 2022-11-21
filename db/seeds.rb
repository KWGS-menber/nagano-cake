# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create!(
#     email: 'test@test.com',
#     password: '123456',
# )

product=Product.create!(
      genre_id: 1,
      name: "ショートケーキ",
      price: 500,
      explanation: "ふわっふわな食感がクセになります。",
      is_active: true
)
product.image.attach(io: File.open(Rails.root.join("app/assets/images/shortcake.jpg")), filename: "shortcake.jpg")

product2 = Product.create!(
  id: 2,
  genre_id: 1,
  name: "チョコケーキ",
  price: 550,
  explanation: "ほろ苦さと甘さのコントラストが楽しめます。",
  is_active: false)
product2.image.attach(io: File.open(Rails.root.join("app/assets/images/chocolatecake.jpg")), filename: "chocolatecake.jpg")

product3 = Product.create!(
      id: 3,
      genre_id: 3,
      name: "プリン６個セット",
      price: 1200,
      explanation: "地元で採れた新鮮な卵をたっプリン使用。なめらかな食感です。",
      is_active: true
)
product3.image.attach(io: File.open(Rails.root.join("app/assets/images/pudding.jpg")), filename: "pudding.jpg")
