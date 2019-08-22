require 'pry'
class CashRegister
  attr_accessor :total, :employee_discount, :items

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
end
