local function req(url)
    return loadstring(game:HttpGet(url))()
end

local success, info = pcall(function()
    return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
end)
local placeName = ""
if success then
    placeName = #info.Name > 50 and string.sub(info.Name, 1, 50) .. "..." or info.Name
end

local items = {
    -- links here
    Locals = "https://raw.githubusercontent.com/Player01010111Cheater/AternosClient/main/util/items/Locals.lua"
    GetCurrentTime = "https://raw.githubusercontent.com/Player01010111Cheater/AternosClient/main/util/items/GetCurrentTime.lua"
    SendWebHook = "https://raw.githubusercontent.com/Player01010111Cheater/AternosClient/main/util/items/SendWebHook.lua",
    GameName = placeName
}

local utils = {}

for name, item in pairs(items) do
    if type(item) == "string" and item:match("^https?://") then
        utils[name] = function(...)
            local f = req(item)
            utils[name] = f
            return f(...)
        end
    else
        utils[name] = item
    end
end

return utils
