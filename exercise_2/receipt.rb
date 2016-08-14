require_relative 'item'

class Receipt
  def initialize(item_array)
    @item_array = item_array
    @total = 0
  end

  def generate_receipt
    total_taxes = 0
    @item_array.each do |i|
      sales_tax = 0
      import_tax = 0
      if i.tax_exempt == false
        item_tax = (((i.price.to_f * 10.0) / 100.0) * 20).ceil.to_f / 20
        total_taxes += item_tax
      end
      if i.imported == true
        import_tax = (((i.price.to_f * 5.0) / 100.0) * 20).ceil.to_f / 20
        total_taxes += import_tax
      end

  end

end
