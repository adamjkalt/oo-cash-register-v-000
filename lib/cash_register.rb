
require "pry"
class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity, :last_item

def initialize(discount = 0)
  @discount = discount
  @total = 0
  @item_list = []
end

def add_item(title, price, quantity = 1)
    item_info = {}
    item_info[:title] = title
    item_info[:price] = price
    item_info[:quantity] = quantity
    quantity.times do
      @item_list << title
    end
    @total += price * quantity
  end

def apply_discount
  if @discount == 0
      return "There is no discount to apply."
    end
    @total -= @total * @discount / 100
    return "After the discount, the total comes to $#{@total}."
end

def items
  @item_list
  end

def void_last_transaction
  binding.pry
  #@total -= @total * @discount / 100
end

end
