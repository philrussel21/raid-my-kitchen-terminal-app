
class NotInDatabaseError < StandardError
end

class InvalidCookingTimeError < StandardError
  def message
    "Cooking Time should be in minutes and cannot be letters or zero"
  end
end

class InvalidDishError < StandardError
  def message
    "Invalid Dish: Ingredients or Methods should be more than one(1)."
  end
end