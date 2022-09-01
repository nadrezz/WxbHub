local Library_KeySystem = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local wxbhub_keysystem = Library_KeySystem:MakeWindow({Name = "WxbHub / Key-System", HidePremium = false, SaveConfig = true, ConfigFolder = "", IntroEnabled = false})

setclipboard("https://discord.gg/7CuPYxQ9ZT")

Library_KeySystem:MakeNotification({
	Name = "Authorized!",
	Content = "Welcome to WxbHub, "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Library_KeySystem:MakeNotification({
	Name = "Join in Discord.",
	Content = "Our discord server copy in clipboard!",
	Image = "rbxassetid://4483345998",
	Time = 10
})

_G.Key = "1tap"
_G.KeyInput = "string"

function MakeScriptHub()
    if game.PlaceId == 6516141723 then --Doors
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/nadrezz/WxbClub/main/Doors"), true))()
    end
    if game.PlaceId == 9872472334 then --Evade
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/nadrezz/WxbClub/main/Evade"), true))()
    end
    
end

function CorrectInputKeyNotification()
    Library_KeySystem:MakeNotification({
        Name = "Correct Key!",
        Content = "You are welcome!",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function IncorrectInputKeyNotification()
    Library_KeySystem:MakeNotification({
        Name = "Incorrect Key!",
        Content = "Maybe there is a typo?", 
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local KeySystemTab = wxbhub_keysystem:MakeTab({
	Name = "Key-System",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

KeySystemTab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

KeySystemTab:AddButton({
	Name = "Check Key",
	Callback = function()
        if _G.KeyInput == _G.Key then
        CorrectInputKeyNotification()
        MakeScriptHub()
        else
            IncorrectInputKeyNotification()
  	    end
    end
})

local keysysteninfo = KeySystemTab:AddSection({
	Name = "Have you got a bug?"
})

local keysysteninfo1 = KeySystemTab:AddSection({
	Name = "Our discord server copy in clipboard!"
})