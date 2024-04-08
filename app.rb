require_relative 'product.rb'
require_relative 'market.rb'

values = []

product_01 = Product.new
product_01.name = 'Maçã Kg'
product_01.price = 11.99
values.push(product_01.price)

product_02 = Product.new
product_02.name = 'Alcatra Bovina Resfriada Kg'
product_02.price = 45.99
values.push(product_02.price)

product_03 = Product.new
product_03.name = 'Banana Prata Kg'
product_03.price = 16.99
values.push(product_03.price)

Market.new(product_01.name, product_01.price).buy
Market.new(product_02.name, product_02.price).buy
Market.new(product_03.name, product_03.price).buy

sum = 0
(0..values.length).each do |i|
  sum += values[i].to_f
end

sum = format('%.2f', sum)

puts "O total da sua compra é R$#{sum}."

