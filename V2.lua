--//MAIN
local CGUI = game:GetService("CoreGui")
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local header = Instance.new("TextLabel")
local ExitButton = Instance.new("TextButton")
local CheckKey = Instance.new("TextButton")
local GetKey = Instance.new("TextButton")
local InstertKey = Instance.new("TextBox")
local Label = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = CGUI
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, -235, 0.5, -159)
Main.Size = UDim2.new(0, 471, 0, 318)
Main.Active = true
Main.Draggable = true

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 464, 0, 43)

header.Name = "header"
header.Parent = Top
header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
header.BackgroundTransparency = 1.000
header.Position = UDim2.new(0.294585973, 0, 0, 0)
header.Size = UDim2.new(0, 200, 0, 43)
header.Font = Enum.Font.GothamSemibold
header.Text = "Vxntl"
header.TextColor3 = Color3.fromRGB(255, 255, 255)
header.TextSize = 25.000

ExitButton.Name = "ExitButton"
ExitButton.Parent = Top
ExitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ExitButton.BorderSizePixel = 0
ExitButton.Position = UDim2.new(0.925430357, 0, 0, 0)
ExitButton.Size = UDim2.new(0, 43, 0, 43)
ExitButton.Font = Enum.Font.GothamSemibold
ExitButton.Text = "X"
ExitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitButton.TextSize = 25.000
ExitButton.TextWrapped = true

CheckKey.Name = "CheckKey"
CheckKey.Parent = Main
CheckKey.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CheckKey.BorderSizePixel = 0
CheckKey.Position = UDim2.new(0.0711252689, 0, 0.748427689, 0)
CheckKey.Size = UDim2.new(0, 161, 0, 43)
CheckKey.Font = Enum.Font.GothamSemibold
CheckKey.Text = "Check"
CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckKey.TextSize = 25.000
CheckKey.TextWrapped = true

GetKey.Name = "GetKey"
GetKey.Parent = Main
GetKey.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
GetKey.BorderSizePixel = 0
GetKey.Position = UDim2.new(0.738853455, -80, 0.814465404, -21)
GetKey.Size = UDim2.new(0, 161, 0, 43)
GetKey.Font = Enum.Font.GothamSemibold
GetKey.Text = "Get key"
GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKey.TextSize = 25.000
GetKey.TextWrapped = true


InstertKey.Name = "InstertKey"
InstertKey.Parent = Main
InstertKey.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InstertKey.Position = UDim2.new(0.5, -187, 0.5, -22)
InstertKey.Size = UDim2.new(0, 375, 0, 45)
InstertKey.ClearTextOnFocus = false
InstertKey.Font = Enum.Font.GothamSemibold
InstertKey.PlaceholderText = "key here"
InstertKey.Text = ""
InstertKey.TextColor3 = Color3.fromRGB(255, 255, 255)
InstertKey.TextSize = 25.000
InstertKey.TextXAlignment = Enum.TextXAlignment.Left

Label.Name = "Label"
Label.Parent = Main
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Position = UDim2.new(0.286093384, 0, 0.204402521, 0)
Label.Size = UDim2.new(0, 200, 0, 43)
Label.Font = Enum.Font.GothamSemibold
Label.Text = "Key checker"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextSize = 25.000



GetKey.MouseButton1Click:Connect(function()
	game.StarterGui:SetCore("SendNotification", {Title="Getkey", Text="ctrl+V in browser", Duration=4})
	wait(.1)
	setclipboard("https://discord.gg/mfRDXHVzM8")
end)

CheckKey.MouseButton1Click:Connect(function()
	if InstertKey.Text == "ytrhcvdf123" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Stefxtjuh/vxntl/main/Loader.lua"))()
	else
		game.Players.LocalPlayer:Kick("Invalid key! 😡")
	end
end)

ExitButton.MouseButton1Click:Connect(function()
	ScreenGui:Destroy()
end)
