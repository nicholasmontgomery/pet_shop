def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, increase)
  pet_shop[:admin][:pets_sold] += increase
  return pet_shop[:admin][:pets_sold]
end

def stock_count(pet_shop)
return pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, breed)
  new_array = []
  for pets in pet_shop
     if [:breed] == breed
       new_array = new_array.push(breed)
     end
     return new_array
   end
 end
