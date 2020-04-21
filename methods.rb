#methods for init.rb

require_relative 'classes/dish_database'
require_relative 'classes/recipe'
require_relative 'display'


def search_by_meat(meat) #TODO Cosmetics
  choices_by_meat = Dish.dish_names_and_meats.filter{|k,v|v == meat}.keys
  choice = 'Recipe::' + display_choices(choices_by_meat).split.join
  display_ing_and_method(choice)
end


def search_by_cooking_time(cooking_time)
  choices_by_cooktime = Dish.dish_names_and_cook_time.filter{|k,v|(cooking_time..(cooking_time+ 5)).cover?(v)}.keys
  choice = 'Recipe::' + display_choices(choices_by_cooktime).split.join
  display_ing_and_method(choice)
end

