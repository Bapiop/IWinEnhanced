if UnitClass("player") ~= "Druid" then return end

function IWin:GetCastTimeWrath()
	if IWin_CastTime["Wrath"] == nil then
		IWin_CastTime["Wrath"] = IWin:GetCastTime("Wrath")
	end
	return IWin_CastTime["Wrath"]
end

function IWin:GetCastTimeStarfire()
	if IWin_CastTime["Starfire"] == nil then
		IWin_CastTime["Starfire"] = IWin:GetCastTime("Starfire")
	end
	return IWin_CastTime["Starfire"]
end

-- allow 15 seconds or less to be considered a short fight, ensures that addon works on lower level mobs
function IWin:IsShortFight()
	return IWin:GetTimeToDie() < 15
end