-- references
local player = game:GetService("Players").LocalPlayer
local playerGui = player.PlayerGui
local cmdFrame = playerGui.CMD.Frame
local commandTemplate = cmdFrame.LocalScript.CommandTemplate
local commandsUsed = cmdFrame.CommandsUsed

local function AddText(commandText, textColor)
    local commandClone = commandTemplate:Clone()
    commandClone.Text = commandText
    commandClone.TextColor3 = textColor
    commandClone.Parent = commandsUsed
    commandClone.Position = UDim2.new(0, 0, 0, #commandsUsed:GetChildren() * commandClone.Size.Y.Offset)
end
