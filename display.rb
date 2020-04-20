##methods that outputs options and selection for the user

$prompt = TTY::Prompt.new

def show_options
  #message here
  $prompt.select('What would you like to do?') do |menu|
    menu.choice 'Raid my Kitchen!', 1
    menu.choice 'Recipes', 2
    menu.choice 'Exit', 0
  end
end

def show_raid_my_kitchen_options
  #message here
  $prompt.select("Please select a category:") do |menu|
    menu.choice 'Ingredients', 1
    menu.choice 'Cooking Time', 2
    menu.choice 'Previous page', 0
  end
end

def show_recipe_options
  #message here
  $prompt.select("Please select a category:") do |menu|
    menu.choice 'Add a Recipe', 1
    menu.choice 'Edit a Recipe', 2
    menu.choice 'Delete a Recipe', 3
    menu.choice 'Previous page', 0
  end
end

    
