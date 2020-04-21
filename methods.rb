#methods for init.rb

require_relative 'classes/dish_database'
require_relative 'display'


def search_by_meat(meat) #TODO Cosmetics
  choices = $default_recipe.recipe_name_and_meats.filter{|k,v|v == meat}.keys
  display_ing_and_method(display_choices(choices))
end


def search_by_cooking_time(cooking_time)
  choices = $default_recipe.recipe_name_and_cooktime.filter{|k,v|(cooking_time..(cooking_time+ 5)).cover?(v)}.keys
  display_ing_and_method(display_choices(choices))
end

def new_recipe_prompts
  print "Please provide the name of the dish: "
  new_dish_name = gets.chomp.capitalize
  print "Please provide the meat base of the dish: "
  new_dish_meat = gets.chomp.capitalize
  print "Please provide the approximate prepping and cooking time of the dish in minutes: "
  new_prep_and_cook_time = gets.chomp.to_i
  puts "Please list the all ingredients, press Return(Enter) to proceed to the next ingredient. Type 'end' to finish typing."
  ingredients = Array.new
  while true do
    new_ingredient = gets.chomp
    if new_ingredient[0..2].downcase == 'end'
      break
    else
      ingredients << new_ingredient
      ingredients.each{|ing|puts"";puts ing}
    end
  end
  puts "Please provide the instructions to make the dish, press Return(Enter) to proceed to the next ingredient. Type 'end' to finish typing"
  methods = Array.new
  while true do
    new_method = gets.chomp
    if new_method[0..2].downcase == 'end'
      break
    else
      methods << new_method
      methods.each{|step|puts"";puts step}
    end
  end
  new_dish = Hash.new(0)
  new_dish["name"] = new_dish_name
  new_dish["meat"] = new_dish_meat
  new_dish["prep_and_cook"] = new_prep_and_cook_time
  new_dish["ingredients"] = ingredients
  new_dish["methods"] = methods
  new_dish
end

# def add_dish(object)
#   if object.is_a?(Hash)
#     #do something
#   else
