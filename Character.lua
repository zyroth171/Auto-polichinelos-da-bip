-- Character.lua
local Character = {}

function Character.new(player)
    return player.Character or game.Players.LocalPlayer.Character
end

return Character
