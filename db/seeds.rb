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
Item.create(item_name: "いちごショートケーキ",without_tax: 400, dess_item: "高級イチゴを使った超高級ショートケーキ",genre_id: 1)
Item.create(item_name: "モンブランケーキ",without_tax: 500, dess_item: "大粒のモンブランケーキ",genre_id: 1)
Item.create(item_name: "フルーツミックス",without_tax: 600, dess_item: "長野県産の有名フルーツ盛り合わせケーキ",genre_id: 1)
Item.create(item_name: "ショコラ",without_tax: 400, dess_item: "大人に人気ショコラ",genre_id: 1)
Item.create(item_name: "ハーフショートケーキ",without_tax: 220, dess_item: "ミニサイズショートケーキ",genre_id: 1)
Item.create(item_name: "ルイティーナ",without_tax: 1100, dess_item: "高級ホイップケーキ",genre_id: 1)
Item.create(item_name: "杏子ケーキ",without_tax: 400, dess_item: "甘酸っぱいケーキ",genre_id: 1)
Item.create(item_name: "プリディッシュ",without_tax: 1100, dess_item: "海外で人気の高級ケーキ",genre_id: 1)
Item.create(item_name: "チーズケーキ",without_tax: 400, dess_item: "定番チーズケーキ",genre_id: 1)


Item.create(item_name: "キャラメルプリン",without_tax: 380, dess_item: "甘さ濃いめのプリン",genre_id: 2)
Item.create(item_name: "杏子プリン",without_tax: 300, dess_item: "杏子を入れたプリン",genre_id: 2)
Item.create(item_name: "フルーツプリン",without_tax: 380, dess_item: "フルーツミックスプリン",genre_id: 2)
Item.create(item_name: "豆乳プリン",without_tax: 480, dess_item: "豆乳で作ったプリン",genre_id: 2)
Item.create(item_name: "抹茶プリン",without_tax: 500, dess_item: "いい香りのする大人のプリン",genre_id: 2)
Item.create(item_name: "ハーフプリン",without_tax: 100, dess_item: "ミニサイズプリン",genre_id: 2)
Item.create(item_name: "イチゴプリン",without_tax: 200, dess_item: "イチゴをつ潰したプリン",genre_id: 2)
Item.create(item_name: "クイーンプリン",without_tax: 1180, dess_item: "天国のようなおいしさ超高級なプリン",genre_id: 2)

Item.create(item_name: "チョコクッキー",without_tax:50,dess_item:"元祖チョコクッキー",genre_id: 3)
Item.create(item_name: "アーモンドクッキー",without_tax:50,dess_item:"アーモンド香るクッキー",genre_id: 3)
Item.create(item_name: "ココナッツクッキー",without_tax:50,dess_item:"食べやすいクッキー",genre_id: 3)
Item.create(item_name: "抹茶チョコクッキー",without_tax:50,dess_item:"抹茶とチョコを合わせたクッキー",genre_id: 3)
Item.create(item_name: "コーヒークッキー",without_tax:40,dess_item:"ちょい苦め大人クッキー",genre_id: 3)
Item.create(item_name: "ラフランジェ",without_tax:200,dess_item:"高級チョコクッキー",genre_id: 3)
Item.create(item_name: "ホワイトチョコクッキー",without_tax:60,dess_item:"ホワイトチョコ好きにたまらない",genre_id: 3)
Item.create(item_name: "ピーナッツクッキー",without_tax:60,dess_item:"中まではまる新触感クッキー",genre_id: 3)
Item.create(item_name: "クッキー詰め合わせ",without_tax:500,dess_item:"買ってからのお楽しみチョコ詰め合わせ",genre_id: 3)

Item.create(item_name: "greapul",without_tax:20,dess_item:"果肉入りキャンディー",genre_id: 4)
Item.create(item_name: "梅子",without_tax:20,dess_item:"甘酸っぱい飴",genre_id: 4)
Item.create(item_name: "リンゴ飴",without_tax:20,dess_item:"定番中の定番人気の飴",genre_id: 4)
Item.create(item_name: "キャラキャンディー",without_tax:20,dess_item:"買ってからのお楽しみ、キャラ缶",genre_id: 4)
Item.create(item_name: "レモンキャンディー",without_tax:20,dess_item:"レモン味キャンディー",genre_id: 4)
Item.create(item_name: "ブルーハワイキャンディー",without_tax:20,dess_item:"さわやかキャンディー",genre_id: 4)
Item.create(item_name: "フルーツキャンディー",without_tax:20,dess_item:"フルーツミックス味",genre_id: 4)
Item.create(item_name: "みるくキャンディー",without_tax:20,dess_item:"みんな大好きおいしい飴",genre_id: 4)
Item.create(item_name: "キャンディーセット",without_tax:300,dess_item:"キャンディー詰め合わせ",genre_id: 4)