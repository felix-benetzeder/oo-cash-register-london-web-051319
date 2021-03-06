require "pry"

class CashRegister

  attr_accessor :discount, :total
  attr_reader :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price, quantity=1)
    @total += price * quantity
    @last_transaction = price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * (100 - discount) / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
