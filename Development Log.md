# **Development Log** :open_book:

## **Monday - 20/04/2020**

* Came up with the idea for a Terminal App - Raid My Kitchen.
* Consult educators if the idea for a terminal app and its features can qualify for the assessment.
* Got confirmation from educators then started to lay the basics of the app.
* Started to fill the Trello board with Assessment requirements and its priority.
* Initialized git to the local directory then created a new repository in Github.
* Created the basic control flow of the app, display file and methods file.

## **Tuesday - 21/04/2020**

* Created separate files for the Dish and Recipe classes.
* Updated display file and methods file to implement one of the main features - *Raid My Kitchen! - Key Ingredient*.
* Populates the database with default Dish Class objects.
* Added a method that display Ingredients and Methods that waits for keypress before proceeding.
* Control flow for the second feature of the app: *Raid My Kitchen! - Cookting Time*
* Added a new feature *Recipes - Show All Recipes*
* Overhauls data structure to pass class objects instead of other data types.

## **Wednesday - 22/04/2020**

* Added a new feature - *Recipes - Add a new Recipe* and implemented all of its methods.
* Added a new feature - *Recipes - Delete a Recipe* and implemented all of its methods.
* Updated display and methods files for DRYer code.
* Added meaningful comments
* Implemented Previous Page options each level.
* Organised main file - init.rb
* Adds a **clear** method to clear the screen.
* Added a progress bar with colours when showing recipe instructions from [**TTY-progressbar**](https://github.com/piotrmurach/tty-progressbar) ruby gem.
* Added a ruby gem [**TTY-Box**](https://github.com/piotrmurach/tty-box) to box ingredients when shown.
* Set up a welcome page and banner for the app.
* Initialized bundler gem then bundles gems used.

## **Thursday - 23/04/2020**

* Created another file named errors to handle errors on cooktime input
* updated the errors file to handle error from Add Dish feature

### **Terminal App Halfway through Completion**
Its been four days since I started working on this app. The logic of the app is there and its key features however, these features have not been tested yet. Moving forward, I need a test file to test atleast two key features of the app, some cosmetics adjustments, warm welcome and exit messages, accept command line arguments, turn the app to an executable and last but not the least, finalised the documentation.

## **Friday - 24/04/2020**

* Added a **Serve and Enjoy!** message at the end of each recipes.


## **Saturday - 25/04/2020**

* Added a test file and tests two key features of the app - Add a dish and Delete a dish.
* Added an optional feature to show the Ingredients and Methods of a valid dish given as a command line argument as long the dish is in the database. If no arguments were given or the dish given is invalid, the app would run its normal course.
* Initial entry to the Software Development Plan
* Updated add and delete recipe features with confirmation messages.

## **Sunday - 26/04/2020**

* Continued working on the README.md file and the Development Log.md
* Tried to make init.rb executable but failed to do so, decided to wait until Monday to ask an educator.
* Adds a exception class to handle duplicate error when adding a new dish.
* Finalized the Manual Tests Spreadsheet and uploaded to the README.md file.