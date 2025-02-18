-- Notification.lua
local Notification = {}

function Notification:Notify(code, title, subtitle, icon)
    print("Notificação: " .. title)
end

return Notification
