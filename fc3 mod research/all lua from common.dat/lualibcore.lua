

--[[-------------------------------------------------------------------------------------------------------
	Core functionalities
---------------------------------------------------------------------------------------------------------]]
LuaLibCore = {}


--[[-------------------------------------------------------------------------------------------------------
	Get the lua callstack and trim the output to get the executing project.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCore:GetProjectName()
	local fullStackStr = System:GetCurrentCallstack();
	--Lua Regular Expression
	--http://www.lua.org/pil/20.1.html
	--http://www.lua.org/pil/20.2.html
	--http://www.lua.org/pil/20.3.html
	local regexp = 	"%(domino%\\user%\\[[%w%s%]*%\\]-([%w%s]+)%.[%w%s]+%.lua";
	_,_,name =  string.find(fullStackStr, regexp);
	if(name == nil) then
		System:Warning("Cannot get Project Name from lua call stack");
	end
	return name;
end

--[[-------------------------------------------------------------------------------------------------------
	Error Catch system. Will throw an error if the control is unplugged, otherwise will send the error message
	on target data anchor and output on specified control anchor.

	Return true if error was catched.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCore:ThrowError(box, msg, errorAnchorControl, errorAnchorData)
	assert(box)
	if(self:IsPlugged(box, errorAnchorControl)) then
		errorAnchorData = msg;
		errorAnchorControl(box);
		return true;
	else
		System:Warning(msg);
	end
	return false;
end

--[[-------------------------------------------------------------------------------------------------------
	Look if an anchor is plugged
---------------------------------------------------------------------------------------------------------]]
function LuaLibCore:IsPlugged(box, ...)
	assert(box);
	for i=1, select('#', ...) do
		local arg = select(i, ...);
		if(box[arg] ~= DummyFunction) then
			return true;
		end
	end
	return false;
end

--[[-------------------------------------------------------------------------------------------------------
	Validate params are non nil.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCore:AssertNotNil(...)
	for i=1, select('#', ...) do
		local arg = select(i, ...);
		if(arg == nil) then
			System:Warning("Box param nb "..i.." is nil.");
			return false;
		end
	end
	return true;
end

function LuaLibCore:TableShuffle(t)
    local rand = math.random
    assert(t, "table.shuffle() expected a table, got nil")
    local iterations = #t
    local j

    for i = iterations, 2, -1 do
        j = rand(i)
        t[i], t[j] = t[j], t[i]
    end
end
