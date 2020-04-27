
require "test-unit"
require_relative "../init"

class RaidMyKitchenAppTest < Test::Unit::TestCase
  ##atleast two features to be tested

  ##tests if the dish added is now in the database
  def test_add_recipe
    #creates a new object from DishFormat::NewDish from user input
    dish_name = "Scrambed Egg"
    dish_meat = "Egg"
    dish_cook_time = 5

    new_dish_object = 'DishFormat::NewDish'.split('::').inject(Object){|object,clazz|object.const_get clazz}
    new_dish = new_dish_object.new(dish_name,dish_meat,dish_cook_time)
    new_dish.ingredients = ['4 Eggs', '2 tbs of milk','1 tbs of butter','salt and pepper']
    new_dish.method = ['Crack eggs onto a bowl, mix the milk then add salt and pepper','Beat the mixture','Cook']
    $default_recipe.add_dish(new_dish) #Adds the dish to the local database

    #tests if the dish_name, dish_meat, and dish_cooktime has been added to the database.
    assert $default_recipe.all_recipes.include?(dish_name), "Expected 'true', #{dish_name} should have been added to the database."
    assert_equal($default_recipe.recipe_name_and_meats[dish_name], dish_meat)
    assert_equal($default_recipe.recipe_name_and_cooktime[dish_name], dish_cook_time)
  end

  #tests if the dish deleted is not in the database
  def test_delete_recipe
    del_dish = "Chicken Parmigiana"
    $default_recipe.delete_dish(del_dish)


    #tests if the dish_name, dish_meat and dish_cooktime has been taken off the database
    refute $default_recipe.all_recipes.include?(del_dish), "Expected 'false', #{del_dish} should have been deleted from the database."
    assert_not_include($default_recipe.recipe_name_and_meats.keys, del_dish)
    assert_not_include($default_recipe.recipe_name_and_cooktime.keys, del_dish)
  end

end