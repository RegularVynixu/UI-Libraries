local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/UI-Libraries/main/BoomSXer/BoomSXer%20UI%20Library"))()

local Gui = Library:AddGui({
	Title = {"BoomSXer", "UI Library"},
	ThemeColor = Color3.fromRGB(0, 125, 255),
	ToggleKey = Enum.KeyCode.RightShift,
})

local Tab = Gui:AddTab("Test Tab")

local Category = Tab:AddCategory("Category")

local Button = Category:AddButton("Button", function()
	Library:Notify("You pressed Button, are you proud?", function(yesno)
		print("User selected :", yesno)
	end)
end)

local Toggle = Category:AddToggle("Toggle", false, function(toggle)
	(toggle and print or warn)(toggle)
end)

local Box = Category:AddBox("Box", true, function(text)
	print(text)
end)

local Label = Category:AddLabel("Label")

local DualLabel = Category:AddDualLabel({"Label1", "Label2"})

local Slider = Category:AddSlider("Slider", 1, 100, 50, false, function(val)
	print("Slider :", val)
end)

local ToggleSlider = Category:AddToggleSlider("ToggleSlider", 1, 100, 50, false, false, function(val)
	print("ToggleSlider :", val)
end)

local Bind = Category:AddBind("Bind", Enum.KeyCode.RightShift, function()
	print("Bind Pressed, Gui Toggled")
end)

local ToggleBind = Category:AddToggleBind("ToggleBind", Enum.KeyCode.LeftShift, false, function()
	print("ToggleBind Pressed")
end)

local Dropdown = Category:AddDropdown("Dropdown", {
	"Item 1",
	"Item 2",
	"Item 3",
	"Item 4",
	"Item 5",
	"Item 6",
	"Item 7",
	"Item 8",
	"Item 9",
	"Item 10",
}, function(selected)
	print(selected)
end)
