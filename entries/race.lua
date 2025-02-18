local _, addonTable = ...
addonTable.race = { -- [id] = { [н/р/д/з/о/м/к] = { male, female } }

-- id: .clientFileString column from https://warcraft.wiki.gg/wiki/RaceId

["human"] = {
    ["н"] = { "чоловік", "жінка", "людина" },
    ["р"] = { "чоловіка", "жінки", "людини" },
    ["д"] = { "чоловіку", "жінці", "людині" },
    ["з"] = { "чоловіка", "жінку", "людину" },
    ["о"] = { "чоловіком", "жінкою", "людиною" },
    ["м"] = { "чоловікові", "жінці", "людині" },
    ["к"] = { "чоловіче", "жінко", "людино" },
},

["dwarf"] = {
    ["н"] = { "дворф", "дворфа" },
    ["р"] = { "дворфа", "дворфи" },
    ["д"] = { "дворфу", "дворфі" },
    ["з"] = { "дворфа", "дворфу" },
    ["о"] = { "дворфом", "дворфою" },
    ["м"] = { "дворфові", "дворфі" },
    ["к"] = { "дворфе", "дворфо" },
},

["nightelf"] = {
    ["н"] = { "нічний ельф", "нічна ельфа" },
    ["р"] = { "нічного ельфа", "нічної ельфи" },
    ["д"] = { "нічному ельфу", "нічній ельфі" },
    ["з"] = { "нічного ельфа", "нічну ельфу" },
    ["о"] = { "нічним ельфом", "нічною ельфою" },
    ["м"] = { "нічному ельфові", "нічній ельфі" },
    ["к"] = { "нічний ельфе", "нічна ельфо" },
},

["gnome"] = {
    ["н"] = { "гном", "гномка" },
    ["р"] = { "гнома", "гномки" },
    ["д"] = { "гному", "гномці" },
    ["з"] = { "гнома", "гномку" },
    ["о"] = { "гномом", "гномкою" },
    ["м"] = { "гномові", "гномці" },
    ["к"] = { "гноме", "гномко" },
},

["orc"] = {
    ["н"] = { "орк", "орчиня" },
    ["р"] = { "орка", "орчині" },
    ["д"] = { "оркові", "орчині" },
    ["з"] = { "орка", "орчиню" },
    ["о"] = { "орком", "орчинею" },
    ["м"] = { "оркові", "орчині" },
    ["к"] = { "орку", "орчине" },
},

["troll"] = {
    ["н"] = { "троль", "тролька" },
    ["р"] = { "троля", "трольки" },
    ["д"] = { "тролеві", "трольці" },
    ["з"] = { "троля", "трольку" },
    ["о"] = { "тролем", "тролькою" },
    ["м"] = { "тролеві", "трольці" },
    ["к"] = { "тролю", "тролько" },
},

["scourge"] = {
    ["н"] = { "невмерлий", "невмерла" },
    ["р"] = { "невмерлого", "невмерлої" },
    ["д"] = { "невмерлому", "невмерлій" },
    ["з"] = { "невмерлого", "невмерлу" },
    ["о"] = { "невмерлим", "невмерлою" },
    ["м"] = { "невмерлому", "невмерлій" },
    ["к"] = { "невмерлий", "невмерла" },
},

["tauren"] = {
    ["н"] = { "таурен", "тауренка" },
    ["р"] = { "таурена", "тауренки" },
    ["д"] = { "тауренові", "тауренці" },
    ["з"] = { "таурена", "тауренку" },
    ["о"] = { "тауреном", "тауренкою" },
    ["м"] = { "тауренові", "тауренці" },
    ["к"] = { "таурене", "тауренко" },
},

["draenei"] = {
    ["н"] = { "дреней", "дренейка" },
    ["р"] = { "дренея", "дренейки" },
    ["д"] = { "дренею", "дренейці" },
    ["з"] = { "дренея", "дренейку" },
    ["о"] = { "дренеєм", "дренейкою" },
    ["м"] = { "дренею", "дренейці" },
    ["к"] = { "дренею", "дренейко" },
},

["bloodelf"] = {
    ["н"] = { "ельф крові", "ельфа крові" },
    ["р"] = { "ельфа крові", "ельфи крові" },
    ["д"] = { "ельфу крові", "ельфі крові" },
    ["з"] = { "ельфа крові", "ельфу крові" },
    ["о"] = { "ельфом крові", "ельфою крові" },
    ["м"] = { "ельфові крові", "ельфі крові" },
    ["к"] = { "ельфе крові", "ельфо крові" },
},

["worgen"] = {
    ["н"] = { "ворген", "воргенка" },
    ["р"] = { "воргена", "воргенки" },
    ["д"] = { "воргену", "воргенці" },
    ["з"] = { "воргена", "воргенку" },
    ["о"] = { "воргеном", "воргенкою" },
    ["м"] = { "воргені", "воргенці" },
    ["к"] = { "воргене", "воргенко" },
},

["goblin"] = {
    ["н"] = { "гоблін", "гоблінка" },
    ["р"] = { "гобліна", "гоблінки" },
    ["д"] = { "гобліну", "гоблінці" },
    ["з"] = { "гобліна", "гоблінку" },
    ["о"] = { "гобліном", "гоблінкою" },
    ["м"] = { "гобліні", "гоблінці" },
    ["к"] = { "гобліне", "гоблінко" },
},

}
