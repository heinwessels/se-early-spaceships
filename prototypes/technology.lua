local putil = require("prototypes.putil")

-- The first spaceship tech should be available at the same time as the cargo rocket
-- So we basically just copy what that does for easier compatibility
do
  local tech = data.raw.technology["se-spaceship"]
  local launchpad_tech = data.raw.technology["se-rocket-launch-pad"]
  tech.prerequisites = table.deepcopy(launchpad_tech.prerequisites)
  tech.unit.ingredients = table.deepcopy(launchpad_tech.unit.ingredients)
end

do
  local tech = data.raw.technology["se-spaceship-clamps"]
  tech.prerequisites = { "se-spaceship" }
  putil.remove_se_tech_ingredients(tech)
  putil.add_tech_ingredient(tech, "space-science-pack", 1)
end

do
  local tech = data.raw["technology"]["se-spaceship-integrity-1"]
  tech.prerequisites = { "se-spaceship" }
  putil.remove_se_tech_ingredients(tech)
  putil.add_tech_ingredient(tech, "space-science-pack", 1)
end

do
  local tech = data.raw["technology"]["se-spaceship-integrity-2"]
  tech.prerequisites = { "se-spaceship", "utility-science-pack" }
  putil.remove_se_tech_ingredients(tech)
  putil.add_tech_ingredient(tech, "utility-science-pack", 1)
end

do
  local tech = data.raw["technology"]["se-spaceship-integrity-3"]
  putil.remove_se_tech_ingredients(tech)
  putil.add_tech_ingredient(tech, "se-astronomic-science-pack-1", 1)
end

-- Then go A2M1?