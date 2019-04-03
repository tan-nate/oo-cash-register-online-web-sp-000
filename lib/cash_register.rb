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
    "After the discount, the total comes to $#{@total.to_i}."
    puts "There is no discount to apply." if @discount == 0
  end
end