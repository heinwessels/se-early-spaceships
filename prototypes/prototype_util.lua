local prototype_util = {}

---@param tech data.TechnologyPrototype
---@param ingredient string
function prototype_util.remove_tech_ingredient(tech, ingredient)
  if not tech or not tech.unit or not tech.unit.ingredients then return end
  local ingredients = tech.unit.ingredients
  for i = #ingredients, 1, -1 do
    if ingredients[i][1] == ingredient then
      table.remove(ingredients, i)
    end
  end
end

function prototype_util.remove_se_space_tech_ingredients(tech)
    if not tech or not tech.unit or not tech.unit.ingredients then return end
  local ingredients = tech.unit.ingredients
  for i = #ingredients, 1, -1 do
    local ingredient_name = ingredients[i][1]
    local should_remove =
      (
        string.sub(ingredient_name, 1, 3) == "se-"
        and ingredient_name ~= "se-rocket-science-pack"
      )
      or ingredient_name == "utility-science-pack"
      or ingredient_name == "production-science-pack"
    if should_remove then table.remove(ingredients, i) end
  end
end

---@param tech data.TechnologyPrototype
---@param ingredient string
---@param amount number
function prototype_util.add_tech_ingredient(tech, ingredient, amount)
  if not tech or not tech.unit or not tech.unit.ingredients then return end
  local ingredients = tech.unit.ingredients
  for i = #ingredients, 1, -1 do
    if ingredients[i][1] == ingredient then
      ingredients[i][2] = amount
      return
    end
  end
  table.insert(ingredients, {ingredient, amount})
end

return prototype_util