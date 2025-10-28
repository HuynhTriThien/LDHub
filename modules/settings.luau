-- LD Hub (Premium) - Settings Module
-- Script by HuynhTriThien x Volcano

return function(tab)
    tab:AddParagraph("Cài Đặt", "Tùy chỉnh tốc độ, chống AFK và các thiết lập khác.")

    tab:AddSlider({
        Name = "Speed",
        Min = 16,
        Max = 350,
        Default = 100,
        Increment = 1,
        Callback = function(value)
            _G.Speed = value
            if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
                local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.WalkSpeed = value
                end
            end
            print("⚙️ Speed set to:", value)
        end
    })

    tab:AddToggle({
        Name = "Anti AFK",
        Default = true,
        Callback = function(value)
            _G.AntiAFK = value
            if value then
                print("🕒 Anti AFK Bật")
                task.spawn(function()
                    while _G.AntiAFK do
                        task.wait(60)
                        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                        task.wait(1)
                        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                    end
                end)
            else
                print("⛔ Anti AFK Tắt")
            end
        end
    })

    tab:AddButton({
        Name = "Đặt lại tốc độ mặc định",
        Callback = function()
            if game.Players.LocalPlayer and game.Players.LocalPlayer.Character then
                local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.WalkSpeed = 16
                    print("🔄 Đặt lại tốc độ mặc định (16)")
                end
            end
        end
    })
end
