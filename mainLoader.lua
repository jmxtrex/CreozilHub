if game.PlaceId == 6490016198 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "UpDATE🧊Slayer Tycoon (v1.5) | CreozilHub", HidePremium = false, IntroText = "CreozilHub", SaveConfig = true, ConfigFolder = "CreozilHub"})
  
--Value
  
  
--Functions
  
  
--Tabs
local MainTab = Window:MakeTab({
  Name = "Main",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})
  
--Toggles  
MainTab:AddSlider({
  Name = "SpeedHack",
  Min = 0,
  Max = 200,
  Default = 16,
  Color = Color3.fromRGB(255,255,255),
  Increment = 1,
  ValueName = "",
  Callback = function(s)  
_G.HackedWalkSpeed = s
  
local Plrs = game:GetService("Players")
  
local MyPlr = Plrs.LocalPlayer
local MyChar = MyPlr.Character
  
if MyChar then
local Hum = MyChar.Humanoid
Hum.Changed:connect(function(s)
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end
  
  
MyPlr.CharacterAdded:connect(function(Char)
MyChar = Char
repeat wait() until Char:FindFirstChild("Humanoid")
local Hum = Char.Humanoid
Hum.Changed:connect(function()
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
Hum.WalkSpeed = _G.HackedWalkSpeed
end)
  end    
})
  
  
  
  
  
end
OrionLib:Init()
