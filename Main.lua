-- Main.lua
local function Agachar()
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        humanoid.HipHeight = 0  -- Ajusta para agachar
    end
end

local function Levantar()
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
    if humanoid then
        humanoid.HipHeight = 2  -- Altura padrão quando em pé
    end
end

local function PularEGirar()
    local humanoid = game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
    if humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        humanoid:Move(Vector3.new(0, 100, 0))  -- Força para o pulo

        local bodyGyro = Instance.new('BodyGyro')
        bodyGyro.MaxTorque = Vector3.new(400000, 400000, 400000)
        bodyGyro.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        bodyGyro.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart

        wait(1)
        bodyGyro.CFrame = bodyGyro.CFrame * CFrame.Angles(0, math.rad(360), 0)
        wait(0.5)
        bodyGyro:Destroy()
    end
end

local function DoJJ(n, prefix)
    local success, extenso = pcall(function() return require("Modules.Extenso"):Convert(n) end)
    if not success then return end

    prefix = prefix or ''

    Agachar()
    wait(0.2)
    PularEGirar()
    wait(1)

    require("Modules.RemoteChat"):Send(extenso .. prefix)
end

local function StartThread()
    local Config = {Start = 1, End = 10, Prefix = ""}
    if not Config.Start or not Config.End then return end
    for i = Config.Start, Config.End do
        DoJJ(i, Config.Prefix)
        wait(2)
    end
end

StartThread()
