---@cast aai_glass_name -?

local console = data.raw.recipe["se-spaceship-console"]
if console then
  console.ingredients = {
      {type = "item", name = aai_glass_name, amount = 20},
      {type = "item", name = "low-density-structure", amount = 20},
      {type = "item", name = "processing-unit", amount = 200},
      {type = "item", name = "rocket-control-unit", amount = 20},
  }
end

local floor = data.raw.recipe["se-spaceship-floor"]
if floor then
  floor.ingredients = {
      {type = "item", name = "low-density-structure", amount = 5},
      {type = "item", name = "se-heat-shielding", amount = 4}
  }
end

local wall = data.raw.recipe["se-spaceship-wall"]
if wall then
  wall.ingredients = {
      {type = "item", name = "steel-plate", amount = 10},
      {type = "item", name = aai_glass_name, amount = 8},
      {type = "item", name = "low-density-structure", amount = 4},
      {type = "item", name = "se-heat-shielding", amount = 4}
  }
end

local gate = data.raw.recipe["se-spaceship-gate"]
if gate then
  gate.ingredients = {
      {type = "item", name = "se-spaceship-wall", amount = 1},
      {type = "item", name = "electric-engine-unit", amount = 6},
      {type = "item", name = "low-density-structure", amount = 1},
      {type = "item", name = "se-heat-shielding", amount = 1}
  }
end

local rocket_engine = data.raw.recipe["se-spaceship-rocket-engine"]
if rocket_engine then
  rocket_engine.category = "crafting-with-fluid"
  rocket_engine.ingredients = {
      {type = "item", name = "pump", amount = 4},
      {type = "item", name = "steel-plate", amount = 20},
      {type = "item", name = "se-heat-shielding", amount = 20},
      {type = "item", name = "pipe", amount = 20},
      {type = "item", name = "electric-engine-unit", amount = 10},
      {type = "fluid", name = "lubricant", amount= 25},
  }
end

local ion_engine = data.raw.recipe["se-spaceship-ion-engine"]
if ion_engine then
  ion_engine.category = "crafting-with-fluid"
  ion_engine.ingredients = {
      {type = "item", name = "se-spaceship-rocket-engine", amount = 1},
      {type = "item", name = "low-density-structure", amount = 40},
      {type = "item", name = "se-cryonite-rod", amount = 40},
      {type = "item", name = "se-holmium-plate", amount = 40},
  }
end

local booster = data.raw.recipe["se-spaceship-rocket-booster-tank"]
if booster then
  booster.category = "crafting-with-fluid"
  booster.ingredients = {
      {type = "item", name = "pump", amount = 4},
      {type = "item", name = "steel-plate", amount = 10},
      {type = "item", name = "storage-tank", amount = 10},
      {type = "item", name = "se-heat-shielding", amount = 10},
      {type = "fluid", name = "lubricant", amount= 25},
      {type = "item", name = "electric-engine-unit", amount = 4},
  }
end

local clamp = data.raw.recipe["se-spaceship-clamp"]
if clamp then
  clamp.category = "advanced-crafting"
  clamp.ingredients = {
      {type = "item", name = "se-heat-shielding", amount = 10},
      {type = "item", name = "low-density-structure", amount = 20},
      {type = "item", name = "copper-cable", amount = 40},
      {type = "item", name = "electric-engine-unit", amount = 10},
      {type = "item", name = "processing-unit", amount = 10},
  }
end

-- We need space pipes to build a spaceship too
for _, pipe_type in pairs{"se-space-pipe", "se-space-pipe-to-ground"} do
  local pipe = data.raw.recipe[pipe_type]
  if pipe then pipe.category = "crafting" end
end
-- Now loop through the long space pipes to make sure they're still in space-crafting
-- Otherwise they're also craftable on the ground, which seems overkill.
for pipe_name, _ in pairs(data.raw["storage-tank"]) do
  if string.find(pipe_name, "se%-space%-pipe%-long%-") then
    local recipe = data.raw.recipe[pipe_name]
    if recipe then recipe.category = "space-crafting"end
  end
end


