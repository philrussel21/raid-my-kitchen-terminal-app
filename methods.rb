#methods for init.rb

require_relative 'display'
require_relative 'classes/dish'
require_relative 'classes/recipe'

def search_by_meat(meat)
  choices_by_meat = Dish.dish_names_and_meats.filter{|k,v|v == meat}.keys
  choice = $prompt.select('All recipes with given meat:', choices_by_meat)
  choice = 'Recipe::' + choice.split.join + '::METHOD'
  recipe_steps = Object.const_get choice
  recipe_steps.length.times{|i|puts "[#{i+1}] #{recipe_steps[i]}"}
  ##TODO press any key to continue
end


def display_by_cooking_time(cooking_time)
  #TODO
end
