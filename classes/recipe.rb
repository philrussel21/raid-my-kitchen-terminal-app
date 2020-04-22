
  class DefaultRecipe
    attr_reader :recipe_name_and_meats, :recipe_name_and_cooktime, :all_recipes
    def initialize
      @all_recipes = Hash.new(0)
      @recipe_name_and_meats = Hash.new(0)
      @recipe_name_and_cooktime = Hash.new(0)
    end

    def add_dish(dish) #dish should be an object
      @all_recipes[dish.name] = dish
      @recipe_name_and_meats[dish.name] = dish.meat
      @recipe_name_and_cooktime[dish.name] = dish.prep_and_cook_time
    end
  end
#get multiline input then split to store as an array
#when adding new recipe