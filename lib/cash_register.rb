require 'pry'
class CashRegister
  attr_accessor :total, :employee_discount, :items, :previous_transaction_amount

  def initialize(employee_discount = nil)
    @total = 0.00
    @employee_discount = employee_discount
    @items = []
  end

  def discount
    self.employee_discount
  end

  def items
    @items
  end

  def add_item(title, price, quantity = 1)
    @previous_transaction_amount = (price * quantity)
    self.total += price * quantity
    quantity.times do
      items << title
    end
  end

  def apply_discount
    if @employee_discount === 0.0
      "There is no discount to apply."
    else
      @total = @total * (1 - @employee_discount / 100)
      "After the discount, the total comes to $#{@total}"
    end
  end

  def void_last_transaction

    @total -= @previous_transaction_amount
  end
end
