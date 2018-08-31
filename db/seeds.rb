# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Order.destroy_all
Campaign.destroy_all
Organization.destroy_all
User.destroy_all

puts 'Creating users...'
starbucks = User.create!(email: "starbucks@example.com",
  password: "password")
hulu = User.create!(email: "hulu@example.com",
  password: "password")
donqui = User.create!(email: "donqui@example.com",
  password: "password")
uniqlo = User.create!(email: "uniqlo@example.com",
  password: "password")
konika = User.create!(email: "konika@example.com",
  password: "password")
ichiran = User.create!(email: "ichiran@example.com",
  password: "password")

puts 'Creating organizations...'
starbucks_o = Organization.create!(name: 'Starbucks Coffee Japan', user: starbucks)
hulu_o = Organization.create!(name: 'Hulu', user: hulu)
donqui_o = Organization.create!(name: 'ドン・キホーテグループ', user: donqui)
uniqlo_o = Organization.create!(name: 'UNIQLO', user: uniqlo)
konika_o = Organization.create!(name: 'コニカミノルタプラネタリウム', user: konika)
ichiran_o = Organization.create!(name: '一蘭', user: ichiran)

# sku = Array.new(3) { SecureRandom.urlsafe_base64 }

puts 'Creating campaigns...'
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドリンクチケット（500円）', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535703024/item_48.jpg', price: 500, organization: starbucks_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドリンクチケット（1000円）', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535703024/item_48.jpg', price: 1000, organization: starbucks_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'Huluチケット（1ヶ月）', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535705975/huluticket_1_640_re1.jpg', price: 1007, organization: hulu_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'Huluチケット（3ヶ月）', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706269/huluticket_3_640_re1.jpg', price: 1007, organization: hulu_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドン・キホーテグループmajicaギフト券', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706511/donqui_300.jpg', price: 300, organization: donqui_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドン・キホーテグループmajicaギフト券', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706526/donqui_500.jpg', price: 500, organization: donqui_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドン・キホーテグループmajicaギフト券', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706535/donqui_1000.jpg', price: 1000, organization: donqui_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドン・キホーテグループmajicaギフト券', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706518/donqui_3000.jpg', price: 3000, organization: donqui_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ユニクロギフトカード（1000円）', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535707312/170828-scene03.jpg', price: 1000, organization: uniqlo_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ユニクロギフトカード（3000円）', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535707312/170828-scene03.jpg', price: 3000, organization: uniqlo_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'シングル　プラネタリウムチケット', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535707835/kmp_single.jpg', price: 1700, organization: konika_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ペア　プラネタリウムチケット', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535707823/kmp_Pair.jpg', price: 3400, organization: konika_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ラーメン1杯', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535708154/menu-menu_main01.png', price: 890, organization: ichiran_o)

puts 'Finished!'
