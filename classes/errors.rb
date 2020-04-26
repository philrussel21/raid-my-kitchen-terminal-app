
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

class DuplicateError < StandardError
  def message
    "Duplicate Recipe: Recipe has previously been added to the database."
  end
end
