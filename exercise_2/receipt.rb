require_relative 'item'

class Receipt
  def initialize(item_array)
    @item_array = item_array
    @total = 0
    @total_tax = 0
  end

  def generate_receipt
    #total_tax = 0
    @item_array.each do |i|
      #tax_on_item = 0
      #import_tax = 0
      total_tax_on_item = 0

      if i.tax_exempt == false
        item_tax = (((i.price.to_f * 10.0) / 100.0) * 20).ceil.to_f / 20
        total_tax_on_item += item_tax
      end
      if i.imported == true
        import_tax = (((i.price.to_f * 5.0) / 100.0) * 20).ceil.to_f / 20
        total_tax_on_item += import_tax
      end

      item_plus_tax = i.price.to_f + total_tax_on_item
      @total_tax += total_tax_on_item
      @total += item_plus_tax
      puts "#{i.quantity} #{i.desc} : #{item_plus_tax.round(2)}"
    end

    puts "Sales Taxes: #{@total_tax.round(2)}"
    puts "Total : #{(@total).round(2)}"
  end
end
