
--[[-------------------------------------------------------------------------------------------------------
 Hud related
---------------------------------------------------------------------------------------------------------]]
LuaLibFire = {}


--[[-------------------------------------------------------------------------------------------------------
SendEvent
---------------------------------------------------------------------------------------------------------]]

-- LEGACY: to be deleted past beyond August 2011
function LuaLibFire:SendEvent(...)
	local param1 = select(1, ...);
	local param2 = select(2, ...);
	local param3 = select(3, ...);
	local param4 = select(4, ...);
	local param5 = select(5, ...);
	local param6 = select(6, ...);
	local param7 = select(7, ...);
	SendDominoFireEvent(tostring(param1), tostring(param2), tostring(param3), tostring(param4), tostring(param5), tostring(param6), tostring(param7));
end
