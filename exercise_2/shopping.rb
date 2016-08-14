require_relative 'item'
require_relative 'receipt'

item_array = []

while true do
  puts "Enter an item or type 'quit' to generate receipt:"
  item = gets.chomp
  break if item.include?('quit')
  puts "Enter quantity:"
  quantity = gets.chomp
  puts "Enter item price:"
  price = gets.chomp
  puts "Enter item category:"
  category = gets.chomp
  hash = { :quantity => quantity, :desc => item, :price => price, :category => category }
  # @collection = item_array[0][:desc]
  item_array << Item.new(hash)
end

r = Receipt.new(item_array)
r.generate_receipt
