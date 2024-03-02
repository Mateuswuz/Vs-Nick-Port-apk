local opponentDrain = 0.03
local onBeatDrain = 0
local drainLimit = 0.1
function onUpdate(e)
	curHealth = getProperty('health')
end
function opponentNoteHit(id, pos, type, sustain)
	if curHealth >= drainLimit then
		local drain = calculateHealthDrain()
		setProperty('health', curHealth - drain)
	end
end
function calculateHealthDrain()
    if curHealth == 2 then
        return opponentDrain
	elseif curHealth > 0 then
        return opponentDrain * (curHealth / 2)
    end
    return 0
end
function onBeatHit()
	if curHealth >= drainLimit then
		setProperty('health', curHealth - onBeatDrain)
	end
end