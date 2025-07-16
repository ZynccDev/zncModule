--// znc ui
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local lp = Players.LocalPlayer

-- Gui
local znc = Instance.new("ScreenGui")
znc.Name = "znc"
znc.ResetOnSpawn = false
znc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
znc.Parent = lp:WaitForChild("PlayerGui")

-- Main Frame
local mainFrame = Instance.new("ImageButton")
mainFrame.Name = "mainFrame"
mainFrame.Parent = znc
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Size = UDim2.new(0, 587, 0, 349)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.Image = "rbxassetid://75284099437343"
mainFrame.ImageTransparency = 0.3
mainFrame.ScaleType = Enum.ScaleType.Crop
mainFrame.AutoButtonColor = false
mainFrame.Modal = true

-- UICorner
local corner = Instance.new("UICorner", mainFrame)
corner.CornerRadius = UDim.new(0, 14)

-- TextBox
local TextBox = Instance.new("TextBox", mainFrame)
TextBox.BackgroundTransparency = 1
TextBox.Position = UDim2.new(0.025, 0, 0.06, 0)
TextBox.Size = UDim2.new(0, 552, 0, 277)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "print(\"made by znc and saint\")"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.ClearTextOnFocus = false

-- Execute Button
local execute = Instance.new("ImageButton", mainFrame)
execute.Position = UDim2.new(0.025, 0, 0.87, 0)
execute.Size = UDim2.new(0, 35, 0, 35)
execute.BackgroundTransparency = 0.9
execute.Image = "rbxassetid://10734923549"
execute.ScaleType = Enum.ScaleType.Fit

local execCorner = Instance.new("UICorner", execute)
execCorner.CornerRadius = UDim.new(1, 0)

-- Clear Button
local clear = Instance.new("ImageButton", mainFrame)
clear.Position = UDim2.new(0.1, 0, 0.87, 0)
clear.Size = UDim2.new(0, 35, 0, 35)
clear.BackgroundTransparency = 0.9
clear.Image = "rbxassetid://10723346158"
clear.ScaleType = Enum.ScaleType.Fit

local clearCorner = Instance.new("UICorner", clear)
clearCorner.CornerRadius = UDim.new(1, 0)

-- Drag Logic
local dragging, dragInput, dragStart, startPos
mainFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = mainFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then dragging = false end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

-- Execute logic
execute.MouseButton1Click:Connect(function()
	local src = TextBox.Text
	if src and src ~= "" then
		local s, e = pcall(function()
			loadstring(src)()
		end)
		if not s then warn("ZNC error:", e) end
	end
end)

clear.MouseButton1Click:Connect(function()
	TextBox.Text = ""
end)
