##TODO

class Dish
  attr_accessor :name, :meat, :prep_and_cook_time
  # @@dish_names = Array.new for showing recipes
  @@dish_names_and_meats = Hash.new(0)
  def initialize(name,meat,prep_and_cook_time)
    @name = name
    # @@dishes << @name for showing recipe
    @meat = meat
    @@dish_names_and_meats[@name] = @meat
    #throw error if already in the database
    @prep_and_cook_time = prep_and_cook_time
  end

  # def self.dishes for showing recipe
  #   @@dishes
  # end

  def self.dish_names_and_meats
    @@dish_names_and_meats
  end
end

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


# class 
