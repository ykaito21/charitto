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
starbucks_o = Organization.create!(name: 'Starbucks Coffee Japan',
                                   user: starbucks,
                                  description: '1971年、スターバックスはアメリカ北西部のシアトルにコーヒー豆の専門店として誕生しました。現在では世界各国の街角で一杯のコーヒーとともにくつろぎのひとときをご提供しています。',
                                  remote_org_image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535703015/243_starbucks_01.jpg')
hulu_o = Organization.create!(name: 'Hulu',
                              user: hulu,
                              description: 'Huluは40,000本以上の映画・ドラマ・アニメを楽しめるオンライン動画配信サービスです。月額933円（税抜）でいつでも、どこでも、全ての作品が見放題。',
                              remote_org_image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535705968/hulu_logo.jpg')
donqui_o = Organization.create!(name: 'ドン・キホーテグループ',
                                user: donqui,
                                description: '「コンビニエンス＋ディスカウント＋アミューズメント」の三位一体を店舗コンセプトとする総合ディ スカウントストアで、約4～6万点のアイテムを取り揃えています。',
                                remote_org_image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535987821/donqui_brand.jpg')
uniqlo_o = Organization.create!(name: 'UNIQLO',
                                user: uniqlo,
                                description: 'あらゆる人が良いカジュアルを着られるようにする株式会社ユニクロ。あなたにぴったりの1着が見つかる！',
                                remote_org_image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535987298/B9wQNv90_400x400.jpg')
konika_o = Organization.create!(name: 'コニカミノルタプラネタリウム',
                                user: konika,
                                description: '大切な人に星空を―コニカミノルタプラネタリウムは、リラクゼーションやエンターテイメントをお届けする、大人のためのプラネタリウム。',
                                remote_org_image_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535987222/kmp_logo.jpg')
ichiran_o = Organization.create!(name: '一蘭',
                                user: ichiran,
                                description: '一蘭は、世界一とんこつラーメンを研究する会社として、これからもお客様が満足してくださる“本場本物”のとんこつラーメンをご提供できるように、しっかりと味を守りながらも、進化し続けてまいります。',
                                remote_org_image_url:'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535986883/ichiran_logo.jpg')

# sku = Array.new(3) { SecureRandom.urlsafe_base64 }

puts 'Creating campaigns...'
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドリンクチケット（500円）', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535703024/item_48.jpg', price: 500, organization: starbucks_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドリンクチケット（1000円）', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535703024/item_48.jpg', price: 1000, organization: starbucks_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'Huluチケット（1ヶ月）', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535705975/huluticket_1_640_re1.jpg', price: 1007, organization: hulu_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'Huluチケット（3ヶ月）', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706269/huluticket_3_640_re1.jpg', price: 1007, organization: hulu_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドン・キホーテグループmajicaギフト券', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706511/donqui_300.jpg', price: 300, organization: donqui_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドン・キホーテグループmajicaギフト券', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706526/donqui_500.jpg', price: 500, organization: donqui_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドン・キホーテグループmajicaギフト券', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706535/donqui_1000.jpg', price: 1000, organization: donqui_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ドン・キホーテグループmajicaギフト券', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535706518/donqui_3000.jpg', price: 3000, organization: donqui_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ユニクロギフトカード（1000円）', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535707312/170828-scene03.jpg', price: 1000, organization: uniqlo_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ユニクロギフトカード（3000円）', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535707312/170828-scene03.jpg', price: 3000, organization: uniqlo_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'シングル　プラネタリウムチケット', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535707835/kmp_single.jpg', price: 1700, organization: konika_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ペア　プラネタリウムチケット', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535707823/kmp_Pair.jpg', price: 3400, organization: konika_o)
Campaign.create!(sku: SecureRandom.urlsafe_base64, name: 'ラーメン1杯', remote_image_url_url: 'http://res.cloudinary.com/dgugqcsvk/image/upload/v1535708154/menu-menu_main01.png', price: 890, organization: ichiran_o)

puts 'Finished!'
