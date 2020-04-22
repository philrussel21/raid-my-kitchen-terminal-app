#! usr/bin/env ruby

require 'tty-prompt'
require_relative 'methods'
require_relative "display"
#keypress for prompt good when showing method in the recipe
#multiline for prompt good when inputting method
#yes or no for confirmation
#suggest from prompt

#initialize database of recipe
$default_recipe.add_dish(ChickenParmigiana.new)
$default_recipe.add_dish(BbqChickenSkewers.new)
$default_recipe.add_dish(SpaghettiMeatballs.new)
$default_recipe.add_dish(TunaPastaSalad.new)
$default_recipe.add_dish(SpaghettiBolognese.new)
$default_recipe.add_dish(VeganBolognese.new)

#Welcome message here
puts "Lorem ipsum"
def main
app_running = true
  while app_running do
    #show the options on level 1
    response = display_options
    case response
      when 1
        #show options on level 2 option 1
        rmk = display_raid_my_kitchen_options
        if rmk == 1 #search by ingredients
          search_by_meat##Cosmetics
          ##TODO go back or quit option
        elsif rmk == 2 #search by cooking time
          print "Please provide cooking time desired: "
          ##TODO Error here if given time is not in the data base
          cooking_time = gets.chomp.to_i
          search_by_cooking_time(cooking_time) ##TODO
        end
      when 2
        #show options on level 2 option 2
        #const_set for setting a new class?
        recipe = display_recipe_options
        #Show all recipe 1
        if recipe == 1
          display_all_recipes
        elsif recipe == 2
          ##TODO - Add - Cosmetics
          new_recipe_prompts #returns a hash
        elsif recipe == 3
          ##TODO - Delete - ##HERE
          delete_recipe_prompts
        end
      else
        return #Exit Message #TODO
    end
  end
end





main