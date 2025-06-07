local spaceship_tech = data.raw.technology["se-spaceship"]
spaceship_tech.unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 }
}

local spaceship_clamp_tech = data.raw.technology["se-spaceship-clamps"]
spaceship_clamp_tech.prerequisites = { "se-spaceship" }
spaceship_clamp_tech.unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
  { "se-rocket-science-pack", 1 },
  { "space-science-pack", 1 }
}