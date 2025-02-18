-- RemoteChat.lua
local RemoteChat = {}

function RemoteChat:Send(message)
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteChat"):FireServer(message)
end

return RemoteChat
