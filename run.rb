require 'pry'

spicy_foods = [
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 },
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
]

def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food_hash|
   puts "#{food_hash[:name]} (#{food_hash[:cuisine]}) | Heat Level: #{food_hash[:heat_level]}"
  end
end

def get_names(spicy_foods)
  names_array = spicy_foods.map do |food_hash|
    food_hash[:name]
  end
  names_array
end

def spiciest_foods(spicy_foods)
  above_five = spicy_foods.select do |food_hash|
    food_hash[:heat_level] > 5
  end
  above_five
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  cuisine_spice = spicy_foods.find do |food_hash|
    food_hash[:cuisine] == cuisine
  end
  cuisine_spice
end

def print_spiciest_foods(spicy_foods)
  spice_above_five = spiciest_foods(spicy_foods)
  print_spicy_foods(spice_above_five)
end

def average_heat_level(spicy_foods)
 heat_level_array = spicy_foods.map do |food_hash|
  food_hash[:heat_level]
  end
  median_heat = (heat_level_array.sum) / (heat_level_array.count)
  median_heat
end