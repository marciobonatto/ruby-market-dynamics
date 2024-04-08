class Market
  def initialize(name, price)
    @name = name
    @price = price
  end
  def buy
    puts "Você comprou o produto #{@name} no valor de R$#{@price}."
  end
end