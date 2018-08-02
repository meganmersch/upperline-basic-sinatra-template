def volunteer_generator(user_value)
  
  if user_value <= 11
    return "sports"
  elsif user_value == 12 || user_value == 13 || user_value == 14
    return "environment"
  elsif user_value == 15 || user_value == 16 || user_value == 17 || user_value == 18
    return "helpingpeople"
  elsif user_value  == 20 ||  user_value == 19
    return "cookingfood"
  end
end
