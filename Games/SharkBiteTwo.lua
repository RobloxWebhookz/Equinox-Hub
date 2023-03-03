local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Equinox-Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/RobloxWebhookz/Equinox-Hub/new/main/Games"
}

local Tab1 = GUI:Tab1{
	Name = "Boats",
	Icon = "rbxassetid://12671088926"
}

local Tab2 = GUI:Tab2{
	Name = "View",
	Icon = "rbxassetid://12671088208"
}

Tab1:Button{
	Name = "Test",
	Description = nil,
	Callback = function() end
  
}
