# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Admin.create!(
    #email: 'test@test.com',
    #password: '123456',
#)

#Cutomer.Mdel(3)
Customer.create!(
  [
    {
        last_name: '菅田',
        first_name: '将暉',
        last_kana: 'スダ',
        first_kana: 'マサキ',
        email: 'i@i',
        zip: '3333333',
        address: '東京都渋谷区◯◯',
        phone_number: '3333333333',
        password: 'iiiiii',
    },
    {
        last_name: '石原',
        first_name: 'さとみ',
        last_kana: 'イシハラ',
        first_kana: 'サトミ',
        email: 'u@u',
        zip: '4444444',
        address: '東京都港区△△',
        phone_number: '4444444444',
        password: 'uuuuuu',
    },
    {
        last_name: '横浜',
        first_name: '流星',
        last_kana: 'ヨコハマ',
        first_kana: 'リュウセイ',
        email: 'e@e',
        zip: '5555555',
        address: '東京都港区□□',
        phone_number: '5555555555',
        password: 'eeeeee',
    }
  ]
)

# ジャンルseed
Genre.create!(
  [
    {
      name: 'ケーキ'
    },
    {
      name: '焼き菓子'
    },
    {
      name: 'プリン'
    }
  ]
)

# 配送先seed
Delivery.create!(
  [
    {
      customer_id: 1,
      name: "入間 埼玉",
      zip: "1234567",
      address: "埼玉県入間市三井アウトレットパーク",
    },
    {
      customer_id: 1,
      name: "秩父 埼玉",
      zip: "1234568",
      address: "埼玉県山崎ウイスキー蒸留所",
    }
  ]
)
