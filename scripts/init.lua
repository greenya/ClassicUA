local _, addon_table = ...

local scripts = {}

if addon_table.use then
    print("[ClassicUA] Fatal Error: \"addon_table.use\" is already defined. Probably by entries as they are loaded before scripts.")
else
    addon_table.use = function (name)
        if not scripts[name] then
            scripts[name] = {}
        end
        return scripts[name]
    end
end
