local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "c00lGui"

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.Position = UDim2.new(0.35, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.BorderSizePixel = 2

Button.Parent = Frame
Button.Text = "Destroy Server 😈"
Button.Position = UDim2.new(0.2, 0, 0.4, 0)
Button.Size = UDim2.new(0, 180, 0, 50)
Button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.MouseButton1Click:Connect(function()
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= game.Players.LocalPlayer then
            v:Kick("coolgui > you")
        end
    end
end)
