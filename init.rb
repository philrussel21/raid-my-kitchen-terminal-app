#! usr/bin/env ruby

require 'tty-prompt'
require 'tty-progressbar'
require 'pastel'

require_relative 'methods'
require_relative "display"
#keypress for prompt good when showing method in the recipe
#yes or no for confirmation
#suggest from prompt

#initialize database of recipe
$default_recipe = DefaultRecipe.new
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
        # #show options on level 2 option 1
        level_2_option_1
      when 2
        #show options on level 2 option 2
        level_2_option_2
      else
        clear
        return #Exit Message #TODO
    end
  end
end





main