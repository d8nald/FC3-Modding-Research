
LuaLibDebug = {}

--[[-------------------------------------------------------------------------------------------------------
	Recursively log a table content to console.
---------------------------------------------------------------------------------------------------------]]
function LuaLibDebug:LogConsoleTable(preValue, value)
    for k,v in pairs(value) do
        if( type(v) == "table" ) then
            self:LogConsoleTable(preValue .. "["..tostring(k).."] ", v);
        else
            LogConsole(preValue .. "["..tostring(k).."] " .. tostring(v) .. " ")
        end
    end
end
