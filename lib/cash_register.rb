class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end
  
  def apply_discount
    @total -= @total * (discount/100.to_f)
    if discount == 0
      puts "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
end