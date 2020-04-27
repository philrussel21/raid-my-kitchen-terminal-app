
require_relative "dish"

class ChickenParmigiana < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Chicken Parmigiana", "Chicken", 25)
    @ingredients =  [
      "1pc of Chicken Schnitzel",
      "1 bottle of Parmigiana Sauce",
      "1 cup of Shredded Cheese"]
    @method = ["Preheat Oven to 200C. Line a baking tray with baking paper",
      "Place Shchnitzels on prepared tray and bake for 10 minutes
spread schitnel with 2 tbs parmigiana sauce, sprinkle with cheese
bake for a further 10 minutes, or until cheese is golden.",
      "(Optional)Prepare side. (salad, rice, chips)"]
  end


end

class BbqChickenSkewers < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Bbq Chicken Skewers", "Chicken", 20)
    @ingredients = [
      "1kg of sweet and smokey bbq chicken",
      "500g of long grain white rice",
      "2 cans of pineapple slices in juice",
      "1tbs of vegetable oil"
    ]
    @method = [
      "Preheat barbecue or griddle pan on medium-high heat
      and lightly grease with oil.",
      "Cook kebabs for 15 minutes, turning occasionally, until browned all over.",
      "Vent microwave rice and microwave on high for 3 minutes. Cook
      pineapple slices on flat plate of barbecue for 1-2 minutes on each side or until golden.",
      "(Optional) Prepare side. (Salad, Rice, chips)"
    ]
  end
end


class SpaghettiMeatballs < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Spaghetti Meatballs", "Pork", 15)
    @ingredients = [
      "400g Pork Meatballs",
      "450tub Napoli Sauce",
      "250g Spaghettini pasta no. 3"]
    @method = [
        "Heat oild in a medium fry pan over hight heat. Add meatballs and cook, stirring occasionally, for 6-7 minutes or until well browned.",
        "Reduce heat to low, stir through the napoli sauce and cook for 2 minutes or until heated through.",
        "In a large saucepan, cook pasta as per packet instructions. Drain, then return to the saucepan and toss through meatballs and sauce.",
        "(Optional) Prepare side. (Salad, Rice, Chips)"]
  end
end

class TunaPastaSalad < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Tuna Pasta Salad", "Tuna", 20)
    @ingredients = [
      "500g spirals pasta",
      "500g tuna in olive oil",
      "240g Italian Style salad kit",
      "0.5cup shaved parmesan"]
      @method = [
      "Cook pasta in large pot of salted water according to packet instuctions. Drain well and set aside
      to cool in the fridge for 5 minutes.",
      "Drain oil from tuna, place in a large bowl. Gently flake apart slightly using two forks.",
      "Add Salad kit leaves to the tuna, along with enclosed dressing and baby brocconcini. Add parmesan, reserving
      a small amount for garnish.",
      "Add cooled pasta and toss until combined.",
      "Divide pasta salad among serving bowls and top with reserved parmesan and salad kit croutons."]
  end
end


class SpaghettiBolognese < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Spaghetti Bolognese", "Beef", 20)
    @ingredients = [
      "200g sliced white mushrooms",
      "500g beef mince",
      "250g spaghetti pasta",
      "400g bolognese sauce",
      "1tbs Olive oil"]
      @method = [
        "Heat olive oil in a large frying pan on a medium heat.",
        "Add mushrooms and cook, stirring occassionally, for 5 minutes or until browned.",
        "Add beef and cook for 5 minutes or until cooked through",
        "Season with salt and pepper. Add sauce and stir to combine.",
        "Cook pasta in a large saucepan of salted boiling water according to packet instructions.",
        "Stir sauce through the pasta and serve."]
  end
end

class VeganBolognese < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Vegan Bolognese", "Vegan", 15)
    @ingredients = [
      "2 tbs olive oil",
      "1 large carrot, grated",
      "1tsp garlic paste",
      "1tsp dried oregano",
      "2 x 400g cans of diced tomatoes",
      "5 button mushrooms, finely diced",
      "250g sweet potato spaghetti pasta",
      "400g whole grain shelf-fresh noodles",
      "1 cup kale, spinace or beetroot leaves, finely shredded",
      "(Optional) 2 x 420g cans lentils, drained and rinsed"]
      @method = [
      "Heat olive oil in a large frying pan over medium heat and put the kettle on.",
      "Add the olive oil, carrt, garlic, oregano and tomatoes to pan. Bring to boil and simmer for 3 minutes.",
      "Remove tomato mixture from heat and place in a blender. Puree then return to the pan and heat over medium.",
      "Add lentils(Optional) and mushrooms then simmer for a further 5 minutes.",
      "Prepare the sweet potato spaghetti as per packet instructions.",
      "Place the whole grain noodles into a bowl, pour over boiling water and sit for 2 minutes.",
      "Mix sweet potato spaghetti with whole grain noodles, top with sauce and garnish with shredded leaves."]
  end
end

class BeanLentilPastaSalad < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Bean Lentil Pasta Salad", "Vegan", 35)
    @ingredients = [
      "1 bunch fresh basil, leaves picked",
      "1/2 cup extra virgin olive oil",
      "2 x 250g pkts red lentil spiral pasta",
      "500g frozen broad beans",
      "4 slices prosciutto",
      "1/2 cup chargrilled capsicum, drained",
      "100g cherry bocconcini, halved",
      "1tbs balsamic vinegar",
      "crusty bread, to serve"
    ]
    @method = [
      "Reserve some small basil leaves and place remainder into a medium bowl. Cover with boiling water for 20 seconds.",
      " Drain and refresh in iced water. Drain well and pat dry with paper towel. Place into a blender or food processor. Add oil and blend until smooth. Straing through a fine sieve into a small bowl. Discard pulp.",
      "Cook Pasta in a large saucepan of boiling salted water, following packet instructions or until just tender. Drain and rinse in cold water. Drain well.",
      "Blanch beans in boiling water for 3 minutes. Drain and refresh in cold water. Slip off skins and place beans into a bowl.",
      "Heat a frying pan over medium-high heat. Add prosciutto and cook for 2 mins each side or until golden and crisp. Cool and break into pieces.",
      "Combine pasta, beans, prosciutto, capsicum, bocconcini nad half the basil oil in a serving bowl. Toss gently to combine."
    ]
  end
end

class ClamFennelLeekPasta < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Clam Fennel And Leek Pasta","Clams",35)
    @ingredients = [
      "2 x 500g packets vongole clams",
      "20g butter",
      "1 cup finely sliced leek",
      "1 medium fennel, finely sliced, fronds reserved",
      "1/2 cup dry white wine",
      "375g fresh linguine",
      "125ml thickened cooking cream",
      "1/2 cup fresh parsley leaves"
    ]
    @method = [
      "Rinse clams well in cold water and drain.",
      "Melt butter in a large frying pan over medium hear. Add the leak and fennel and cook for 8 minutes or until soft.",
      "Add wine and cook until it has almost evaporated. Add clams to the pan, cover with a lid and cook for 8 minutes or until the clam shells open.",
      "Cook pasta according to packet instructions, drain and keep warm.",
      "Add cream to clams, season with cracked black pepper and re-heat for 2 minutes.",
      "Serve pasta topped with clams and sauce. Finish with the fennel fronds and parsley, to serve."
    ]
  end
end

class BeefVegFriedRice < DishFormat::Dish
  attr_accessor :ingredients, :method
  def initialize
    super("Beef And Vegetable Fried Rice","Beef",10)
    @ingredients = [
      "2 tsb veg oil",
      "200g beef rump steak, cut into thin strips",
      "3 spring onions, thinly sliced",
      "1 small carrot, finely diced",
      "1 bunch broccolini, trimmed, cut into 3cm pieces",
      "125 can corn kernels, drained",
      "50g diced ham",
      "3 tsp soy sauce",
      "1 tsp sesame oil",
      "2 tsp white sesame seeds, toasted",
      "250g microwave white rice"
    ]
    @method = [
      "Heat frying pan over high heat. Add 1 tsp oil and swirl to coat. Add half the steak and cook for 2 mins or until browned. Transfer to a bowl. Repeat with remaining steak.",
      "Heat remaining oil. Add spring onion, carrot and broccolini. Cook, stirring, for 2 minutes or until softened. Add corn, ham and cooled rice.",
      "Return beef to pan with soy sauce and sesame oil. Toss until well combined and heated through. Top with sesame seeds."
    ]
  end
end
