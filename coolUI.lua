--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 18 | Scripts: 1 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.znc
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Enabled"] = false;
G2L["1"]["Name"] = [[znc]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.znc.mainFrame
G2L["2"] = Instance.new("ImageButton", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["ScaleType"] = Enum.ScaleType.Crop;
G2L["2"]["Modal"] = true;
G2L["2"]["AutoButtonColor"] = false;
G2L["2"]["ImageTransparency"] = 0.3;
G2L["2"]["BackgroundTransparency"] = 0.1;
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Image"] = [[rbxassetid://75284099437343]];
G2L["2"]["Size"] = UDim2.new(0, 587, 0, 349);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[mainFrame]];
G2L["2"]["Position"] = UDim2.new(0.49836, 0, 0.49801, 0);


-- StarterGui.znc.mainFrame.corner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["Name"] = [[corner]];
G2L["3"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.znc.mainFrame.shadow
G2L["4"] = Instance.new("ImageLabel", G2L["2"]);
G2L["4"]["ZIndex"] = -10;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["SliceCenter"] = Rect.new(512, 512, 512, 512);
G2L["4"]["SliceScale"] = 0.19;
G2L["4"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Image"] = [[rbxassetid://16286730454]];
G2L["4"]["Size"] = UDim2.new(1, 88, 1, 88);
G2L["4"]["Visible"] = false;
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Rotation"] = 0.0001;
G2L["4"]["Name"] = [[shadow]];
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.znc.mainFrame.Blur
G2L["5"] = Instance.new("ImageLabel", G2L["2"]);
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["5"]["ImageColor3"] = Color3.fromRGB(139, 139, 139);
G2L["5"]["Image"] = [[rbxassetid://13353669946]];
G2L["5"]["Size"] = UDim2.new(0, 587, 0, 349);
G2L["5"]["Visible"] = false;
G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5"]["BackgroundTransparency"] = 1;
G2L["5"]["Name"] = [[Blur]];


-- StarterGui.znc.mainFrame.Blur.corner
G2L["6"] = Instance.new("UICorner", G2L["5"]);
G2L["6"]["Name"] = [[corner]];
G2L["6"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.znc.mainFrame.TextBox
G2L["7"] = Instance.new("TextBox", G2L["2"]);
G2L["7"]["CursorPosition"] = -1;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7"]["PlaceholderText"] = [[print("made by znc and saint")]];
G2L["7"]["Size"] = UDim2.new(0, 552, 0, 277);
G2L["7"]["Position"] = UDim2.new(0.02477, 0, 0.06017, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[]];
G2L["7"]["BackgroundTransparency"] = 1;


-- StarterGui.znc.mainFrame.execute
G2L["8"] = Instance.new("ImageButton", G2L["2"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["AutoButtonColor"] = false;
G2L["8"]["BackgroundTransparency"] = 0.9;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Name"] = [[execute]];
G2L["8"]["Position"] = UDim2.new(0.02477, 0, 0.86683, 0);


-- StarterGui.znc.mainFrame.execute.corner
G2L["9"] = Instance.new("UICorner", G2L["8"]);
G2L["9"]["Name"] = [[corner]];
G2L["9"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.znc.mainFrame.execute.icon
G2L["a"] = Instance.new("ImageLabel", G2L["8"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["a"]["Image"] = [[rbxassetid://10734923549]];
G2L["a"]["Size"] = UDim2.new(0.45, 0, 0.45, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Name"] = [[icon]];
G2L["a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.znc.mainFrame.execute.icon.scale
G2L["b"] = Instance.new("UIScale", G2L["a"]);
G2L["b"]["Name"] = [[scale]];


-- StarterGui.znc.mainFrame.execute.gradient
G2L["c"] = Instance.new("UIGradient", G2L["8"]);
G2L["c"]["Enabled"] = false;
G2L["c"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.33125)};
G2L["c"]["Name"] = [[gradient]];


-- StarterGui.znc.mainFrame.clear
G2L["d"] = Instance.new("ImageButton", G2L["2"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["AutoButtonColor"] = false;
G2L["d"]["BackgroundTransparency"] = 0.9;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["Size"] = UDim2.new(0, 35, 0, 35);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[clear]];
G2L["d"]["Position"] = UDim2.new(0.09973, 0, 0.86683, 0);


-- StarterGui.znc.mainFrame.clear.corner
G2L["e"] = Instance.new("UICorner", G2L["d"]);
G2L["e"]["Name"] = [[corner]];
G2L["e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.znc.mainFrame.clear.icon
G2L["f"] = Instance.new("ImageLabel", G2L["d"]);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["Image"] = [[rbxassetid://10723346158]];
G2L["f"]["Size"] = UDim2.new(0.45, 0, 0.45, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["BackgroundTransparency"] = 1;
G2L["f"]["Name"] = [[icon]];
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.znc.mainFrame.clear.icon.scale
G2L["10"] = Instance.new("UIScale", G2L["f"]);
G2L["10"]["Name"] = [[scale]];


-- StarterGui.znc.mainFrame.clear.gradient
G2L["11"] = Instance.new("UIGradient", G2L["d"]);
G2L["11"]["Enabled"] = false;
G2L["11"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 0.33125)};
G2L["11"]["Name"] = [[gradient]];


-- StarterGui.znc.main_script
G2L["12"] = Instance.new("LocalScript", G2L["1"]);
G2L["12"]["Name"] = [[main_script]];


-- StarterGui.znc.main_script
local function C_12()
local script = G2L["12"];
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
	
end;
task.spawn(C_12);

return G2L["1"], require;
