class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand }
      # @sodas.index(soda_brand)
      # @sodas.select {soda_brand}
  end

  def sell(soda_brand)
    selled_soda = find_soda(soda_brand) # object, instance of soda class
    if selled_soda == nil
      return nil
    end
    @sodas.delete(selled_soda)
    @cash += selled_soda.price
  end

end


# [#<Soda:0x007fc029a05aa0 @brand="Pepsi", @price=0.65>, #<Soda:0x007fc029a059d8 @brand="Mountain Dew", @price=0.75>, #<Soda:0x007fc029a058c0 @brand="Coke Zero", @price=1.0>, #<Soda:0x007fc029a056e0 @brand="Pepsi", @price=0.65>]