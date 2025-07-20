local Lighting = game:GetService("Lighting")

-- Remove existing skybox
local oldSky = Lighting:FindFirstChildOfClass("Sky")
if oldSky then
    oldSky:Destroy()
end

-- Create new dark skybox
local sky = Instance.new("Sky")
sky.SkyboxBk = "rbxassetid://159454299"
sky.SkyboxDn = "rbxassetid://159454296"
sky.SkyboxFt = "rbxassetid://159454293"
sky.SkyboxLf = "rbxassetid://159454286"
sky.SkyboxRt = "rbxassetid://159454300"
sky.SkyboxUp = "rbxassetid://159454288"
sky.Parent = Lighting

-- Darken environment
Lighting.Ambient = Color3.new(0, 0, 0)
Lighting.OutdoorAmbient = Color3.new(0, 0, 0)
