#! usr/bin/env ruby

require 'tty-prompt'
require_relative 'display'
require_relative "methods"
#keypress for prompt good when showing method in the recipe
#multiline for prompt good when inputting method
#yes or no for confirmation
#suggest from prompt


#Welcome message here
puts "Lorem ipsum"
def main
app_running = true
  while app_running do
    #show the options on level 1
    response = show_options
    case response
      when 1
        #show options on level 2 option 1
        rmk = show_raid_my_kitchen_options
        if rmk == 1
          meat = gets.chomp ##should be an object??
          search_by_meat(meat) ##TODO
        elsif rmk == 2
          cooking_time = gets.chomp.to_i
          search_by_cooking_time(cooking_time) ##TODO
        end
      when 2
        #show options on level 2 option 2
        recipe = show_recipe_options
      else
        return #Exit Message #TODO
    end
  end
end





main