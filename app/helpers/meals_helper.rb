module MealsHelper
  def meal_unordered?(meal)
    current_user.orders.where(meal_id: meal.id).empty?
  end
end
