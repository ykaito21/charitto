# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Campaign.destroy_all
Organization.destroy_all
User.destroy_all

puts 'Creating users...'
sato = User.create!(email: "sato@example.com",
  password: "password")
jiro = User.create!(email: "jiro@example.com",
  password: "password")

puts 'Creating organizations...'
restaurant_sato = Organization.create!(name: 'レストラン佐藤', user: sato)
npo_jiro = Organization.create!(name: 'ＮＰＯ次郎', user: jiro)

puts 'Creating campaigns...'
Campaign.create!(sku: 'campaign_1', name: 'ビール券', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535255430/pixta_16804929_M.jpg', price: 500, organization: restaurant_sato)
Campaign.create!(sku: 'campaign_2', name: '１０００円食事券', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535255263/eb9bd487c6135d7a01b8484d556a248f.png', price: 1000, organization: restaurant_sato)
Campaign.create!(sku: 'campaign_3', name: '２００円寄付', image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535255307/E5_AF_84_E4_BB_98_E9_87_91_E6_8E_A7_E9_99_A4_E7_AD_89__E9_A0_98_E5_8F_8E_E8_A8_BC.jpg', price: 200, organization: npo_jiro)
puts 'Finished!'
