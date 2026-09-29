
--[[-------------------------------------------------------------------------------------------------------
LuaLibStateless
---------------------------------------------------------------------------------------------------------]]
LuaLibStateless = {}

--[[-------------------------------------------------------------------------------------------------------
Clone

Helper to localise data and function referenced by current stateless box.

Solves this bug: http://mdc-web-tomcat17.ubisoft.org/confluence/pages/viewpage.action?pageId=100967248
Or search for "Domino Stateless tag - "Lose a connection" Bug" in confluence if the link fails.

---------------------------------------------------------------------------------------------------------]]
function LuaLibStateless:Clone(box)
	local clone = {}
	for k,v in pairs(box) do
		clone[k] = v
		--LogConsole("clone K: "..tostring(k).." v: "..tostring(v))
	end
	return clone, box;
end
