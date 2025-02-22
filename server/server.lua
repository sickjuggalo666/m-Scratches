ESX = exports['es_extended']:getSharedObject()

local cards = {"scratchcard01", "scratchcard02", "scratchcard03", "scratchcard04", "scratchcard05"}
for k, v in pairs(cards) do
    ESX.RegisterUsableItem(v, function(source, item) 
        local src = source
        local Player = ESX.GetPlayerFromId(src)
        if exports.ox_inventory:GetSlot(inv, item.slot) ~= nil then
            TriggerClientEvent("m-Scratches:Client:OpenCard", source, v) 
        end
    end)
end

RegisterServerEvent("m-Scratches:Server:RewardCard")
AddEventHandler("m-Scratches:Server:RewardCard", function(card)
    local src = source 
    local Player = ESX.GetPlayerFromId(src)
    local Prob = math.random(1,100)
    local playerCoords = GetEntityCoords(GetPlayerPed(src))
    if card == "Card01" then
        local Amount = math.random(Config.Rewards["ScratchCard01"].minReward, Config.Rewards["ScratchCard01"].maxReward)
        if Prob <= Config.Rewards["ScratchCard01"].chancePremiumReward then
            if Player.RemoveItem("scratchcard01") then
                Player.AddMoney("money", Config.Rewards["ScratchCard01"].premiumReward)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 01**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard01"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.RemoveItem("scratchcard01") then
                Player.AddMoney("money", Amount)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 01".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    elseif card == "Card02" then
       local Amount = math.random(Config.Rewards["ScratchCard02"].minReward, Config.Rewards["ScratchCard02"].maxReward)
        if Prob <= Config.Rewards["ScratchCard02"].chancePremiumReward then
            if Player.RemoveItem("scratchcard02") then
                Player.AddMoney("money", Config.Rewards["ScratchCard02"].premiumReward)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 02**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard02"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.RemoveItem("scratchcard02") then
                Player.AddMoney("money", Amount)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 02".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    elseif card == "Card03" then
        local Amount = math.random(Config.Rewards["ScratchCard03"].minReward, Config.Rewards["ScratchCard03"].maxReward)
        if Prob <= Config.Rewards["ScratchCard03"].chancePremiumReward then
            if Player.RemoveItem("scratchcard03") then
                Player.AddMoney("money", Config.Rewards["ScratchCard03"].premiumReward)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 03**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard03"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.RemoveItem("scratchcard03") then
                Player.AddMoney("money", Amount)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 03".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    elseif card == "Card04" then
        local Amount = math.random(Config.Rewards["ScratchCard04"].minReward, Config.Rewards["ScratchCard04"].maxReward)
        if Prob <= Config.Rewards["ScratchCard04"].chancePremiumReward then
            if Player.RemoveItem("scratchcard04") then
                Player.AddMoney("money", Config.Rewards["ScratchCard04"].premiumReward)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 04**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard04"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.RemoveItem("scratchcard04") then
                Player.AddMoney("money", Amount)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 04".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    elseif card == "Card05" then
        local Amount = math.random(Config.Rewards["ScratchCard05"].minReward, Config.Rewards["ScratchCard05"].maxReward)
        if Prob <= Config.Rewards["ScratchCard05"].chancePremiumReward then
            if Player.RemoveItem("scratchcard05") then
                Player.AddMoney("money", Config.Rewards["ScratchCard05"].premiumReward)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "📜 **Open a Scratch Ticket 05**".. "\n".. "**Type: ** 💰 Premium Prize".. "\n".. "**Amount Earn:** "..Config.Rewards["ScratchCard01"].premiumReward.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Config.Rewards["ScratchCard05"].premiumReward..Language[LanguageType].currencyType, 'success', 5000)
            end
        else
            if Player.RemoveItem("scratchcard05") then
                Player.AddMoney("money", Amount)
                LogScratch( "**❗️ [ m-Scratches ]** ❗️" .. "\n" ..  "\n".. "**🧍‍♂️ [Player Information]** " .. "\n" ..  "**Player Name:** "..Player.PlayerData.name.. "\n" ..  "**CitizenID:** "..Player.PlayerData.citizenid.. "\n" ..  "**Location:** "..playerCoords.. "\n" ..  "\n".. "**📃 [LOG]**".. "\n" ..  "\n".. "**Ticket: ** Card 05".. "\n".. "**Type: ** Normal Prize 💵".. "\n".. "**Amount Earn:** "..Amount.."$" )
                TriggerClientEvent('m-Scratches:Client:Notify', src, Language[LanguageType].youWon.." "..Amount..Language[LanguageType].currencyType, 'success', 5000)
            end
        end
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    print("^4m-Scratches ^0|^2 Script started successfully.^7")
    print("^4m-Scratches ^0|^5 Version: 1.1.0^7")
    print("^4m-Scratches ^0|^2 If you need any help contact:^7")
    print("^4m-Scratches ^0|^5 discord.gg/marcinhu^7")
    print("^4m-Scratches ^0|^2 Thank you for being our customer^7") 
end)

-- ██╗░░░░░░█████╗░░██████╗░░██████╗
-- ██║░░░░░██╔══██╗██╔════╝░██╔════╝
-- ██║░░░░░██║░░██║██║░░██╗░╚█████╗░
-- ██║░░░░░██║░░██║██║░░╚██╗░╚═══██╗
-- ███████╗╚█████╔╝╚██████╔╝██████╔╝
-- ╚══════╝░╚════╝░░╚═════╝░╚═════╝░

function LogScratch(message)
    local embed = {}
    embed = {
        {
            ["color"] = 65280, -- GREEN = 65280 --- RED = 16711680
            ["title"] = "m-Scratches | Logs",
            ["description"] = "" .. message ..  "",
            ["footer"] = {
                ["icon_url"] = "https://media.discordapp.net/attachments/1049749773185470537/1049749885043351662/transparent-logo.png",
                ["text"] = 'Created By m-Scripts | https://marcinhu.tebex.io/ ',
            },
        }
    }
    PerformHttpRequest(Config.Settings.Webhook, 
    function(err, text, headers) end, 'POST', json.encode({username = 'm-Scratches - Logs', embeds = embed}), { ['Content-Type'] = 'application/json' })
end


uh i think its good?