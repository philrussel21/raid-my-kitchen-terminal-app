
module Recipe

  class ChickenParmigiana
    INGREDIENTS =  {
      'pc of Chicken Schnitzel'=> 1,
      'bottle of Parmigiana Sauce'=> 1,
      'cup of Shredded Cheese'=> 1
    }
    METHOD = ["Preheat Oven to 200C. Line a baking tray with baking paper",
                "Place Shchnitzels on prepared tray and bake for 10 minutes
spread schitnel with 2 tbs parmigiana sauce, sprinkle with cheese
bake for a further 10 minutes, or until cheese is golden.",
                "(Optional)Prepare side. (salad, rice, chips)"]
  end

  class BbqChickenSkewers
    INGREDIENTS = {
      'kg of sweet and smokey bbq chicken' => 1,
      'g of long grain white rice' => 500,
      'cans of pineapple slices in juice' => 2,
      'tbs of vegetable oil' => 1
    }
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
    INGREDIENTS = {
      'g Pork Meatballs' => 400,
      'tub Napoli Sauce' => 450,
      'g Spaghettini pasta no. 3' => 250,
    }
    METHOD = [
      'Heat oild in a medium fry pan over hight heat. Add meatballs and cook, stirring occasionally, for 6-7 minutes or until well browned.',
      'Reduce heat to low, stir through the napoli sauce and cook for 2 minutes or until heated through.',
      'In a large saucepan, cook pasta as per packet instructions. Drain, then return to the saucepan and toss through meatballs and sauce.',
      '(Optional) Prepare side. (Salad, Rice, Chips)'
    ]
  end
  
end

#get multiline input then split to store as an array
#when adding new recipe