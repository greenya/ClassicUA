local _, addonTable = ...
local objects_cata = {

["Dragon's Teeth"] = "зуби дракона",
["Sorrowmoss"] = "скорботоцвіт",
}

for k, v in pairs(objects_cata) do addonTable.object[k] = v end
