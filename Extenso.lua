-- Extenso.lua
local Extenso = {}

function Extenso:Convert(number)
    local numerosExtenso = {
        "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove", "dez"
    }

    return numerosExtenso[number] or "Número não suportado"
end

return Extenso
