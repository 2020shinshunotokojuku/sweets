# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email:'pp@oi', password:'iiiiii')

Genre.create(name: "ケーキ",is_valid: true)
Genre.create(name: "プリン" ,is_valid:true)
Genre.create(name: "焼き菓子", is_valid:true)
Genre.create(name: "キャンディ", is_valid:true)
Item.create(item_name: "いちごショートケーキ",without_tax: 600, dess_item: "高級イチゴを使った超高級ショートケーキ",genre_id: 1)
Item.create(item_name: "モンブランケーキ",without_tax: 500, dess_item: "長野県産の有名フルーツ盛り合わせケーキ",genre_id: 1)
Item.create(item_name: "フルーツミックス",without_tax: 700, dess_item: "大粒のモンブランケーキ",genre_id: 1)
Item.create(item_name: "米ケーキ",without_tax: 1100, dess_item: "米で作ったパウンドケーキ",genre_id: 1)
Item.create(item_name: "キャラメルプリン",without_tax: 480, dess_item: "甘さ濃いめのプリン",genre_id: 2)
Item.create(item_name: "杏子プリン",without_tax: 400, dess_item: "杏子を入れたプリン",genre_id: 2)
Item.create(item_name: "フルーツプリン",without_tax: 680, dess_item: "フルーツミックスプリン",genre_id: 2)
Item.create(item_name: "クイーンプリン",without_tax: 1180, dess_item: "高級なプリン",genre_id: 2)
Item.create(item_name: "チョコクッキー",without_tax:50,dess_item:"元祖チョコクッキー",genre_id: 3)
Item.create(item_name: "米クッキー",without_tax:80,dess_item:"米のおいしさをおしこめたクッキー",genre_id: 3)
Item.create(item_name: "アイスクッキー",without_tax:100,dess_item:"バニラアイスを使ったクッキー",genre_id: 3)
Item.create(item_name: "クッキー盛り合わせ",without_tax:300,dess_item:"チョコクッキー、クッキーサンド、チョコクッキー3枚ずつ盛り合わせお得",genre_id: 3)
Item.create(item_name: "greapul",without_tax:20,dess_item:"果肉入りキャンディー",genre_id: 4)
Item.create(item_name: "梅子",without_tax:20,dess_item:"甘酸っぱい飴",genre_id: 4)
Item.create(item_name: "リンゴ飴",without_tax:20,dess_item:"定番中の定番人気の飴",genre_id: 4)
Item.create(item_name: "キャンディーセット",without_tax:400,dess_item:"買ってからのお楽しみ、キャンディー詰め",genre_id: 4)