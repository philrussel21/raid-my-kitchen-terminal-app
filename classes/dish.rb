##TODO

class Dish
  attr_accessor :name, :meat
  @@dish_names_and_meats = Hash.new(0)
  @@dish_names_and_cook_time = Hash.new(0)
  @@dish_names = Array.new

  def initialize(name,meat,prep_and_cook_time)
    @name = name
    @@dish_names << @name
    @@dish_names_and_meats[@name] = meat
    @@dish_names_and_cook_time[@name] = prep_and_cook_time
  end
    
  #throw error if already in the database
  # @@dishes << @name for showing recipe
  # def self.dishes for showing recipe
  #   @@dishes
  # end

  def self.dish_names
    @@dish_names
  end

  def self.dish_names_and_meats
    @@dish_names_and_meats
  end

  def self.dish_names_and_cook_time
    @@dish_names_and_cook_time
  end
end

