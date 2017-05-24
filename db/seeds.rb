# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize Admin User
if User.find_by(email: "admin@test.com").nil?
  u = User.new
  u.email = "admin@test.com"           # 可以改成自己的 email
  u.password = "123456"                # 最少要六码
  u.password_confirmation = "123456"   # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end

Product.create!(title: "巧克力戚风",
  description: "丝滑绵软不甜腻",
  price: 98,
  quantity: 5,
  image: open("http://ww2.sinaimg.cn/large/006tNc79gy1ffr2bhbewdj305k05kaa3.jpg")
  )

Product.create!(title: "芒果千层",
  description: "甜甜爽口爱不停",
  price: 98,
  quantity: 5,
  image: open("http://ww4.sinaimg.cn/large/006tNc79gy1ffr2cxnbr0j30b40b4q3i.jpg")
  )
