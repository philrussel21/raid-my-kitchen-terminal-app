##TODO Cosmetics

#creates a global variable that has the prompt object from TTY gem
$prompt = TTY::Prompt.new


#Display Intro
def app_intro
  puts $banner
  $prompt.keypress("                              Press any key to start the app")
  clear
  end

#Level 1 Display
def display_options
  #message here
  clear
  puts $banner
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
#choice is dish.name
def display_ing_and_method(choice)
  #creates a variables of colors from the pastel gem
  pastel = Pastel.new
  green = pastel.on_green(" ")
  red = pastel.on_red(" ")
  #creates a variable from the progressbar gem
  bar = TTY::ProgressBar.new("|:bar", width:20, incomplete: red, complete: green)
  puts ""

  #creates a box then puts the ingredients of the dish inside the box
  ### ARGUMENT ERROR IF ONLY 1 INGREDIENT is passed
  dish_ing = $default_recipe.all_recipes[choice].ingredients.join("\n")
  box = TTY::Box.frame(style: {
    fg: :black,
    bg: :white,
    border: {
      fg: :black,
      bg: :white
    }
    }, title: {top_left: "INGREDIENTS", bottom_right: "#{choice}"}) do
    dish_ing
  end
  puts box

  puts ""
  $prompt.keypress("Press any key to continue with the recipe steps") ##TO EDIT
  clear
  puts ""

  #creates a bar that tracks the progress of the dish
  shown = Array.new
  bar.iterate($default_recipe.all_recipes[choice].method.length.times) do |i|
    puts ""
    puts ""
    shown.each{|method| puts "[#{shown.index(method) + 1}] #{method}"}
    puts "[#{i+1}] #{$default_recipe.all_recipes[choice].method[i]}"
    shown << $default_recipe.all_recipes[choice].method[i]
    puts""
    $prompt.keypress("Press any key for the next step\n")
    clear
  end
  # $default_recipe.all_recipes[choice].method.length.times{|i|puts "[#{i+1}] #{$default_recipe.all_recipes[choice].method[i]}";puts"";$prompt.keypress("Press any key for the next step\n")}
  # puts ""
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
