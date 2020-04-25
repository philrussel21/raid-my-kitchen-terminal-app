# **Raid my Kitchen! Terminal App**
by Phil Antiporda

## **Software Development Plan**


### **Statement of Purpose and Scope**
We've heard of famous chefs all over the world with their cutting edge ideas and amazing recipes but have you ever heard of a chef that would come up with a tasty dish just by simply providing your main ingredient(meat base) or by telling your ideal cooking and prepping time?

Say no more. The *Raid My Kitchen!* is a MVP app that outputs complete recipes to its users by simply providing your main ingredient or your ideal cooking and prepping time. Yes, it is that simple. Its the app that every kitchen should have. Your very own cookbook without the worry of water damaging or staining the pages.

#### **The Problem**

**Overchoice** or **choice overload** is a cognitive process which people have a difficult time making a decision when faced with many options.(https://en.wikipedia.org/wiki/Overchoice). You may think that having options is a good thing, but as it turns out, its not always the case. The *Raid My Kitchen!* app totally solves this problem. It contains only the best dishes and recipes. It further takes away the worry of the user by only suggesting the recipes simply after choosing the main ingredient(meat).

Another key feature of this app is to suggest recipes that can be made within the user given time frame(minutes). After all, when life gets in the way, sometimes we only have a few minutes to prepare and cook food, but that necessarily means it should not be delicious.

#### **Why Develop this app**

I have decided to develop this app to address this need. The need to come up with nothing but the best recipes by simply providing the main ingredient or the time frame without compromising the taste of the food.

#### **Target Audience**

The target audience of this app is *everyone that wants to cook good food*, specially people who cannot decide what to have on a certain time of the day. This app is also recommended for the individuals that are in charge of preparation of the food in a household and people that are living alone who needs cooking ideas.

It is a common problem for people living alone and individuals that are in charge of preparation of the food in a household to run out of ideas for a meal. This app is so flexible that it would almost always have a new idea for a meal. In addition to sorting the recipe from the main ingredient and cooking time, it has an __*Add a recipe*__ and a __*Delete a recipe*__ feature that would assure the app is always full of fresh new ideas and better ways of cooking.

### Features :bulb:

#### **Raid My Kitchen! Features**
##### **Feature 1 - _Raid My Kitchen! - Key Ingredient_**

This feature is one of the main features of the app. This feature gathers all the Key Ingredient(meat) of each recipe then shows it to the user. The user would then make a selection on the key ingredient of their choice. The app would then suggest every name of the dish in its database that has the chosen key ingredient. When the user makes the selection, the app would show the full ingredients, then shows each method to make the delicious dish.

##### **Feature 2 - _Raid My Kitchen! - Cooking Time_**

This is also one the main features of the app. This feature shows the user each recipe that can be made within the time frame given by the user. It would start by asking the user for an input as to what their ideal prepping and cooking time is in minutes then the app would suggest recipes that can be made in or in less than the time specified. **NOTE** This feature would prompt the user for another input if the time specified does not match any recipe or if the input is invalid(ie. letters and zero).

Once the user makes a recipe selection of their choice, the app would show the full ingredients, then shows each method to make the delicious dish.

### **Recipes Features**
##### **Feature 3 - _Recipes - Show All Recipes_**

This feature shows all the available recipes in the database. Once the user makes a recipe selection of their choice, the app would show the full ingredients, then shows each method to make the delicious dish.

##### **Feature 4 - _Recipes - Add a Recipe_**

This feature would let the user update the database by adding a recipe. It starts off by asking the dish name, dish meat, dish prepping and cooking time then proceeds to ask for the full ingredients and full methods into making this delicious dish. After all of that, a confirmation message containing the newly added recipe would appear and the recipe would then be available to view and use.

**NOTE** This feature will not accept invalid (ie. letters and zero) prepping and cooking time and dishes that only has one ingredient and one method.

#### **Feature 5 - _Recipes - Delete a Recipe_**

This feature would let the user remove the recipe from the database. The whole list of the recipe available in the app would be shown to the user. Once the user makes the selection, the app would require a Y or N from the user to confirm deletion. The app would then print out a confirmation message consisting of the deleted recipe.

**NOTE** The confirmation question would only accept y for YES and n for NO to proceed.

### **Optional Feature**

The user can directly request for the Ingredients and Methods of a dish provided the recipe is in the database by simply passing the dish name as a command line argument.


### **User Interaction and Experience**

The app would normally begin with the app banner and prompts the user to press any key to continue. This would take the user to the main menu that asks "What would you like to do?". This section would give the user access to the app's 5 main features, namely:

* **Raid My Kitchen! - Key Ingredient**
    - From the Main Menu, proceed to *Raid My Kitchen!* option and choose *Key Ingredient*. This would bring up all the recipe's key ingredient. Make a key ingredient(meat) selection to proceed to the dish's name that has this key ingredient. When a dish's name is chosen, this would list the Ingredients and followed by the Methods to prepare the dish.

* **Raid My Kitchen! - Cooking Time**
    - From the Main Menu, proceed to *Raid My Kitchen* option and choose *Cooking Time*. The app would ask for user input of the desired cooking and prepping time in minutes. **NOTE** If the user provided invalid inputs (ie. letters and zero) and if the input does not match any recipe in the database, this would cause an error and the app would ask again and again until the input is valid. If successful, the app would list all the recipe that can be done within the time frame given. When a dish's name is chosen, this would list the Ingredients and followed by the Methods to prepare the dish.

* **Show All Recipe**
    - From the Main Menu, proceed to *Recipes* option and choose *Show All Recipes*. This would list all the recipe available to the user. When a dish's name is chosen, this would list the Ingredients and followed by the Methods to prepare the dish.

* **Add a Recipe**
    - From the Main Menu, proceed to *Recipes* option and choose *Add a Recipe*. The feature would start to prompt for user input. Dish name, meat, prep and cook time, full ingredients and full methods of the dish would be asked. A confirmation message containing the newly added dish would then be displayed to confirm the update of the recipe database. The app will prompt for a keypress to return to Main Menu.

    **NOTE** The prep and cook time will not accept invalid (ie. letters and zero) inputs. Ingredients and Methods should also be more than one, otherwise the app would take you to the start of the *Add a Recipe* feature.

* Delete a Recipe
    - From the Main Menu, proceed to *Recipes* option and choose *Delete a Recipe*. This would list all the available recipe in the database. Once the user makes a selection, a confirmation question would be prompt via a y(yes) or n(no) question. A confirmation message containing the deleted dish would then be displayed to confirm the deletion of the recipe from the database. The app will prompt for a keypress to return to Main Menu.

    **NOTE** The confirmation question would only accept y or n as an answer.