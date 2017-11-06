# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


#Create List of 5 categories
# Category.create(name: 'Home Decor', description: 'Home Decor items', tag: 'HomeDecor')
# Category.create(name: 'Electronics', description: 'Electronics items', tag: 'Electronics')
# Category.create(name: 'Gifts', description: 'Birthday Gifts items', tag: 'Gifts')
# Category.create(name: 'Sale', description: 'Items on Sale', tag: 'Sale')

#Create list of 10 products for each category
#Home Decor
# home_decor = Category.where(:name => 'Home Decor').first
# prod = home_decor.product.build(name: 'Pink Mug',
#                                 description:'Flamingo Pink Mug',
#                                 price: 19.90,
#                                 qty: 10)
#
# prod.save
#
# prod = home_decor.product.build(name: 'Harry Potter Mug',
#                                 description:'Harry Potter Mug',
#                                 price: 19.90,
#                                 qty: 10)
#
# prod.save
#
# prod = home_decor.product.build(name: 'Marvel Mug',
#                                 description:'Marvel Mug',
#                                 price: 19.90,
#                                 qty: 10)
#
# prod.save
#Electronics
#  electronics = Category.where(:name => 'Electronics').first
#  prod = electronics.product.build(name: 'Amplifier Bluetooth',
#                                  description:'Amplifier Bluetooth Black Cat',
#                                  price: 89.90,
#                                  qty: 40)
# prod.save
# 
# prod = electronics.product.build(name: 'Shower Amplifier Bluetooth',
#                                 description:'Shower Amplifier Bluetooth',
#                                 price: 69.90,
#                                 qty: 20)
# prod.save
#
# prod = electronics.product.build(name: 'Tower Amplifier Bluetooth',
#                                 description:'Tower Black Amplifier Bluetooth',
#                                 price: 69.90,
#                                 qty: 20)
# prod.save
