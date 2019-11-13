class CashRegister

  attr_accessor :total

  def initialize(discount = false)
    @total = 0
  end

  def discount
    emp_discount = 20
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    @total *= ((100 - discount)/100))
  end

end
