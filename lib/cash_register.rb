class CashRegister

  attr_accessor :total, :discount

  def initialize(:discount = false)
    @total = 0
    if discount == true
      apply_discount
    else
      puts "There is no discount to apply."
    end
  end

  def discount
    emp_discount = 20
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    @total = (@total * (100 - discount) *0.01).to_int
    return "After the discount, the total comes to $#{@total}."
  end

end
