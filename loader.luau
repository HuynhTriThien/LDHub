-- LD Hub (Premium) - Loader
-- Script by HuynhTriThien x Volcano
-- This file loads UI + modules

local OrionLib = nil

-- 🪶 Load Orion Library (UI)
pcall(function()
    OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
end)

if not OrionLib then
    warn("⚠️ OrionLib failed to load — check internet or library URL")
    return
end

-- 🌙 Create Window (UI)
local Window = OrionLib:MakeWindow({
    Name = "LD Hub (Premium)",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "LDHub_Config"
})

-- 🧱 Tabs
local AutoFarmTab = Window:MakeTab({ Name = "Auto Farm", Icon = "rbxassetid://4483345998" })
local HopServerTab = Window:MakeTab({ Name = "Hop Server", Icon = "rbxassetid://6035078895" })
local SettingsTab = Window:MakeTab({ Name = "Settings", Icon = "rbxassetid://6034509993" })
local CreditsTab = Window:MakeTab({ Name = "Credits", Icon = "rbxassetid://6031280882" })

-- 📂 Load Modules
local function safeLoad(path)
    local success, module = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/HuynhTriThien/LDHub/main/"..path))()
    end)
    if not success then warn("⚠️ Module load failed: "..path) end
    return module
end

-- 🧩 Require modules
local AutoFarm = safeLoad("modules/autofarm.luau")
local SuperVooc = safeLoad("modules/supervooc.luau")
local HopServer = safeLoad("modules/hopserver.luau")
local AntiAFK = safeLoad("modules/antiafk.luau")
local Speed = safeLoad("modules/speed.luau")
local Settings = safeLoad("modules/settings.luau")

-- ⚙️ Attach features to tabs
if AutoFarm then AutoFarm(AutoFarmTab) end
if HopServer then HopServer(HopServerTab) end
if Settings then Settings(SettingsTab) end

-- 💨 Anti AFK Auto-Start
if AntiAFK then AntiAFK() end

-- ⚡ Speed slider (inside settings)
if Speed and SettingsTab then Speed(SettingsTab) end

-- 🌟 Credits
CreditsTab:AddParagraph("Credits", "Script by HuynhTriThien x Volcano\nUI: OrionLib\nVersion: Premium v1.0.0")

-- 🌀 Toggle UI with LeftShift
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift then
        print("Shift trái được nhấn!")
        -- code bật menu
    end
end)

-- 🟢 Init
OrionLib:Init()
print("✅ SCRIPT CHẠY RỒI ĐÓ EM YÊU")

local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

