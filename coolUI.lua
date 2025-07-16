local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "znc"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ResetOnSpawn = false

-- Make the mainFrame
local mainFrame = Instance.new("ImageButton")
mainFrame.Name = "mainFrame"
mainFrame.Parent = gui
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Size = UDim2.new(0, 500, 0, 300)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.ImageTransparency = 1
mainFrame.AutoButtonColor = false

-- Dragging
local dragging, dragStart, startPos
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
	if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
		local delta = input.Position - dragStart
		mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

-- TextBox
local textbox = Instance.new("TextBox", mainFrame)
textbox.Size = UDim2.new(0.9, 0, 0.7, 0)
textbox.Position = UDim2.new(0.05, 0, 0.05, 0)
textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
textbox.BackgroundTransparency = 0.2
textbox.TextXAlignment = Enum.TextXAlignment.Left
textbox.TextYAlignment = Enum.TextYAlignment.Top
textbox.ClearTextOnFocus = false
textbox.Font = Enum.Font.Code
textbox.TextSize = 14
textbox.PlaceholderText = 'print("made by znc and saint")'
textbox.Text = ""

-- Execute button
local execute = Instance.new("TextButton", mainFrame)
execute.Size = UDim2.new(0, 80, 0, 30)
execute.Position = UDim2.new(0.05, 0, 0.8, 0)
execute.Text = "Execute"
execute.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
execute.TextColor3 = Color3.new(1, 1, 1)

-- Clear button
local clear = Instance.new("TextButton", mainFrame)
clear.Size = UDim2.new(0, 80, 0, 30)
clear.Position = UDim2.new(0.25, 0, 0.8, 0)
clear.Text = "Clear"
clear.BackgroundColor3 = Color3.fromRGB(255, 65, 65)
clear.TextColor3 = Color3.new(1, 1, 1)

-- Button logic
execute.MouseButton1Click:Connect(function()
	local source = textbox.Text
	local success, err = pcall(function()
		loadstring(source)()
	end)
	if not success then
		warn("ZNC ERROR:", err)
	end
end)

clear.MouseButton1Click:Connect(function()
	textbox.Text = ""
end)
