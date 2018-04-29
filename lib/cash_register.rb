
require "pry"
class CashRegister

attr_accessor :total, :discount, :title, :price, :quantity, :cart

def initialize(discount = 0)
  @discount = discount
  @total = 0
  @cart = []
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
  @cart
  end

def void_last_transaction
  #@total -= @total * @discount / 100
end

end
