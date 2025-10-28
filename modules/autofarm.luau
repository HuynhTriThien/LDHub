-- LD Hub (Premium) - Auto Farm Module
-- Script by HuynhTriThien x Volcano

return function(tab)
    tab:AddParagraph("Auto Farm", "Bật chế độ farm tự động. Có thể thêm logic farm tại đây.")

    tab:AddToggle({
        Name = "Auto Farm",
        Default = false,
        Callback = function(value)
            _G.AutoFarm = value
            if value then
                print("✅ Auto Farm Bật")
                while _G.AutoFarm do
                    task.wait(1)
                    -- TODO: Thêm logic farm (teleport, attack, collect,...)
                end
            else
                print("⛔ Auto Farm Tắt")
            end
        end
    })

    tab:AddToggle({
        Name = "SuperVooc Farm",
        Default = false,
        Callback = function(value)
            _G.SuperVoocFarm = value
            if value then
                print("⚡ SuperVooc Farm Đang Hoạt Động")
                while _G.SuperVoocFarm do
                    task.wait(0.5)
                    -- TODO: Logic SuperVooc farm (siêu nhanh)
                end
            else
                print("⛔ SuperVooc Farm Dừng")
            end
        end
    })
end
