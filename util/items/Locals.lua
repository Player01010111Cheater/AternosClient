return function()
    local LocalVars = {}
    LocalVars.players = game:GetService("Players")
    LocalVars.player = LocalVars.players.LocalPlayer
    LocalVars.replicated_st = game:GetService("ReplicatedStorage")
    LocalVars.playergui = LocalVars.player.PlayerGui
    LocalVars.httpservice = game:GetService("HttpService")
    return LocalVars
end
