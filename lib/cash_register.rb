class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = false)
    @total = 0
    return "There is no discount to apply."
  end

  def discount
    @discount = 20
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    #if @discount == 20
      @total = (@total * (100 - discount) *0.01).to_int
      return "After the discount, the total comes to $#{@total}."
    #else
    #  return "There is no discount to apply."
    #end
  end

end
