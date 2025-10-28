-- LD Hub (Premium) v1.0.0
-- Script by HuynhTriThien x Volcano
-- GitHub: https://github.com/HuynhTriThien/LDHub

-- Load UI + Modules
local success, loader = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/HuynhTriThien/LDHub/main/loader.luau"))()
end)

if not success then
    warn("⚠️ LD Hub Loader Error — check if loader.luau exists in your GitHub repo.")
else
    print("✅ LD Hub (Premium) Loaded Successfully")
end

--[[ 
Usage:
loadstring(game:HttpGet("https://raw.githubusercontent.com/HuynhTriThien/LDHub/main/main.luau"))()
]]
