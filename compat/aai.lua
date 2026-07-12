if not mods["aai-industry"] then return end

local function is_in_table(table_, value)
  for _, item in pairs(table_) do
    if item == value then
      return true
    end
  end
  return false
end

local function add_crafting_categories(recipe_name, categories)
  local recipe = data.raw.recipe[recipe_name]
  recipe.categories = recipe.categories or {"crafting"}
  for _, category_to_insert in pairs(categories) do
    if not is_in_table(recipe.categories, category_to_insert) then
      table.insert(recipe.categories, category_to_insert)
    end
  end
end
add_crafting_categories("motor", {"mechanics"})
add_crafting_categories("electric-motor", {"mechanics"})