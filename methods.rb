#methods for init.rb

require_relative 'classes/dish_database'
require_relative 'display'

#shows all the available meat type to the user with the option to select any of them
#filters the recipes shown to the user according to their meat selection
def search_by_meat #TODO Cosmetics
  choice_of_meat = display_choices('What meat would you like?',$default_recipe.recipe_name_and_meats.values.uniq)
  choices = $default_recipe.recipe_name_and_meats.filter{|k,v|v == choice_of_meat}.keys
  display_ing_and_method(display_choices("List of Dish that can be made from #{choice_of_meat} meat : ",choices))
end

#sorts the list of recipe to be shown by the given minutes. Only show dishes that can be made within the given minutes
def search_by_cooking_time(cooking_time)
  choices = $default_recipe.recipe_name_and_cooktime.filter{|k,v|v <= cooking_time}.keys ##CATCH ERROR HERE
  display_ing_and_method(display_choices("List of Dish that can be made in less than #{cooking_time} minutes : ",choices))
end

#method that adds a recipe to the flow of the app
def new_recipe_prompts
  print "Please provide the name of the dish: "
  new_dish_name = gets.chomp.capitalize
  print "Please provide the meat base of the dish: "
  new_dish_meat = gets.chomp.capitalize
  print "Please provide the approximate prepping and cooking time of the dish in minutes: "
  new_prep_and_cook_time = gets.chomp.to_i
  puts "Please list the all ingredients, press Return(Enter) to proceed to the next ingredient. Type 'end' to finish."
  new_dish_ingredients = Array.new
  while true do
    dish_ingredient = gets.chomp
    if dish_ingredient[0..2].downcase == 'end'
      break
    else
      new_dish_ingredients << dish_ingredient
      new_dish_ingredients.each{|ing|puts"";puts ing}
    end
  end
  puts "Please provide the instructions to make the dish, press Return(Enter) to proceed to the next step. Type 'end' to finish."
  new_dish_methods = Array.new
  while true do
    dish_method = gets.chomp
    if dish_method[0..2].downcase == 'end'
      break
    else
      new_dish_methods << dish_method
      new_dish_methods.each{|step|puts"";puts step}
    end
  end

  #creates a new object from DishFormat::NewDish from user input
  new_dish_object = 'DishFormat::NewDish'.split('::').inject(Object){|object,clazz|object.const_get clazz}
  new_dish = new_dish_object.new(new_dish_name,new_dish_meat,new_prep_and_cook_time)
  new_dish.ingredients = new_dish_ingredients
  new_dish.method = new_dish_methods

  $default_recipe.add_dish(new_dish) #Adds the dish to the local database
end

#method to delete a recipe
def delete_recipe_prompts
  choice = display_choices("Please select the recipe you wish to delete :",$default_recipe.all_recipes.keys)
  ##CONFIRMATION
  $default_recipe.delete_dish(choice)
  puts "#{choice} recipe has been successfully removed from the database"
end

def level_2_options
  recipe = display_recipe_options
  if recipe == 1 #Show all recipes
    display_all_recipes
  elsif recipe == 2
    ##TODO - Add - Cosmetics
    new_recipe_prompts #returns a hash
  elsif recipe == 3
    ##TODO - Delete
    delete_recipe_prompts
  end
end
