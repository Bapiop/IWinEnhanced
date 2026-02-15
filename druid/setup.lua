if UnitClass("player") ~= "Druid" then return end

SLASH_IWINDRUID1 = "/iwin"
function SlashCmdList.IWINDRUID(command)
	if not command then return end
	local arguments = {}
	for token in string.gfind(command, "%S+") do
		table.insert(arguments, token)
	end
	if arguments[1] == "frontshred" then
		if arguments[2] ~= "on"
			and arguments[2] ~= "off"
			and arguments[2] ~= nil then
				DEFAULT_CHAT_FRAME:AddMessage("Unkown parameter. Possible values: on, off.")
				return
		end
	end
    if arguments[1] == "frontshred" then
        IWin_Settings["frontShred"] = arguments[2]
	    DEFAULT_CHAT_FRAME:AddMessage("Front Shred: " .. IWin_Settings["frontShred"])
	else
		DEFAULT_CHAT_FRAME:AddMessage("Usage:")
		DEFAULT_CHAT_FRAME:AddMessage(" /iwin : Current setup")
		DEFAULT_CHAT_FRAME:AddMessage(" /iwin frontshred [" .. IWin_Settings["frontShred"] .. "] : Setup for Front Shredding")
    end
end

SLASH_IWINFF1 = "/ff"
function SlashCmdList.IWINFF()
	IWin:InitializeRotation()
	-- Find a nearby enemy that doesn't already have Faerie Fire
	local tries = 12
	local found = false
	for i = 1, tries do
		IWin:TargetEnemy()
		if UnitExists("target")
			and not UnitIsDead("target")
			and not UnitIsFriend("target", "player")
			and UnitAffectingCombat("target")
			and not IWin:IsBuffActive("target", "Faerie Fire")
			and not IWin:IsBuffActive("target", "Faerie Fire (Feral)") then
				found = true
				break
		end
		TargetNearestEnemy()
	end
	if not found then
		DEFAULT_CHAT_FRAME:AddMessage("/ff: No nearby enemy without Faerie Fire found.")
		return
	end

	-- Cast feral/caster Faerie Fire on the selected target
	IWin:FaerieFireFeral()
	CastSpellByName("Faerie Fire")
	CastSpellByName("Faerie Fire(Rank 4)")
	CastSpellByName("Faerie Fire(Rank 3)")
	CastSpellByName("Faerie Fire(Rank 2)")
	CastSpellByName("Faerie Fire(Rank 1)")
end