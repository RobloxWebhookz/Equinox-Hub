local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local gui = Mercury:Create{
    Name = "Equinox-Hub",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/RobloxWebhookz/Equinox-Hub/new/main/Games"
}

local tab = gui:tab{
    Icon = "rbxassetid://12671088926",
    Name = "Boats"
