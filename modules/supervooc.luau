-- LD Hub (Premium) - SuperVooc Farm Module
-- Script by HuynhTriThien x Volcano

return function(tab)
    tab:AddParagraph("SuperVooc Farm", "Chế độ farm siêu nhanh - sử dụng tốc độ tối đa và di chuyển khắp map.")

    tab:AddSlider({
        Name = "Speed Multiplier",
        Min = 1,
        Max = 350,
        Default = 100,
        Increment = 1,
        Callback = function(value)
            _G.SpeedMultiplier = value
            print("⚙️ Speed set to:", value)
        end
    })

    tab:AddButton({
        Name = "Bật SuperVooc Farm",
        Callback = function()
            _G.SuperVoocActive = true
            print("⚡ SuperVooc Farm Started")
            while _G.SuperVoocActive do
                task.wait(0.3)
                -- TODO: Thêm logic farm nhanh ở đây
            end
        end
    })

    tab:AddButton({
        Name = "Tắt SuperVooc Farm",
        Callback = function()
            _G.SuperVoocActive = false
            print("⛔ SuperVooc Farm Stopped")
        end
    })
end
