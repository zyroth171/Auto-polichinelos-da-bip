-- UI.lua
local UI = {}

function UI:SetVersion(version)
    print("Versão: " .. version)
end

function UI:SetLanguage(language)
    print("Idioma: " .. language)
end

function UI:SetRainbow(enabled)
    print("Efeito Arco-Íris: " .. tostring(enabled))
end

function UI:SetParent(parent)
    print("UI vinculada ao objeto: " .. parent.Name)
end

return UI
