##TODO

class Dish
  attr_accessor :name, :meat
  @@dish_names_and_meats = Hash.new(0)
  @@dish_names_and_cook_time = Hash.new(0)
  def initialize(name,meat,prep_and_cook_time)
    @name = name
    @@dish_names_and_meats[@name] = meat
    @@dish_names_and_cook_time[@name] = prep_and_cook_time
  end
    
  #throw error if already in the database
  # @@dishes << @name for showing recipe
  # @@dish_names = Array.new for showing recipes

  # def self.dishes for showing recipe
  #   @@dishes
  # end

  def self.dish_names_and_meats
    @@dish_names_and_meats
  end

  def self.dish_names_and_cook_time
    @@dish_names_and_cook_time
  end
end

