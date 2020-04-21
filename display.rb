##methods that outputs options and selection for the user
##TODO Cosmetics

$prompt = TTY::Prompt.new

def display_options
  #message here
  $prompt.select('What would you like to do?') do |menu|
    menu.choice 'Raid my Kitchen!', 1
    menu.choice 'Recipes', 2
    menu.choice 'Exit', 0
  end
end

def display_raid_my_kitchen_options
  #message here
  $prompt.select("Please select a category:") do |menu|
    menu.choice 'Key Ingredient', 1
    menu.choice 'Cooking Time', 2
    menu.choice 'Previous page', 0
  end
end

def display_recipe_options
  #message here
  $prompt.select("Please select a category:") do |menu|
    menu.choice 'Add a Recipe', 1
    menu.choice 'Edit a Recipe', 2
    menu.choice 'Delete a Recipe', 3
    menu.choice 'Previous page', 0
  end
end

def display_all_meat #*meat
  #TODO #HERE
  meat_choices = Dish.dish_names_and_meats.values
  choice = $prompt.select('What meat?', meat_choices.uniq)
end

def display_choices(array)
  choice = $prompt.select('All recipes with given choices:', array)
end

def display_ing_and_method(choice)
  ingredients = Object.const_get (choice + '::INGREDIENTS')
  ingredients.each{|ing| puts ing}
  $prompt.keypress("Press any key to continue with the recipe steps") ##TO EDIT
  recipe_steps = Object.const_get (choice + '::METHOD')
  recipe_steps.length.times{|i|puts "[#{i+1}] #{recipe_steps[i]}";$prompt.keypress("Press any key for the next step")}
end
