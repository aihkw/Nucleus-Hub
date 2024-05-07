function generateRandomString(length)
    local C = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local O = ""
    for i=1, length do
        local RN = math.random(1, #C)
        O = O..C:sub(RN, RN)
    end
    return O
end

function divider(tab, text)
    tab:AddParagraph({
        Title = text,
        Content = ""
    })
end

function Setline(Line, Width, Color, Origin, Destination)
    local Position = (Origin + Destination) / 2
    Line.Position = UDim2.new(0, Position.X, 0, Position.Y)
    local Length = (Origin - Destination).Magnitude
    Line.BackgroundColor3 = Color
    Line.BorderColor3 = Color
    Line.Size = UDim2.new(0, Length, 0, Width)
    Line.Rotation = math.deg(math.atan2(Destination.Y - Origin.Y, Destination.X - Origin.X))
end

local session = "NucleusHubx92390481"
for i, v in pairs(game.Players:GetChildren()) do
    for j, w in pairs(v.Character:GetChildren()) do
        if w.Name == session then
            w:Destroy()
        end
    end
end

function createSession(session)
    for i, v in pairs(game.Players:GetChildren()) do
        local sessionFolder = Instance.new("Folder")
        sessionFolder.Name = session
        sessionFolder.Parent = v.Character
    end
end
function terminateSession(session)
    for i, v in pairs(game.Players:GetChildren()) do
        if v.Character:FindFirstChild(session) then
            v.Character:FindFirstChild(session):Destroy()
        end
    end
end
game.Players.PlayerAdded:Connect(function(player)
    local sessionFolder = Instance.new("Folder")
    sessionFolder.Name = session
    sessionFolder.Parent = player.Character
end)

--createSession(session)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Nucleus " .. "v0.0.1",
    SubTitle = "by aihkw",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftBracket, -- Used when theres no MinimizeKeybind
})

-- Initiate

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Scripts = Window:AddTab({ Title = "Scripts", Icon = "" }),
    Player = Window:AddTab({ Title = "Player", Icon = "" }),
    ESP = Window:AddTab({ Title = "ESP", Icon = "" }),
    --
    Divider1 = Window:AddTab({ Title = "---------------------------", Icon = "" }),
    --
    Blox_Hunt = Window:AddTab({ Title = "Blox Hunt", Icon = "" }),
    HASE = Window:AddTab({Title = "Hide & Seek Extreme", Icon = ""})
}

-- Tabs.Main

Tabs.Main:AddParagraph({
    Title = "Paragraph",
    Content = "This is a paragraph.\nSecond line!"
})

-- Tabs.Scripts

Tabs.Scripts:AddButton({
    Title = "♾ Infinite Yield",
    Description = "Best script utilities",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})
Tabs.Scripts:AddButton({
    Title = "👀 Remote Spy (Console)",
    Description = "Displays remote events that were being requested",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/aihkw/Scripts/main/RemoteSpyConsole.lua"))()
    end
})
Tabs.Scripts:AddButton({
    Title = "⚡ Thunder Client",
    Description = "Best Roblox Arsenal Script",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/verified/dca3e69649ed196af0ac6577f743a0ae.lua"))()
    end
})
Tabs.Scripts:AddButton({
    Title = "🦸‍♂️ FE Genesis",
    Description = "",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sadist%20Genocider"))()
    end
})

-- Tabs.Player

local S_WalkSpeed = Tabs.Player:AddSlider("Slider", { -- WalkSpeed
    Title = "WalkSpeed",
    Description = "Change your walk speed",
    Default = 16,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})
Tabs.Player:AddButton({
    Title = "Set to default walk speed",
    Description = "Set your walk speed to 16 (default)",
    Callback = function()
        S_WalkSpeed:SetValue(16)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
})
local S_JumpPower = Tabs.Player:AddSlider("Slider", { -- JumpPower
    Title = "JumpPower",
    Description = "Change your jump power",
    Default = 50,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end
})
Tabs.Player:AddButton({
    Title = "Set to default jump power",
    Description = "Set your jump power to 50 (default)",
    Callback = function()
        S_JumpPower:SetValue(50)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
})
local S_Gravity = Tabs.Player:AddSlider("Gravity", { -- Gravity
    Title = "Gravity",
    Description = "Change the gravity locally",
    Default = 196.2,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Callback = function(Value)
        game.Workspace.Gravity = Value
    end
})
Tabs.Player:AddButton({
    Title = "Set to default gravity",
    Description = "Set local gravity to 196.2 (default)",
    Callback = function()
        S_Gravity:SetValue(196.2)
        game.Workspace.Gravity = 196.2
    end
})

-- Tabs.ESP
local ESP_BoxColor = Color3.fromRGB(255, 255, 255)
local ESP_LineColor = Color3.fromRGB(255, 255, 255)
local ESP_FillColor = Color3.fromRGB(255, 255, 255)
local ESP_OutlineColor = Color3.fromRGB(255, 255, 255)
local ESP_BOX = Tabs.ESP:AddToggle("Box", {
    Title = "Box",
    Default = false,
    Callback = function(Value)
        pcall(function()
            if Value then
                for i, v in pairs(game.Players:GetChildren()) do
                    local b = Instance.new("BillboardGui")
                    b.Size = UDim2.new(4.5, 0, 6.5, 0)
                    b.Name = session.."ESP_BOX"
                    b.AlwaysOnTop = true
                    b.Parent = v.Character
                    local f = Instance.new("Frame")
                    f.Position = UDim2.new(0.05, 0, 0.05, 0)
                    f.Size = UDim2.new(0.9, 0, 0.9, 0)
                    f.BackgroundTransparency = 1
                    f.Parent = b
                    local uis = Instance.new("UIStroke")
                    uis.Color = ESP_BoxColor
                    uis.Thickness = 2
                    uis.Parent = f
                end
            else
                for i, v in pairs(game.Players:GetChildren()) do
                    local a = v.Character:FindFirstChild(session.."ESP_BOX")
                    if a then
                        a:Destroy()
                    end
                end
            end
        end)
    end
})
local ESP_LINES_ENABLED = false
local ESP_LINES = Tabs.ESP:AddToggle("Lines", {
    Title = "Lines",
    Default = false,
    Callback = function(Value)
        ESP_LINES_ENABLED = Value
        local g
        local GetLineOrigin = function(Camera)
            return Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y*.9)
        end
        if ESP_LINES_ENABLED then
            g = Instance.new("ScreenGui")
            g.Name = session.."ESP_LINES"
            g.Parent = game.Players.LocalPlayer.PlayerGui
        end
        while ESP_LINES_ENABLED do
            for i, v in pairs(game.Players:GetChildren()) do
                local f = Instance.new("Frame")
                f.AnchorPoint = Vector2.new(.5, .5)
                local LineOrigin = GetLineOrigin(game.Workspace.CurrentCamera)
                Setline(f, 1, Color3.fromRGB(255, 255, 255), LineOrigin, v.Character.HumanoidRootPart.Position)
                f.Parent = g
            end
            task.wait()
        end
        if not ESP_LINES_ENABLED then
            pcall(function()
                game.Players.LocalPlayer.PlayerGui:FindFirstChild(session.."ESP_LINES"):Destroy()
            end)
        end
    end
})
local ESP_H = Tabs.ESP:AddToggle("Highlight", {
    Title = "Highlight",
    Default = false,
    Callback = function(Value)
        pcall(function()
            if Value then
                for i, v in pairs(game.Players:GetChildren()) do
                    local h = Instance.new("Highlight")
                    h.Name = session.."ESP_H"
                    h.FillColor = ESP_FillColor
                    h.OutlineColor = ESP_OutlineColor
                    h.Parent = v.Character
                end
            else
                for i, v in pairs(game.Players:GetChildren()) do
                    local a = v.Character:FindFirstChild(session.."ESP_H")
                    if a then
                        a:Destroy()
                    end
                end
            end
        end)
    end
})
Tabs.ESP:AddColorpicker("Box Color", {
    Title = "Box Color",
    Default = ESP_BoxColor,
    Callback = function(Value)
        if ESP_BOX.Value then
            for i, v in pairs(game.Players:GetChildren()) do
                ESP_BoxColor = Value
                pcall(function()
                    v.Character:FindFirstChild(session.."ESP_BOX").Frame.UIStroke.Color = ESP_BoxColor
                end)
            end
        end
    end
})
Tabs.ESP:AddColorpicker("Highlight FillColor", {
    Title = "Highlight FillColor",
    Default = ESP_FillColor,
    Callback = function(Value)
        if ESP_H.Value then
            for i, v in pairs(game.Players:GetChildren()) do
                ESP_FillColor = Value
                pcall(function()
                    v.Character:FindFirstChild(session.."ESP_H").FillColor = ESP_FillColor
                end)
            end 
        end
    end
})
Tabs.ESP:AddColorpicker("Highlight OutlineColor", {
    Title = "Highlight OutlineColor",
    Default = ESP_OutlineColor,
    Callback = function(Value)
        for i, v in pairs(game.Players:GetChildren()) do
            ESP_OutlineColor = Value
            pcall(function()
                v.Character:FindFirstChild(session.."ESP_H").OutlineColor = ESP_OutlineColor
            end)
        end
    end
})
local playerTable = {}
for i, v in pairs(game.Players:GetChildren()) do
    table.insert(playerTable, v.Name)
end
local D_TP_to = Tabs.ESP:AddDropdown("Dropdown", {
    Title = "Dropdown",
    Values = playerTable,
    Multi = false,
    Default = 1,
    Callback = function(Value)
        local target = game.Players:FindFirstChild(Value)
        local tpos = target.Character.Head.Position
        game.Players.LocalPlayer.Character:PivotTo(CFrame.new(tpos.X, tpos.Y, tpos.Z))
    end
})
Tabs.ESP:AddButton({
    Title = "Teleport to all",
    Description = "Teleport to every single player",
    Callback = function()
        for i, v in pairs(game.Players:GetChildren()) do
            local t = v.Character.Head.Position
            game.Players.LocalPlayer.Character:PivotTo(CFrame.new(t.X, t.Y, t.Z))
            task.wait()
        end
    end
})

-- [ GAMES ]

-- Blox Hunt

local Blox_Hunt_Farming_Token = false
Tabs.Blox_Hunt:AddToggle("Farm Tokens", {
    Title = "💰 Farm Tokens",
    Description = "",
    Callback = function(Value)
        Blox_Hunt_Farming_Token = Value
        while Blox_Hunt_Farming_Token do
            local t1 = game.Workspace.LavaObby.Token
            local t2 = game.Workspace.Lobby.LobbyObby.Token
            local p = game.Players.LocalPlayer.Character.HumanoidRootPart
            t1.CanCollide = false
            t2.CanCollide = false
            t1.Transparency = 1
            t2.Transparency = 1
            t1.Position = p.Position
            task.wait()
        end
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "⚡🔵 Shock Hiders",
    Description = "",
    Callback = function()
        local r = game.ReplicatedStorage.GameFunctions.Shock
        local s = game.ReplicatedStorage.GameFunctions.StatChange
        for i, v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Character.Name then
                if v.Character.Torso.BrickColor == BrickColor.new("Bright blue") then
                    r:FireServer("Hit", v.Character)
                    s:FireServer("Energy", 10)
                    task.wait()
                end
            end
        end
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "⚡🔴 Shock Seekers",
    Description = "",
    Callback = function()
        local r = game.ReplicatedStorage.GameFunctions.Shock
        local s = game.ReplicatedStorage.GameFunctions.StatChange
        for i, v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Character.Name then
                if v.Character.Torso.BrickColor == BrickColor.new("Bright red") then
                    r:FireServer("Hit", v.Character)
                    s:FireServer("Energy", 10)
                    task.wait()
                end
            end
        end
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "⚡🤼 Shock Others",
    Description = "",
    Callback = function()
        local r = game.ReplicatedStorage.GameFunctions.Shock
        local s = game.ReplicatedStorage.GameFunctions.StatChange
        for i, v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Character.Name then
                r:FireServer("Hit", v.Character)
                s:FireServer("Energy", 10)
                task.wait()
            end
        end
    end
})
local Blox_Hunt_Loop_Shock_Hiders = false
Tabs.Blox_Hunt:AddToggle("Loop Shock Hiders", {
    Title = "🔁⚡🔵 Loop Shock Hiders",
    Description = "",
    Default = false,
    Callback = function(Value)
        Blox_Hunt_Loop_Shock_Hiders = Value
        while Blox_Hunt_Loop_Shock_Hiders do
            local r = game.ReplicatedStorage.GameFunctions.Shock
            local s = game.ReplicatedStorage.GameFunctions.StatChange
            for i, v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Character.Name then
                    if v.Character.Torso.BrickColor == BrickColor.new("Bright blue") then
                        r:FireServer("Hit", v.Character)
                        s:FireServer("Energy", 10)
                        task.wait()
                    end
                end
            end
            task.wait()
        end
    end
})
local Blox_Hunt_Loop_Shock_Seekers = false
Tabs.Blox_Hunt:AddToggle("Loop Shock Seekers", {
    Title = "🔁⚡🔴 Loop Shock Seekers",
    Description = "",
    Default = false,
    Callback = function(Value)
        Blox_Hunt_Loop_Shock_Seekers = Value
        while Blox_Hunt_Loop_Shock_Seekers do
            local r = game.ReplicatedStorage.GameFunctions.Shock
            local s = game.ReplicatedStorage.GameFunctions.StatChange
            for i, v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Character.Name then
                    if v.Character.Torso.BrickColor == BrickColor.new("Bright red") then
                        r:FireServer("Hit", v.Character)
                        s:FireServer("Energy", 10)
                        task.wait()
                    end
                end
            end
            task.wait()
        end
    end
})
local Blox_Hunt_Loop_Shock_Others = false
Tabs.Blox_Hunt:AddToggle("Loop Shock Others", {
    Title = "🔁⚡🤼 Loop Shock Others",
    Description = "",
    Default = false,
    Callback = function(Value)
        Blox_Hunt_Loop_Shock_Others = Value
        while Blox_Hunt_Loop_Shock_Others do
            local r = game.ReplicatedStorage.GameFunctions.Shock
            local s = game.ReplicatedStorage.GameFunctions.StatChange
            for i, v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Character.Name then
                    r:FireServer("Hit", v.Character)
                    s:FireServer("Energy", 10)
                    task.wait()
                end
            end
            task.wait()
        end
    end
})
divider(Tabs.Blox_Hunt, "⛳ TELEPORTS")
Tabs.Blox_Hunt:AddButton({
    Title = "• Teleport to lobby",
    Description = "",
    Callback = function()
        local t = game.Workspace.MainSpawn.Spawns:FindFirstChild("SpawningPlatform").CFrame
        game.Players.LocalPlayer.Character:PivotTo(CFrame.new(t.X, t.Y + 5, t.Z))
    end
})
divider(Tabs.Blox_Hunt, "🛒 GAMEPASSES")
Tabs.Blox_Hunt:AddButton({
    Title = "• Auto Seeker",
    Description = "",
    Callback = function()
        game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer("AutoSeeker")
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "• Cloner",
    Description = "",
    Callback = function()
        game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer("Cloner")
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "• Face Changer",
    Description = "",
    Callback = function()
        game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer("FaceChanger")
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "• Instant Hide",
    Description = "",
    Callback = function()
        game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer("InstantHide")
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "• Radar",
    Description = "",
    Callback = function()
        game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer("Radar")
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "• Seeker Points",
    Description = "",
    Callback = function()
        game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer("SeekerPoints")
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "• Vanish",
    Description = "",
    Callback = function()
        game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer("Vanish")
    end
})
Tabs.Blox_Hunt:AddButton({
    Title = "• Walkspeed",
    Description = "",
    Callback = function()
        game.ReplicatedStorage.ShopFunctions.PutOnGamepass:FireServer("Walkspeed")
    end
})

-- Hide & Seek Extreme

Tabs.HASE:AddButton({
    Title = "💰 Collect credits",
    Description = "Grabs all credits on the current map",
    Callback = function()
        pcall(function()
            for i, v in pairs(game.Workspace.GameObjects:GetChildren()) do
                if v.Name == "Credit" then
                    v.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                end
            end
        end)
    end
})
Tabs.HASE:AddButton("🔊 Show Boombox UI SS", {
    Title = "🔊 Show Boombox UI SS",
    Description = "The audio is attached to your avatar",
    Default = false,
    Callback = function()
        pcall(function()
            game.Players.LocalPlayer.PlayerGui.MainGui.BoomboxFrame.Visible = true
        end)
    end
})
local HASE_Spam_Text = ""
Tabs.HASE:AddInput("Input", {
    Title = "🗯 Spam text",
    Default = "",
    Placeholder = "",
    Numeric = false, -- Only allows numbers
    Finished = false, -- Only calls callback when you press enter
    Callback = function(Value)
        HASE_Spam_Text = Value
    end
})
local HASE_Start_Spamming = false
Tabs.HASE:AddToggle("🗯 Start Spamming", {
    Title = "Start Spamming",
    Description = "Begin the spam",
    Default = false,
    Callback = function(Value)
        HASE_Start_Spamming = Value
        while HASE_Start_Spamming do
            game.ReplicatedStorage.Remotes.Chatted:FireServer(HASE_Spam_Text)
            task.wait()
        end
    end
})
Tabs.HASE:AddDropdown("Equip Taunt", {
    Title = "🕺 Equip Taunt",
    Values = {"Wave", "Freestyle", "Make it Rain(R)", "Make it Rain(T)"},
    Multi = false,
    Default = "Wave",
    Callback = function(Value)
        game.ReplicatedStorage.Remotes.EquipTaunt:FireServer(Value)
    end
})
Tabs.HASE:AddDropdown("Equip Pet", {
    Title = "🕺 Equip Pet",
    Values = {"", "Bat", "Doge", "Eye", "Golden Doge", "Honey Badger", "King Julien", "Mecha-Spider", "Penguin", "Rubber Duckie", "Snow Gentleman", "Tee Vee", "UFO"},
    Multi = false,
    Default = "",
    Callback = function(Value)
        game.ReplicatedStorage.Remotes.EquipPet:FireServer(Value)
    end
})
-- End

Fluent:Notify({
    Title = "Nucleus",
    Content = "The script has been loaded.",
    Duration = 3
})
