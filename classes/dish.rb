##TODO

require_relative 'recipe'
module DishFormat
  class Dish
    attr_accessor :name, :meat, :prep_and_cook_time

    def initialize(name,meat,prep_and_cook_time)
      @name = name
      @meat = meat
      @prep_and_cook_time = prep_and_cook_time
    end
      
    #throw error if already in the database
    # @@dishes << @name for showing recipe
    # def self.dishes for showing recipe
    #   @@dishes
    # end
  end

  class NewDish < Dish
    attr_reader :ingredients, :method
    def ingredients=(list_of_ingredients)
      @ingredients = list_of_ingredients
    end

    def method=(list_of_methods)
      @method = list_of_methods
    end
  end

end
