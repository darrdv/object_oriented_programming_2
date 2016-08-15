class Item
  attr_reader :tax_exempt, :imported, :price, :desc, :quantity, :category

  #def initialize(item[:quantity], item[:desc], item[:price], item[:category])
  #  @quantity = item[:quantity]
  #  @desc = item[:desc]
  #  @price = item[:price]
  #  @category = item[:category]
  #end

  def initialize(quantity, desc, price, category)
    @quantity = quantity
    @desc = desc
    @price = price
    @category = category

    if desc.include?("imported")
      @imported = true
    else
      @imported = false
    end
  end

  def tax_exempt
    case @category
      when "books" then return true
      when "food" then return true
      when "medical" then return true
    else return false
    end
  end

end
