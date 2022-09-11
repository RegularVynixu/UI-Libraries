-- Define Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/Vynixius/Source.lua"))()

-- Create Window
local Window = Library:AddWindow({
	title = {"Vynixius", "UI Library"},
	theme = {
		Accent = Color3.fromRGB(0, 255, 0)
	},
	key = Enum.KeyCode.RightControl,
	default = true
})

-- Create Tab
local Tab = Window:AddTab("Tab", {default = false})

-- Create Section
local Section = Tab:AddSection("Section", {default = false})

-- Create Button
local Button = Section:AddButton("Button", function()
	print("Button has been pressed")
end)

-- Create Toggle
local Toggle = Section:AddToggle("Toggle", {flag = "Toggle_Flag", default = false}, function(bool)
	print("Toggle set to:", bool)
end)

-- Create Label
local Label = Section:AddLabel("Label")

-- Create DualLabel
local DualLabel = Section:AddDualLabel({"Dual", "Label"})

-- Create ClipboardLabel
local ClipboardLabel = Section:AddClipboardLabel("ClipboardLabel", function()
	return "ClipboardLabel"
end)

-- Create Box
local Box = Section:AddBox("Box", {fireonempty = true}, function(text)
	print(text)
end)

-- Create Bind
local Bind = Section:AddBind("Bind", Enum.KeyCode.RightShift, {toggleable = true, default = false, flag = "Bind_Flag"}, function(keycode)
	Window:SetKey(keycode)
end)

-- Create Slider
local Slider = Section:AddSlider("Slider", 1, 100, 50, {toggleable = true, default = false, flag = "Slider_Flag", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
	print("Slider value:", val, " - Slider toggled:", bool)
end)

-- Create Dropdown
local Dropdown = Section:AddDropdown("Dropdown", {"Item1", "Item2", "Item3"}, {default = "Item1"}, function(selected)
	print(selected)
end)

-- Create Picker
local Picker = Section:AddPicker("Picker", {color = Color3.fromRGB(255, 0, 0)}, function(color)
	Window:SetAccent(color)
end)


--[[

    All functions shown above are implemented the same way for SubSections

]]--
