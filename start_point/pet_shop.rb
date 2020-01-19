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
breeds_array = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
    breeds_array << pet
    end
  end
return breeds_array
end

def find_pet_by_name (pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet_name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet_name === pet[:name]
    pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(array)
  return array[:cash]
end

def remove_customer_cash(customer, removed_cash)
  customer[:cash] -= removed_cash
end

def customer_pet_count(array)
  return array[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet[1])
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  if pet != nil && customer[:cash] >= pet[:price]
    pet_shop[:admin][:pets_sold] += 1
    customer[:cash] -= pet_shop[:pets][3][:price]
    pet_shop[:admin][:total_cash] += pet_shop[:pets][3][:price]
    customer[:pets].push(pet_shop[:pets][4])
  end
end
