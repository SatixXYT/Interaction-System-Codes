
local ReplicatedStorage = game:GetService("ReplicatedStorage") --Obtenemos el servicio 'Replicated Storage'
local Jugadores = game:GetService("Players") --Obtenemos el servicio 'Players'

local IS  = require(ReplicatedStorage:WaitForChild("Common").ISV2) -- Obtenemos IS por medio de un require()

local Jugador = Jugadores.LocalPlayer -- Obtenemos el jugador
local ParteDeInteractuado = workspace.PopUpAd

local DuracionDeInteractuado = 5 --Lo que quieres que dure el interactuado
local Cooldown = 0.5 --Lo que quieres que tarde en volver a poder interactuar

local Interaccion = IS.new(Jugador, ParteDeInteractuado) --Creamos un nuevo interactuado, el cual necesita 2 argumentos
Interaccion:Start(DuracionDeInteractuado, Cooldown) -- Inicializamos el interactuado
