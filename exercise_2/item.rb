class Item
  #attr_reader:imported

  def initialize(item)
    @quantity = item[:quantity]
    @desc = item[:desc]
    @price = item[:price]
    @category = item[:category]
  end

  if @desc.include?("imported")
      @imported = true
  else
      @imported = false
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
