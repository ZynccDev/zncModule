-- Gui to Lua
-- Version: 3.2

-- Instances:

local znc = Instance.new("ScreenGui")
local mainFrame = Instance.new("ImageButton")
local corner = Instance.new("UICorner")
local shadow = Instance.new("ImageLabel")
local Blur = Instance.new("ImageLabel")
local corner_2 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local execute = Instance.new("ImageButton")
local corner_3 = Instance.new("UICorner")
local icon = Instance.new("ImageLabel")
local scale = Instance.new("UIScale")
local gradient = Instance.new("UIGradient")
local clear = Instance.new("ImageButton")
local corner_4 = Instance.new("UICorner")
local icon_2 = Instance.new("ImageLabel")
local scale_2 = Instance.new("UIScale")
local gradient_2 = Instance.new("UIGradient")

--Properties:

znc.Name = "znc"
znc.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
znc.Enabled = true
znc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainFrame.Name = "mainFrame"
mainFrame.Parent = znc
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.BackgroundTransparency = 0.100
mainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0.498361737, 0, 0.498007983, 0)
mainFrame.Size = UDim2.new(0, 587, 0, 349)
mainFrame.AutoButtonColor = false
mainFrame.Modal = true
mainFrame.Image = "rbxassetid://75284099437343"
mainFrame.ImageTransparency = 0.300
mainFrame.ScaleType = Enum.ScaleType.Crop

corner.CornerRadius = UDim.new(0, 14)
corner.Name = "corner"
corner.Parent = mainFrame

shadow.Name = "shadow"
shadow.Parent = mainFrame
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shadow.BackgroundTransparency = 1.000
shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.Rotation = 0.000
shadow.Size = UDim2.new(1, 88, 1, 88)
shadow.Visible = false
shadow.ZIndex = -10
shadow.Image = "rbxassetid://16286730454"
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(512, 512, 512, 512)
shadow.SliceScale = 0.190

Blur.Name = "Blur"
Blur.Parent = mainFrame
Blur.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blur.BackgroundTransparency = 1.000
Blur.BorderColor3 = Color3.fromRGB(0, 0, 0)
Blur.BorderSizePixel = 0
Blur.Size = UDim2.new(0, 587, 0, 349)
Blur.Visible = false
Blur.Image = "rbxassetid://13353669946"
Blur.ImageColor3 = Color3.fromRGB(138, 138, 138)

corner_2.CornerRadius = UDim.new(0, 14)
corner_2.Name = "corner"
corner_2.Parent = Blur

TextBox.Parent = mainFrame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0247699805, 0, 0.0601719208, 0)
TextBox.Size = UDim2.new(0, 552, 0, 277)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "print(\"made by znc and saint\")"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

execute.Name = "execute"
execute.Parent = mainFrame
execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
execute.BackgroundTransparency = 0.900
execute.BorderColor3 = Color3.fromRGB(0, 0, 0)
execute.BorderSizePixel = 0
execute.Position = UDim2.new(0.0247699805, 0, 0.866825223, 0)
execute.Size = UDim2.new(0, 35, 0, 35)
execute.AutoButtonColor = false

corner_3.CornerRadius = UDim.new(1, 0)
corner_3.Name = "corner"
corner_3.Parent = execute

icon.Name = "icon"
icon.Parent = execute
icon.AnchorPoint = Vector2.new(0.5, 0.5)
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BackgroundTransparency = 1.000
icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
icon.BorderSizePixel = 0
icon.Position = UDim2.new(0.5, 0, 0.5, 0)
icon.Size = UDim2.new(0.449999988, 0, 0.449999988, 0)
icon.Image = "rbxassetid://10734923549"

scale.Name = "scale"
scale.Parent = icon

gradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 0.33)}
gradient.Name = "gradient"
gradient.Parent = execute

clear.Name = "clear"
clear.Parent = mainFrame
clear.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clear.BackgroundTransparency = 0.900
clear.BorderColor3 = Color3.fromRGB(0, 0, 0)
clear.BorderSizePixel = 0
clear.Position = UDim2.new(0.0997273922, 0, 0.866825223, 0)
clear.Size = UDim2.new(0, 35, 0, 35)
clear.AutoButtonColor = false

corner_4.CornerRadius = UDim.new(1, 0)
corner_4.Name = "corner"
corner_4.Parent = clear

icon_2.Name = "icon"
icon_2.Parent = clear
icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon_2.BackgroundTransparency = 1.000
icon_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
icon_2.BorderSizePixel = 0
icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
icon_2.Size = UDim2.new(0.449999988, 0, 0.449999988, 0)
icon_2.Image = "rbxassetid://10723346158"

scale_2.Name = "scale"
scale_2.Parent = icon_2

gradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 0.33)}
gradient_2.Name = "gradient"
gradient_2.Parent = clear

-- Scripts:

local function AINBG_fake_script() -- znc.main_script 
	local script = Instance.new('LocalScript', znc)

	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local player = Players.LocalPlayer
	
	local nexoraUI = script.Parent
	local mainFrame = nexoraUI:WaitForChild("mainFrame")
	local UIS = game:GetService("UserInputService")
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	mainFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = mainFrame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	mainFrame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
	mainFrame.execute.MouseButton1Click:Connect(function()
		loadstring(mainFrame.TextBox.Text)()
	end)
	
	mainFrame.clear.MouseButton1Click:Connect(function()
		mainFrame.TextBox.Text = ""
	end)
	
	--[[
			made by znc and saint
	--]]
	
end
coroutine.wrap(AINBG_fake_script)()
