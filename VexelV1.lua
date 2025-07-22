-- Gui to Lua
-- Version: 3.2

-- Instances:

local znc = Instance.new("ScreenGui")
local mainFrame = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local execute = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local Icon = Instance.new("ImageLabel")
local clear = Instance.new("ImageButton")
local UICorner_3 = Instance.new("UICorner")
local Icon_2 = Instance.new("ImageLabel")
local top = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local UICorner_5 = Instance.new("UICorner")
local Icon_3 = Instance.new("ImageLabel")

--Properties:

znc.Name = "znc"
znc.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
znc.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
znc.ResetOnSpawn = false

mainFrame.Name = "mainFrame"
mainFrame.Parent = znc
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.Size = UDim2.new(0, 587, 0, 349)
mainFrame.AutoButtonColor = false
mainFrame.Modal = true
mainFrame.Image = "rbxassetid://75284099437343"
mainFrame.ImageTransparency = 0.300
mainFrame.ScaleType = Enum.ScaleType.Crop

UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = mainFrame

TextBox.Parent = mainFrame
TextBox.BackgroundTransparency = 1.000
TextBox.Position = UDim2.new(0.0249999799, 0, 0.134498581, 0)
TextBox.Size = UDim2.new(0, 552, 0, 251)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "print(\"made by znc and saint\")"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

execute.Name = "execute"
execute.Parent = mainFrame
execute.BackgroundTransparency = 0.900
execute.Position = UDim2.new(0.0250000004, 0, 0.870000005, 0)
execute.Size = UDim2.new(0, 35, 0, 35)

UICorner_2.CornerRadius = UDim.new(1, 0)
UICorner_2.Parent = execute

Icon.Name = "Icon"
Icon.Parent = execute
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon.Size = UDim2.new(0, 20, 0, 20)
Icon.Image = "rbxassetid://10734923549"

clear.Name = "clear"
clear.Parent = mainFrame
clear.BackgroundTransparency = 0.900
clear.Position = UDim2.new(0.100000001, 0, 0.870000005, 0)
clear.Size = UDim2.new(0, 35, 0, 35)

UICorner_3.CornerRadius = UDim.new(1, 0)
UICorner_3.Parent = clear

Icon_2.Name = "Icon"
Icon_2.Parent = clear
Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_2.BackgroundTransparency = 1.000
Icon_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon_2.Size = UDim2.new(0, 20, 0, 20)
Icon_2.Image = "rbxassetid://10723346158"

top.Name = "top"
top.Parent = mainFrame
top.BackgroundTransparency = 0.900
top.Position = UDim2.new(0.0113713592, 0, 0.0189971495, 0)
top.Size = UDim2.new(0, 131, 0, 35)

UICorner_4.CornerRadius = UDim.new(1, 0)
UICorner_4.Parent = top

TextLabel.Parent = top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0902528241, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 107, 0, 35)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Vexel | Steak"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

close.Name = "close"
close.Parent = mainFrame
close.BackgroundTransparency = 0.900
close.Position = UDim2.new(0.9279387, 0, 0.0189971495, 0)
close.Size = UDim2.new(0, 35, 0, 35)

UICorner_5.CornerRadius = UDim.new(1, 0)
UICorner_5.Parent = close

Icon_3.Name = "Icon"
Icon_3.Parent = close
Icon_3.AnchorPoint = Vector2.new(0.5, 0.5)
Icon_3.BackgroundTransparency = 1.000
Icon_3.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon_3.Size = UDim2.new(0, 20, 0, 20)
Icon_3.Image = "rbxassetid://10747384394"

-- Scripts:

local function HXRFBS_fake_script() -- mainFrame.LocalScript 
	local script = Instance.new('LocalScript', mainFrame)

	local mainFrame  = script.Parent
	local UIS = script.Parent
	local execute = mainFrame.execute
	local TextBox = mainFrame.TextBox
	local clear = mainFrame.clear
	local top = mainFrame.top
	local close = mainFrame.close
	local isOpen = true
	
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
	top.MouseButton1Click:Connect(function()
		setclipboard("https://discord.gg/ZFR76GRr5H")
	end)
	close.MouseButton1Click:Connect(function()
		isOpen = not isOpen
		mainFrame.Visible = isOpen
	
		game.StarterGui:SetCore("SendNotification", {
			Title = "Vexel",
			Text = isOpen and "Opened Vexel!" or "Press Home to Toggle Vexel!",
			Duration = 5
		})
	end)
	game.UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.Home then 
			isOpen = not isOpen
			mainFrame.Visible = isOpen
	
			game.StarterGui:SetCore("SendNotification", {
				Title = "Vexel",
				Text = isOpen and "Opened Vexel!" or "Press Home to Toggle Vexel!",
				Duration = 5
			})
		end
	end)
end
coroutine.wrap(HXRFBS_fake_script)()
