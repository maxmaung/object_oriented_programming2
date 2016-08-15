class Item

  def initialize(quantity, item, price,tax_type)
    @item = item
    @price = price #price of item
    @quantity = quantity #quantity of item
    @tax_type = tax_type
    @total_salestax = 0 # total sales_tax
    @final_amount = 0 # final amount including sales tax
  end

  def tax_type

      case @tax_type

      when "basic_tax"
        @total_salestax += @quantity * @price * 0.1
      when "imported_tax"
        @total_salestax += @quantity * @price * 0.15
      when "no_tax"
        @total_salestax = @quantity * @price
      when "import_no_tax"
        @total_salestax += @quantity * @price * 0.05
      else
        print "Invalid Item"
      return [@total_salestax, @price, @quantity, @item]
      end

  end


def final_amount

return @total_salestax + @quantity * @price

end

end

#_________________


class Receipt

def initialize # method to create a "container" for future items

  @all_items = [] #code that will add all items to an empty array

end

#_______

def add_item (item1) #the means/code to add 1 single item to the empty container

 @all_items << item1

end

#__________

def cal_total

  total = 0

  @all_items.each do |item| # this code will calculate total for each item in the container
    total = item.final_amount + total
    # puts total
  end

  return total
end


#__________
def output

puts cal_total



end
#_________

end

receipt1 = Receipt.new # creating a
item1 = Item.new(1, "Book", 12.49, "no_tax")
item2 = Item.new(1, "Music CD", 14.99, "basic_tax")
item3 = Item.new(1, "Chocolate Bar", 0.85, "no_tax")

receipt1.add_item(item1)
receipt1.add_item(item2)
receipt1.add_item(item3)
receipt1.output
