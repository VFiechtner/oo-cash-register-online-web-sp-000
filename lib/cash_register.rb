require 'pry'

class CashRegister

  attr_accessor :total
  attr_reader :discount

  def initialize(discount =nil)
    @total = 0
    @discount = discount
    @@items = []
    @@totals = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @@items << title
    end
    @@totals << total
  end
  
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << items
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end
