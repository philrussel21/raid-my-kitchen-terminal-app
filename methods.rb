#methods for init.rb

require_relative 'classes/dish_database'
require_relative 'classes/recipe'
require_relative 'display'


def search_by_meat(meat)
  choices_by_meat = Dish.dish_names_and_meats.filter{|k,v|v == meat}.keys
  choice = $prompt.select('All recipes with given meat:', choices_by_meat)
  choice = 'Recipe::' + choice.split.join
  ingredients = Object.const_get (choice + '::INGREDIENTS')
  ingredients.each{|ing| puts ing}
  $prompt.keypress("Press any key to continue with the recipe steps") ##TO EDIT
  recipe_steps = Object.const_get (choice + '::METHOD')
  recipe_steps.length.times{|i|puts "[#{i+1}] #{recipe_steps[i]}"}
  ##TODO press any key to continue
end


def display_by_cooking_time(cooking_time)
  #TODO
end
