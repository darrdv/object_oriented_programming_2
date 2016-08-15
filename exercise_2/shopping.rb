require_relative 'item'
require_relative 'receipt'

items_array = []

while true do
  item_array = []
  puts "Enter an item or type 'quit' to generate receipt:"
  item = gets.chomp
  break if item.include?('quit')
  puts "Enter quantity:"
  quantity = gets.chomp
  puts "Enter item price:"
  price = gets.chomp
  puts "Enter item category:"
  category = gets.chomp

  #hash = { :quantity => quantity, :desc => item, :price => price, :category => category }
  #item_array << Item.new(hash)

  items_array << Item.new(quantity, item, price, category)
end

r = Receipt.new(items_array)
r.generate_receipt
