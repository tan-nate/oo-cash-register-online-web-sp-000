require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    binding.pry
    @items << item
  end
  
  def apply_discount
    @total -= @total * (discount/100.to_f)
    if discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @items
  end
end