-- Function to create a checkbox
local function createCheckbox(parent, text, position)
    local checkbox = Instance.new("TextButton")
    checkbox.Name = "Checkbox"
    checkbox.Text = text
    checkbox.Size = UDim2.new(0, 200, 0, 30)
    checkbox.Position = position
    checkbox.Font = Enum.Font.SourceSans
    checkbox.TextSize = 18
    checkbox.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkbox.BackgroundTransparency = 0.5
    checkbox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    checkbox.BorderSizePixel = 0
    checkbox.AutoButtonColor = false
    checkbox.Parent = parent

    local checkIcon = Instance.new("TextLabel")
    checkIcon.Name = "CheckIcon"
    checkIcon.Text = "✔"
    checkIcon.Size = UDim2.new(0, 30, 0, 30)
    checkIcon.Position = UDim2.new(0, 5, 0, 0)
    checkIcon.Font = Enum.Font.SourceSans
    checkIcon.TextSize = 20
    checkIcon.TextColor3 = Color3.fromRGB(0, 255, 0)
    checkIcon.BackgroundTransparency = 1
    checkIcon.Parent = checkbox
    checkIcon.Visible = false

    -- Function to toggle checkbox state
    local function toggleCheckbox()
        if checkIcon.Visible then
            checkIcon.Visible = false
        else
            checkIcon.Visible = true
        end
    end

    checkbox.Activated:Connect(toggleCheckbox)

    return checkbox
end

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create Frame to contain checkboxes
local frame = Instance.new("Frame")
frame.Name = "CheckboxFrame"
frame.Size = UDim2.new(0, 250, 0, 150)
frame.Position = UDim2.new(0.5, -125, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create checkboxes
local checkbox1 = createCheckbox(frame, "Infinite Jump", UDim2.new(0, 10, 0, 10))
local checkbox2 = createCheckbox(frame, "Invincibility", UDim2.new(0, 10, 0, 50))
-- Add more checkboxes as needed

-- Example function to handle checkbox state
checkbox1.MouseButton1Click:Connect(function()
    if checkbox1.BackgroundColor3 == Color3.fromRGB(50, 50, 50) then
        checkbox1.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    else
        checkbox1.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    end
end)

-- Example function to handle checkbox state
checkbox2.MouseButton1Click:Connect(function()
    if checkbox2.BackgroundColor3 == Color3.fromRGB(50, 50, 50) then
        checkbox2.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    else
        checkbox2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    end
end)
