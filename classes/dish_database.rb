
require_relative 'dish'

class ChickenParmigiana < Dish

  def initialize
    super('Chicken Parmigiana', "Chicken", 25)
  end
end

class BbqChickenSkewers < Dish

  def initialize
    super('Bbq Chicken Skewers', "Chicken", 20)
  end
end

class SpaghettiMeatballs < Dish

  def initialize
    super('Spaghetti Meatballs', "Pork", 15)
  end
end

class TunaPastaSalad < Dish

  def initialize
    super('Tuna Pasta Salad', "Tuna", 20)
  end
end

class SpaghettiBolognese < Dish

  def initialize
    super("Spaghetti Bolognese", "Beef", 20)
  end
end

class VeganBolognese < Dish

  def initialize
    super("Vegan Bolognese", "Vegan", 15)
  end
end
