

--[[-------------------------------------------------------------------------------------------------------
 Register/Unregister events
---------------------------------------------------------------------------------------------------------]]
LuaLibEvents = {}

--[[-------------------------------------------------------------------------------------------------------
    Will register a group event based on an anchor name.
    Create a function with the name Event_*Anchor* in order to use the callback.
    The Callback id is auto named and saved in the self (box)
	WARNING: if two callback use the same function, the second one won't be registered. Todo: fix that.
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:GroupRegisterEvent(box, functionCallback, group, eventNameFilter)
    assert(box);
    functionCallback = functionCallback or "";
    eventNameFilter = eventNameFilter or "";
    if (group ~= nil and box["callid"..functionCallback] == nil) then
        box["callid"..functionCallback] = CEntityGroupManager_GetInstance():RegisterScriptEvent(group, eventNameFilter, box, functionCallback);
    end
end

--[[-------------------------------------------------------------------------------------------------------
    Will Un-register a group event based on an anchor name.
    The Callback id is auto deleted (nil) in the self (box)
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:GroupUnregisterEvent(box, functionCallback, group)
    assert(box);
    functionCallback = functionCallback or "";
	if (group ~= nil and box["callid"..functionCallback] ~= nil) then
		CEntityGroupManager_GetInstance():UnregisterScriptEvent(group, box["callid"..functionCallback]);
		box["callid"..functionCallback] = nil;
	end
end

--[[-------------------------------------------------------------------------------------------------------
    Send an event to all entities in a group.
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:GroupSendRegisteredEvent(group, event)
	assert(group);
	for _,e in ipairs(GetEntitiesInGroup(group)) do
		SendRegisteredEventToEntity(e, event, {});
	end
end

--[[-------------------------------------------------------------------------------------------------------
    Will register an entity event.
    The Callback id is auto named and saved in the self (box)
	WARNING: if two callback use the same function, the second one won't be registered. Todo: fix that.
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:RegisterEvent(box, functionCallback, entity, eventNameFilter)
    assert(box);
    functionCallback = functionCallback or "";
    eventNameFilter = eventNameFilter or "";
	if (entity ~= nil and box["callid"..functionCallback] == nil) then
		box["callid"..functionCallback] = CScriptCallbackSystem_GetInstance():RegisterEventCallback(entity, box, functionCallback, eventNameFilter);
	end
end

--[[-------------------------------------------------------------------------------------------------------
    Will Un-register an entity event based on an anchor name.
    The Callback id is auto deleted (nil) in the self (box)
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:UnregisterEvent(box, functionCallback, entity)
    assert(box);
    functionCallback = functionCallback or "";
	if (entity ~= nil and box["callid"..functionCallback] ~= nil) then
		CScriptCallbackSystem_GetInstance():RemoveCallback(entity, box["callid"..functionCallback]);
		box["callid"..functionCallback] = nil;
	end
end

--[[-------------------------------------------------------------------------------------------------------
    Will register a generic event.
	WARNING: if two callback use the same function, the second one won't be registered. Todo: fix that.
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:RegisterGenericEvent(box, functionCallback, eventNameFilter)
    assert(box);
	assert(functionCallback);
    assert(eventNameFilter);
	if (box["callid"..functionCallback] == nil) then
		box["callid"..functionCallback] = CScriptCallbackSystem_GetInstance():RegisterGenericCallback(box, functionCallback, eventNameFilter)
	end
end

--[[-------------------------------------------------------------------------------------------------------
    Will Un-register a generic event. The Callback id is auto deleted (nil) in the self (box)
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:UnregisterGenericEvent(box, functionCallback, eventNameFilter)
    assert(box);
	assert(functionCallback);
    assert(eventNameFilter);
	if (box["callid"..functionCallback] ~= nil) then
		CScriptCallbackSystem_GetInstance():RemoveGenericCallback(eventNameFilter, box["callid"..functionCallback])
		box["callid"..functionCallback] = nil;
	end
end

--[[-------------------------------------------------------------------------------------------------------
    Will register a message listener.
	WARNING: if two callback use the same function, the second one won't be registered. Todo: fix that.
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:RegisterMessageListener(box, functionCallback, eventNameFilter)
    assert(box);
	assert(functionCallback);
    assert(eventNameFilter);
	if (box["callid"..functionCallback] == nil) then
		box["callid"..functionCallback] = CScriptCallbackSystem_GetInstance():RegisterMessageListener(eventNameFilter, box, functionCallback)
	end
end


--[[-------------------------------------------------------------------------------------------------------
    Will Unregister a message listener.
	WARNING: if two callback use the same function, the second one won't be registered. Todo: fix that.
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:UnregisterMessageListener(box, functionCallback)
    assert(box);
	assert(functionCallback);
	if (box["callid"..functionCallback] ~= nil) then
		CScriptCallbackSystem_GetInstance():UnregisterMessageListener(box["callid"..functionCallback])
		box["callid"..functionCallback] = nil;
	end
end


--[[-------------------------------------------------------------------------------------------------------
    Will register a spawn callback.
	WARNING: if two callback use the same function, the second one won't be registered. Todo: fix that.
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:RegisterSpawnListener(box, entity, functionCallback)
    assert(box);
	assert(functionCallback);
	if (box["callid"..functionCallback] == nil) then
		box["callid"..functionCallback] = CScriptCallbackSystem_GetInstance():RegisterOnSpawnCallback(entity, box, functionCallback);
	end
end


--[[-------------------------------------------------------------------------------------------------------
    Will Unregister a message listener.
	WARNING: if two callback use the same function, the second one won't be registered. Todo: fix that.
---------------------------------------------------------------------------------------------------------]]
function LuaLibEvents:UnregisterSpawnListener(box, entity, functionCallback)
    assert(box);
	assert(functionCallback);
	if (box["callid"..functionCallback] ~= nil) then
		CScriptCallbackSystem_GetInstance():RemoveCallback(entity, box["callid"..functionCallback]);
		box["callid"..functionCallback] = nil;
	end
end


