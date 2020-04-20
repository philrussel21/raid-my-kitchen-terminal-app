
class Recipe

  #ingredients should be a hash with quantity as its value
  def initialize(name,meat,ingredients,prep_and_cook_time)
    @name = name
    @meat = meat
    @ingredients = ingredients
    @prep_and_cook_time = prep_and_cook_time
  end

end
