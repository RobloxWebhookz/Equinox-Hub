local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}


local Boats = GUI:Tab{
	Name = "New Tab",
	Icon = "rbxassetid://8569322835"
}

local Render = GUI:Tab{
	Name = "New Tab",
	Icon = "rbxassetid://8569322835"
}
