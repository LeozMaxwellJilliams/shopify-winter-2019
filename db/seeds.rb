# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

test_shop_1 = Shop.create!(name: 'test shop 1')
test_shop_2 = Shop.create!(name: 'test shop 2')

joe = Customer.create!(name: 'Joe', email: 'joe@abc.com')
bob = Customer.create!(name: 'Bob', email: 'bob@cba.com')

milk = Product.create!(name: 'milk', price: 1.50, shop_id: test_shop_1.id)
oj = Product.create!(name: 'orange juice', price: 4.24, shop_id: test_shop_1.id)
bread = Product.create!(name: 'bread', price: 2.00, shop_id: test_shop_1.id)

paper = Product.create!(name: 'paper', price: 0.50, shop_id: test_shop_2.id)
notebook = Product.create!(name: 'notebook', price: 4.00, shop_id: test_shop_2.id)

order_1 = Order.create!(shop_id: test_shop_1.id, customer_id: joe.id)
order_2 = Order.create!(shop_id: test_shop_1.id, customer_id: bob.id)
order_3 = Order.create!(shop_id: test_shop_2.id, customer_id: joe.id)

LineItem.create!(quantity: 1, product_id: milk.id, order_id: order_1.id)
LineItem.create!(quantity: 2, product_id: oj.id, order_id: order_1.id)

LineItem.create!(quantity: 3, product_id: bread.id, order_id: order_2.id)

LineItem.create!(quantity: 10, product_id: paper.id, order_id: order_3.id)
LineItem.create!(quantity: 1, product_id: notebook.id, order_id: order_3.id)
