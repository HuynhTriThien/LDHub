-- LD Hub (Premium) - Hop Server Module
-- Script by HuynhTriThien x Volcano

local servers = {
    "Full Moon",
    "Rip Indra",
    "Mirage Island",
    "Dough King V2",
    "Katakuri V1",
    "Volcano Island",
    "Frozen Island (Leviathan)",
    "Great Tree",
    "Hydra Island",
    "Haunted Castle",
    "Turtle Mansion",
    "Port Town",
    "Sea of Treats",
    "Castle on the Sea",
    "Forgotten Island",
    "Mansion Event",
    "Temple of Time",
    "Random Raid Zone"
}

return function(tab)
    tab:AddParagraph("Hop Server", "Chọn server bạn muốn nhảy vào tự động. Client Volcano hỗ trợ load nhanh.")

    local selectedServer = nil

    tab:AddDropdown({
        Name = "Chọn Server",
        Options = servers,
        Default = servers[1],
        Callback = function(selected)
            selectedServer = selected
            print("🌐 Server được chọn:", selected)
        end
    })

    tab:AddButton({
        Name = "Join Server Đã Chọn",
        Callback = function()
            if selectedServer then
                print("🔁 Đang chuyển sang server:", selectedServer)
                -- TODO: Thêm logic join server thật bằng TP hoặc API
                task.wait(1.5)
                print("✅ Đã vào server:", selectedServer)
            else
                print("⚠️ Vui lòng chọn server trước khi join.")
            end
        end
    })

    tab:AddButton({
        Name = "Tự Động Hop Server Ngẫu Nhiên",
        Callback = function()
            print("🌍 Bắt đầu nhảy ngẫu nhiên...")
            for _, serverName in ipairs(servers) do
                task.wait(0.7)
                print("🌀 Đang thử vào server:", serverName)
                -- TODO: thêm logic teleport tới server
            end
            print("✅ Hoàn tất vòng hop server.")
        end
    })
end
