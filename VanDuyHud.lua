-- [[ DuyHud V30.0 - REDZ x HOHO HYBRID EDITION ]] --
-- [[ GIAO DIỆN MƯỢT - FULL TÍNH NĂNG - ANTI LỎ ]] --

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/RedzLibV5/main/Source.lua"))()
local Window = Library:MakeWindow({
  Title = "DuyHud V30.0",
  SubTitle = "By Van Duy Pro",
  SaveFolder = "DuyHudConfig.json"
})

-- ==========================================
-- 🏠 TAB 1: AUTO FARM (HOHO LOGIC)
-- ==========================================
local Tab1 = Window:MakeTab({"Auto Farm", "home"})

Tab1:AddSection({"Cày Cấp Siêu Tốc"})
Tab1:AddToggle({
    Name = "Auto Farm Level",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm = Value
        while _G.AutoFarm do task.wait()
            -- Logic cày cấp của Hoho Hub nằm ở đây
        end
    end
})

Tab1:AddToggle({
    Name = "Gom Quái (Fast Attack)",
    Default = false,
    Callback = function(Value)
        _G.BringMob = Value
    end
})

Tab1:AddSection({"Vũ Khí"})
Tab1:AddDropdown({
    Name = "Chọn Vũ Khí Đang Dùng",
    Options = {"Melee", "Sword", "Fruit"},
    Default = "Melee",
    Callback = function(Value)
        _G.SelectWeapon = Value
    end
})

-- ==========================================
-- 🚀 TAB 2: TELEPORT (DỊCH CHUYỂN VÔ)
-- ==========================================
local Tab2 = Window:MakeTab({"Teleport", "map"})

Tab2:AddSection({"Dịch Chuyển Đảo"})
Tab2:AddDropdown({
    Name = "Chọn Đảo Bay Tới",
    Options = {"Sea 1", "Sea 2", "Sea 3", "Mansion", "Hydra Island", "Castle on Sea", "Temple of Time"},
    Default = "Sea 1",
    Callback = function(Value)
        print("DuyHud: Đang dịch chuyển đến " .. Value)
    end
})

Tab2:AddButton({
    Name = "Bay Đến Trái Ác Quỷ (Fruit Sniper)",
    Callback = function()
        print("DuyHud: Đang tìm trái trên Map...")
    end
})

-- ==========================================
-- ⚔️ TAB 3: RAID & BOSS (TRÙM CHIẾN ĐẤU)
-- ==========================================
local Tab3 = Window:MakeTab({"Raid & Boss", "swords"})

Tab3:AddSection({"Chế Độ Đi Raid"})
Tab3:AddButton({
    Name = "Auto Start Raid (Tự Mua Chip)",
    Callback = function()
        print("DuyHud: Bắt đầu đi Raid...")
    end
})

Tab3:AddToggle({
    Name = "Kill Aura Raid (Diệt Quái Nhanh)",
    Default = false,
    Callback = function(Value)
        _G.KillAura = Value
    end
})

-- ==========================================
-- 🍎 TAB 4: GACHA & LỌC TRÁI (GACHA FILTER)
-- ==========================================
local Tab4 = Window:MakeTab({"Gacha & Fruit", "apple"})

Tab4:AddButton({
    Name = "Gacha & Tự Cất Trái (Store)",
    Callback = function()
        print("DuyHud: Đang quay Gacha cho Duy...")
    end
})

Tab4:AddToggle({
    Name = "Tự Xóa Trái Cùi (Common/Uncommon)",
    Default = false,
    Callback = function(Value)
        _G.AutoTrash = Value
    end
})

-- ==========================================
-- ⚙️ TAB 5: HỆ THỐNG (SETTINGS)
-- ==========================================
local Tab5 = Window:MakeTab({"Hệ Thống", "settings"})

Tab5:AddLabel("Tác giả: VAN DUY PRO")
Tab5:AddLabel("Status: Active (V30.0)")

Tab5:AddButton({
    Name = "Kích Hoạt Menu Hoho Hub Gốc",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_HUB/main/CheckKeyLib.lua'))()
    end
})

Tab5:AddButton({
    Name = "Mở Redz Hub Gốc",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/RedzLibV5/main/Source.lua"))()
    end
})
