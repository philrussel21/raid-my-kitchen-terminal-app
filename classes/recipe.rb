
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
    self
  end

  def delete_dish(dish_name) #dish_name should be the object.name
    @all_recipes.delete(dish_name)
    @recipe_name_and_meats.delete(dish_name)
    @recipe_name_and_cooktime.delete(dish_name)
    self
  end
  
end