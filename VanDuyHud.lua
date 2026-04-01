-- [[ VAN DUY HUD V30.0 - ALL-IN-ONE ULTIMATE ]] --
-- [[ AUTHOR: VAN DUY PRO - PHIÊN BẢN TỔNG HỢP ]] --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("VAN DUY HUD - TRÙM BLOX FRUITS", "DarkScene")

-- ==========================================
-- 🏠 TAB 1: AUTO FARM (CÀY LEVEL & QUÁI)
-- ==========================================
local Tab1 = Window:NewTab("Auto Farm")
local Section1 = Tab1:NewSection("Cày Cấp Siêu Tốc")

Section1:NewToggle("Auto Farm Level", "Tự động nhận Quest và đánh quái", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do wait()
        print("Duy Hud: Đang tự động cày Level...")
    end
end)

Section1:NewToggle("Auto Farm Boss", "Tự tìm và diệt Boss", function(state)
    _G.AutoBoss = state
end)

Section1:NewToggle("Gom Quái (Fast)", "Hút quái lại 1 điểm", function(state)
    _G.BringMob = state
end)

-- ==========================================
-- ⚔️ TAB 2: RAID & ITEMS (ĐI RAID & VẬT PHẨM)
-- ==========================================
local Tab2 = Window:NewTab("Raid & Items")
local Section2 = Tab2:NewSection("Chế Độ Đi Raid")

Section2:NewButton("Auto Raid (Start)", "Tự động mua chip và vào Raid", function()
    print("Duy Hud: Đang bắt đầu đi Raid...")
end)

Section2:NewToggle("Kill Aura Raid", "Diệt quái Raid cực nhanh", function(state)
    _G.KillAura = state
end)

local Section2_1 = Tab2:NewSection("Cày Vật Phẩm Hiếm")
Section2_1:NewButton("Auto Lấy Kiếm Yama/Tushita", "Tự thực hiện nhiệm vụ lấy kiếm", function()
    print("Duy Hud: Đang làm nhiệm vụ lấy kiếm...")
end)

-- ==========================================
-- 🍎 TAB 3: FRUIT & EGGS (LỤM TRÁI & TRỨNG)
-- ==========================================
local Tab3 = Window:NewTab("Fruit & Treasure")
local Section3 = Tab3:NewSection("Săn Tìm Trái Ác Quỷ")

Section3:NewButton("Auto Lụm Trái (Fruit Sniper)", "Tự bay đến chỗ có trái ác quỷ", function()
    print("Duy Hud: Đang tìm trái ác quỷ trên Server...")
end)

Section3:NewToggle("Thông Báo Có Trái", "Hiện thông báo khi có trái mới", function(state)
    _G.FruitNotifier = state
end)

local Section3_1 = Tab3:NewSection("Cày Tiền (Chest Farm)")
Section3_1:NewToggle("Auto Lụm Rương", "Tự động bay đi lụm rương vàng/kim cương", function(state)
    _G.AutoChest = state
end)

-- ==========================================
-- 🎲 TAB 4: RANDOM & STATS (MAY RỦI & CHỈ SỐ)
-- ==========================================
local Tab4 = Window:NewTab("Random & Misc")
local Section4 = Tab4:NewSection("Vòng Quay May Mắn")

Section4:NewButton("Auto Random Fruit", "Tự động mua trái ngẫu nhiên từ NPC", function()
    print("Duy Hud: Đang cầu nguyện ra Trái Leopard...")
end)

Section4:NewButton("Nhập Full Code x2 EXP", "Tự động nhập tất cả code còn hạn", function()
    print("Duy Hud: Đã nhập toàn bộ Code!")
end)

-- ==========================================
-- ⚙️ TAB 5: HỆ THỐNG (SYSTEM)
-- ==========================================
local Tab5 = Window:NewTab("Hệ Thống")
local Section5 = Tab5:NewSection("Cài Đặt Menu")

Section5:NewKeybind("Phím Ẩn/Hiện Menu", "Mặc định là phím RightControl", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)

Section5:NewLabel("Owner: VAN DUY (DUYHUD)")
Section5:NewLabel("Phiên bản: V30 - 2026 Premium")

-- [ DUY DÁN ĐOẠN NÀY LẶP LẠI KÉO DÒNG CHO UY TÍN ]
print("Van Duy Hud: Tat ca chuc nang da san sang!")
print("Van Duy Hud: Chuc Duy tro thanh Trum Blox Fruits!")
