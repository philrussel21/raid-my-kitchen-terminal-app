##TODO Cosmetics

#creates a global variable that has the prompt object from TTY gem
$prompt = TTY::Prompt.new

#Level 1 Display
def display_options
  #message here
  $prompt.select('What would you like to do?') do |menu|
    menu.choice 'Raid my Kitchen!', 1
    menu.choice 'Recipes', 2
    menu.choice 'Exit', 0
  end
end

#Level 2 Option 1 Display
def display_raid_my_kitchen_options
  #message here
  $prompt.select("Please select a category:") do |menu|
    menu.choice 'Key Ingredient', 1
    menu.choice 'Cooking Time', 2
    menu.choice 'Previous page', 0
  end
end

#Display choices from the given array and the message from the message arg
def display_choices(message,array_of_choices)
  choice = $prompt.select(message, array_of_choices)
end

#Display the ingredients and methods of the selected Recipe to show
def display_ing_and_method(choice)
  puts ""
  $default_recipe.all_recipes[choice].ingredients.each{|ing| puts ing}
  puts ""
  $prompt.keypress("Press any key to continue with the recipe steps") ##TO EDIT
  puts ""
  $default_recipe.all_recipes[choice].method.length.times{|i|puts "[#{i+1}] #{$default_recipe.all_recipes[choice].method[i]}";puts"";$prompt.keypress("Press any key for the next step\n")}
  puts ""
end

#Level 2 Option 2 Display
def display_recipe_options
  #message here
  $prompt.select("Please select a category:") do |menu|
    menu.choice 'Show all the Recipes', 1
    menu.choice 'Add a Recipe', 2
    #edit a recipe?
    menu.choice 'Delete a Recipe', 3
    menu.choice 'Previous page', 0
  end
end

#Displays all the default recipe from the data base
def display_all_recipes
  array_of_choices = $default_recipe.all_recipes.keys << 'Previous Page'
  recipe_selection = display_choices('Raid my Kitchen! Recipes : ',array_of_choices)
  if recipe_selection == 'Previous Page'
    level_2_option_2
  else
    display_ing_and_method(recipe_selection)
  end
end
