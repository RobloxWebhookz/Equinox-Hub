local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local gui = Library:create{
    Theme = Library.Themes.Serika
}

local tab = gui:tab{
    Icon = "rbxassetid://6034744054",
    Name = "Boats"
}

local tabb = gui:tab{
    Icon = "rbxassetid://6035181886",
    Name = "Visuals"
}

local tabbb = gui:tab{
    Icon = "rbxassetid://6035181886",
    Name = "Autofarm"
}

-- anti-afk

local objectToDelete = game:GetService("Players").MilkedOnn.PlayerScripts.AFK.LocalScript
objectToDelete:Destroy()


wait(0.5)

local bb = game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    wait(2)
end)

print("Anti-AFK started")


-- boat trigger
function Duckmarine()
  -- Script generated by SimpleSpy - credits to exx#9394
  local args = {
      [1] = "Duckmarine"
  }
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(unpack(args))
end

function MilitarySubmarine()
  -- Script generated by SimpleSpy - credits to exx#9394
  local args = {
      [1] = "MilitarySubmarine"
  }
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(unpack(args))
end


function GingerbreadSteamBoat()
  -- Script generated by SimpleSpy - credits to exx#9394
  local args = {
      [1] = "GingerbreadSteamBoat"
  }
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(unpack(args))
end


function PartyBoat()
  -- Script generated by SimpleSpy - credits to exx#9394
  local args = {
      [1] = "PartyBoat"
  }
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(unpack(args))
end

function SnowMobile()
  -- Script generated by SimpleSpy - credits to exx#9394
  local args = {
      [1] = "Snowmobile"
  }
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(unpack(args))
end

function CombatBoat()
  -- Script generated by SimpleSpy - credits to exx#9394
  local args = {
      [1] = "CombatBoat"
  }
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(unpack(args))
end


function Marlin()
  -- Script generated by SimpleSpy - credits to exx#9394
  local args = {
      [1] = "Marlin"
  }
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(unpack(args))
end


function CruiseShip()
  -- Script generated by SimpleSpy - credits to exx#9394
  local args = {
      [1] = "CruiseShip"
  }
  game:GetService("ReplicatedStorage").EventsFolder.BoatSelection.UpdateHostBoat:FireServer(unpack(args))
end



-- boat button
tab:Button{
    Name = "Gingerbread Steamboat",
    Description = nil,
    Callback = function()
        GingerbreadSteamBoat()
    end
}

tab:Button{
    Name = "Military Sub",
    Description = nil,
    Callback = function()
        MilitarySubmarine()
    end
}


tab:Button{
    Name = "Party Boat",
    Description = nil,
    Callback = function()
        PartyBoat()
    end
}


tab:Button{
    Name = "Snow Mobile",
    Description = nil,
    Callback = function()
        SnowMobile()
    end
}

tab:Button{
    Name = "Combat Boat",
    Description = nil,
    Callback = function()
        CombatBoat()
    end
}

tab:Button{
    Name = "Marlin",
    Description = nil,
    Callback = function()
        Marlin()
    end
}

tabb:Button{
    Name = "Cruise Ship",
    Description = nil,
    Callback = function()
        CruiseShip()
    end
}

-- visuals funtions

local function outlinePlayer(player)
    local selectionBox = Instance.new("SelectionBox")
    selectionBox.Adornee = player.Character.HumanoidRootPart
    selectionBox.Color3 = Color3.new(0, 1, 0)
    selectionBox.SurfaceTransparency = 1
    selectionBox.Parent = game:GetService("Workspace")
end


local isSharkESPToggled = false

local function outlineMesh(mesh)
    local selectionBox = Instance.new("SelectionBox")
    selectionBox.Adornee = mesh
    selectionBox.Color3 = Color3.new(1, 0, 0)
    selectionBox.SurfaceTransparency = 1
    selectionBox.Parent = game:GetService("Workspace")
end

local function setWaterTransparency()
    game:GetService("Workspace").Terrain.WaterTransparency = 1
end

local function toggleSharkESP()
    isSharkESPToggled = not isSharkESPToggled
    if isSharkESPToggled then
        while isSharkESPToggled do
            local folder = game:GetService("Workspace").Sharks
            for _, model in ipairs(folder:GetDescendants()) do
                if model:IsA("Model") then
                    local mesh = model:FindFirstChildWhichIsA("MeshPart")
                    if mesh then
                        outlineMesh(mesh)
                    end
                end
            end
            wait(5)
        end
    end
end

local function outlineMesh(mesh)
   game:GetService("Workspace").Terrain.WaterTransparency = 1
end

-- visuals scripts

tabb:Button{
    Name = "Shark ESP",
    Description = nil,
    Callback = function()
        toggleSharkESP()
    end
}


tabb:Button{
    Name = "Player ESP",
    Description = nil,
    Callback = function()
        while true do
            for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
                outlinePlayer(player)
            end
            wait(5)
        end
    end
}


tabb:Button{
    Name = "See-Through Water",
    Description = nil,
    Callback = function()
        setWaterTransparency()
    end
}


