class CashRegister

  attr_accessor :total, :discount

  def initialize(start = 0)
    @total = 0
    @discount = start
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    disc = (@discount/100.0)
    @total = @total - (@total*disc)
    if @discount == 0
      return "There is no discount to apply."
    else
      return "After the discount, the total comes to $#{@total.to_i}."
    end
    #  @total = (@total * (100 - discount) *0.01).to_int

    #  return "After the discount, the total comes to $#{@total}."
    #else
    #  return "There is no discount to apply."
    #end
  end

end
