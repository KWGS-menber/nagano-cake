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

# # ジャンルseed
# Genre.create!(
#   [
#     {
#       name: 'ケーキ'
#     },
#     {
#       name: '焼き菓子'
#     },
#     {
#       name: 'プリン'
#     }
#   ]
# )

# 配送先seed
Delivery.create!(
  # [
  #   {
      customer_id: 1,
      name: "入間 埼玉",
      zip: "1234567",
      address: "埼玉県入間市三井アウトレットパーク",
  #   }
  #   {
  #     customer_id: 1,
  #     name: "秩父 埼玉",
  #     zip: 1234568,
  #     address: "埼玉県山崎ウイスキー蒸留所",
  #   }
  # ]
)