# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Manufacture.create! name: "Aエレクトリック"
%w(レコーダー イヤホン マイク Webカメラ).each do |name|
  random = [*1..5].sample  # 1-5からランダム値を取得
  a.products.create! name: name, price: random * 1000, released_on: random.day.ago
end

b = Manufacture.create! name: "B工業"
%w(洗濯機 冷蔵庫 エアコン).each do |name|
  random = [*1..5].sample  # 1-5からランダム値を取得
  b.products.create! name: name, price: random * 10000, released_on: random.day.ago
end

c = Manufacture.create! name: "C電器"
%w(ノートPC 40型TV デジタルカメラ).each do |name|
  random = [*1..5].sample  # 1-5からランダム値を取得
  c.products.create! name: name, price: random * 10000, released_on: random.day.ago
end
