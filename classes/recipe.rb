
module Recipe

  class ChickenParmigiana
    INGREDIENTS =  [
      '1pc of Chicken Schnitzel',
      '1 bottle of Parmigiana Sauce',
      '1 cup of Shredded Cheese'
  ]
    METHOD = ["Preheat Oven to 200C. Line a baking tray with baking paper",
                "Place Shchnitzels on prepared tray and bake for 10 minutes
spread schitnel with 2 tbs parmigiana sauce, sprinkle with cheese
bake for a further 10 minutes, or until cheese is golden.",
                "(Optional)Prepare side. (salad, rice, chips)"]
  end

  class BbqChickenSkewers
    INGREDIENTS = [
      '1kg of sweet and smokey bbq chicken',
      '500g of long grain white rice',
      '2 cans of pineapple slices in juice',
      '1tbs of vegetable oil'
  ]
    METHOD = [
      'Preheat barbecue or griddle pan on medium-high heat
      and lightly grease with oil.',
      'Cook kebabs for 15 minutes, turning occasionally, until browned all over.',
      'Vent microwave rice and microwave on high for 3 minutes. Cook
      pineapple slices on flat plate of barbecue for 1-2 minutes on each side or until golden.',
      '(Optional) Prepare side. (Salad, Rice, chips)'
    ]
  end

  class SpaghettiMeatballs
    INGREDIENTS = [
      '400g Pork Meatballs',
      '450tub Napoli Sauce',
      '250g Spaghettini pasta no. 3'
  ]
    METHOD = [
      'Heat oild in a medium fry pan over hight heat. Add meatballs and cook, stirring occasionally, for 6-7 minutes or until well browned.',
      'Reduce heat to low, stir through the napoli sauce and cook for 2 minutes or until heated through.',
      'In a large saucepan, cook pasta as per packet instructions. Drain, then return to the saucepan and toss through meatballs and sauce.',
      '(Optional) Prepare side. (Salad, Rice, Chips)'
    ]
  end

  class TunaPastaSalad
    INGREDIENTS = [
      '500g spirals pasta',
      '500g tuna in olive oil',
      '240g Italian Style salad kit',
      '0.5cup shaved parmesan'
  ]
    METHOD = [
      'Cook pasta in large pot of salted water according to packet instuctions. Drain well and set aside
      to cool in the fridge for 5 minutes.',
      'Drain oil from tuna, place in a large bowl. Gently flake apart slightly using two forks.',
      'Add Salad kit leaves to the tuna, along with enclosed dressing and baby brocconcini. Add parmesan, reserving
      a small amount for garnish.',
      'Add cooled pasta and toss until combined.',
      'Divide pasta salad among serving bowls and top with reserved parmesan and salad kit croutons.'
    ]
  end


end

#get multiline input then split to store as an array
#when adding new recipe