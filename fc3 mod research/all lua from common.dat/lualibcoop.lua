
--[[-------------------------------------------------------------------------------------------------------
 Coop related
---------------------------------------------------------------------------------------------------------]]
LuaLibCoop = {}

LuaLibCoop.m_MapName = ""

--[[-------------------------------------------------------------------------------------------------------
ListClear
	Remove all entities from the list..
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:ListClear(list)

	--self:ListDebugLog( list, "LuaLibCoop:ListClear() List before:" )

	if( list == nil ) then
		System:Warning("LuaLibCoop:ListClear(): list is nil");
	end

	for i,v in ipairs( list ) do
		list[i] = nil
	end

	--self:ListDebugLog( list, "LuaLibCoop:ListClear() List After:" )

end


--[[-------------------------------------------------------------------------------------------------------
ListSort
	Sort the list by the name of the entities.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:ListSort(list)

	local byName ={}

	if( list == nil ) then
		System:Warning("LuaLibCoop:ListSort(): list is nil");
	end

	--self:ListDebugLog( list, "LuaLibCoop:ListSort() List before:" )

	local nameToEntity = {}
	for i,n in ipairs(list) do
		local name = CAPI_Entity.GetName(n)
		nameToEntity[name] = n
		table.insert(byName, name)
	end
	self:ListNaturalSort(byName)
	
	--self:ListDebugLog( byName, "LuaLibCoop:ListSort() List sorted by name:" )

	self:ListClear(list)

	for i,n in ipairs(byName) do
		local ent = nameToEntity[n]
		table.insert(list, ent)
	end

	--self:ListDebugLog( list, "LuaLibCoop:ListSort() List after:" )

	return list

end

--[[-------------------------------------------------------------------------------------------------------
ListNaturalSort
	Sort the list by the name of the entities for real.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:ListNaturalSort(list)
	--LogConsole("LuaLibCoop:ListNaturalSort()")

	--self:ListDebugLog(list, "LuaLibCoop:ListNaturalSort:Before" );
	table.sort( list, NaturalSort_Compare );
	--self:ListDebugLog(list, "LuaLibCoop:ListNaturalSort:After" );
	
	return list;
end

--[[-------------------------------------------------------------------------------------------------------
ListRemove
	Remove data from the list.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:ListRemove(list,data)
	--[[
	LogConsole( "LuaLibCoop:ListRemove() remove data == "..tostring(data) )
	self:ListDebugLog(list, "LuaLibCoop:ListRemove() List before:" );
	--]]

	if( list == nil ) then
		System:Warning("LuaLibCoop:ListRemove(): list is nil");
	end


	for i,v in ipairs(list) do
		if (data == v) then
			--LogConsole( "LuaLibCoop:ListRemove() remove:" )
			table.remove(list, i);
			break;
		end
    end
	
	--self:ListDebugLog(list, "LuaLibCoop:ListRemove() List after:" );
	
end

--[[-------------------------------------------------------------------------------------------------------
ListRandom
	Remove data from the list.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:ListRandom(list)

	if( list == nil or #list==0) then
		System:Warning("LuaLibCoop:ListRandom(): list is nil or empty");
	end

	data = list[math.random(1, #list)]

	--[[
		LogConsole( "LuaLibCoop:ListRandom() data == "..tostring(data) )
	--]]
	return data
end

--[[-------------------------------------------------------------------------------------------------------
ListCopy
	copy one listA to listB.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:ListCopy(listA)
	
	if( listA == nil or #listA==0) then
		System:Warning("LuaLibCoop:ListCopy(): list is nil or empty");
	end
	
	local list = {};
	
	--data = list[math.random(1, #list)]
	for i,v in ipairs(listA) do
		table.insert( list, v )
    end		
	
	--self:ListDebugLog( list, "LuaLibCoop:ListCopy() List after:" )
	
	return list
end

function LuaLibCoop:ListCopy2(listA,listB)
	
	if( listA == nil or #listA==0) then
		System:Warning("LuaLibCoop:ListCopy(): list is nil or empty");
	end
	
	
	--data = list[math.random(1, #list)]
	for i,v in ipairs(listA) do
		table.insert( listB, v )
    end		
	
	--self:ListDebugLog( listB, "LuaLibCoop:ListCopy() List after:" )
	
	return listB
end

--[[-------------------------------------------------------------------------------------------------------
ListDebugLog
	Log all data to the console.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:ListDebugLog( list, infoString, useName )	
	
	if ( useName == nil ) then
		--LogConsole( "LuaLibCoop:ListDebugLog:: useName" )
		useName = false;
	end
	
	if ( infoString ~= nil ) then
		LogConsole( "LuaLibCoop:ListDebugLog:: "..tostring(infoString) )
	else
		LogConsole( "LuaLibCoop:ListDebugLog::" )
	end
	
	for i,n in ipairs(list) do
		local value = "__temp__";
		if (useName == true ) then
			value = CAPI_Entity.GetName(n);
		else
			value = n;
		end
		
		LogConsole( "LuaLibCoop:ListDebugLog:: - "..tostring(value) )
	end
	
	LogConsole( "LuaLibCoop:ListDebugLog::End" )	
end


--[[-------------------------------------------------------------------------------------------------------
GetEntityByName
	return a entity with the exact name.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:GetEntityByName( name )
	
	local ents = GetEntitiesStartsWith( name );
	for k,v in pairs(ents) do
		if ( name == CAPI_Entity.GetName(v) ) then			
			return v;
		end
	end			
end


--[[-------------------------------------------------------------------------------------------------------
DebugMode
	A global control for showing logging debug messages.
---------------------------------------------------------------------------------------------------------]]
LuaLibCoop.m_debugMode = false -- set to true til the boxes are in.

--[[----------------------------------------------------
DebugModeSet
	Enable or disable the debug mode.
------------------------------------------------------]]
function LuaLibCoop:DebugModeSet(mode)
	if (mode) then
		LogConsole("LuaLibCoop:DebugModeSet() Enable")
		LuaLibCoop.m_debugMode = true
	else
		LogConsole("LuaLibCoop:DebugModeSet() Disable")
		LuaLibCoop.m_debugMode = false
	end
end

--[[----------------------------------------------------
DebugModeGet
	Return the current debug mode.
------------------------------------------------------]]
function LuaLibCoop:DebugModeGet()
	return LuaLibCoop.m_debugMode
end




--[[-------------------------------------------------------------------------------------------------------
DebugLog
	Prints the debugText to r:\fc3\main\DominoDebug.log by default Only in editor mode.
	Also print the text to the log file.
	Only works if m_debugMode is set to true.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:DebugLog(debugText, fileName)

	if(self:DebugModeGet() ~= true) then
		--LogConsole( "Debug mode disabled" )
		return
	end

	local gameModeName = GetCurrentGameModeName();

	if (gameModeName == "Editor") then
		local path = "r:\\fc3\\main\\"
		if (fileName == nil) then
			path = path.."DominoDebug.log"
		else
			path = path..tostring(fileName)
		end
		local file, err = io.open(path, 'a+')
		if(file ~= nil and err == nil) then
			local outputText = ""
			outputText = outputText.."["..tostring(os.date()).."]"
			outputText = outputText.." - "..tostring(debugText)
			io.output(file)
			io.write(outputText.."\n")
			file:flush()
			file:close()
			file = nil
		end
	end
	LogConsole( debugText )
end

--[[-------------------------------------------------------------------------------------------------------
DebugLogClear
	Clear the log file.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:DebugLogClear(fileName)
	local gameModeName = GetCurrentGameModeName();

	if (gameModeName == "Editor") then

		local path = "r:\\fc3\\main\\"
		if (fileName == nil) then
			path = path.."DominoDebug.log"
		else
			path = path..tostring(fileName)
		end

		local file, err = io.open(path, 'w+')
		if(file ~= nil and err == nil) then
			local outputText = ""
			io.output(file)
			io.write(outputText)
			file:flush()
			file:close()
			file = nil
		end
	end
end



function LuaLibCoop:BoxListRegisterEvent(box, event, entity, functionCallback)

	--self:DebugLog( "LuaLibCoop:BoxListRegisterEvent("..tostring(box)..", "..tostring(event)..", "..tostring(CAPI_Entity.GetName(entity))..", "..tostring(functionCallback)..")" )

	-- create a list if not alreayd exist
	if(box["callid"..tostring(box)] == nil) then
		box["callid"..tostring(box)] = {}
	end

	-- add the data for the entity to the boxs list.
	if(box["callid"..tostring(box)][entity] == nil) then
		--LogConsole( string.format( "UseSTP:Start() add == %s", self.Entity) )
		box["callid"..tostring(box)][entity] = {["state"] = "undefined"}

		box["callid"..tostring(box)][entity][event] = nil

		-- add the callback
		box["callid"..tostring(box)][entity][event] = CScriptCallbackSystem_GetInstance():RegisterEventCallback(entity, box, functionCallback, event)

	end
end


function LuaLibCoop:BoxListSetState(box, entity, state)
	--self:DebugLog( "LuaLibCoop:BoxListSetState("..tostring(box)..", "..tostring(CAPI_Entity.GetName(entity))..", "..tostring(state)..")")
	if(box["callid"..tostring(box)][entity] ~= nil) then
		box["callid"..tostring(box)][entity]["state"] = state
	end
end


function LuaLibCoop:BoxListGetState(box, entity)
	--self:DebugLog( "LuaLibCoop:BoxListGetState("..tostring(box)..", "..tostring(CAPI_Entity.GetName(entity))..")")

	if(box["callid"..tostring(box)][entity] ~= nil) then
		return box["callid"..tostring(box)][entity]["state"]
	end
end


function LuaLibCoop:BoxListUnRegister(box)

	--self:DebugLog( "LuaLibCoop:BoxListUnRegister("..tostring(box).." )" )

	if (box["callid"..tostring(box)] ~=nil) then
		for k,v in pairs(box["callid"..tostring(box)]) do
			self:BoxListUnRegisterEntityAllEvents( box, k )
		end
		box["callid"..tostring(box)] = {}
	end
end


function LuaLibCoop:BoxListUnRegisterEntityAllEvents(box, entity)
	--self:DebugLog( "LuaLibCoop:BoxListUnRegisterEntityAllEvents("..tostring(box)..", "..tostring(CAPI_Entity.GetName(entity))..")" )

	if (box["callid"..tostring(box)][entity] ~=nil) then
		box["callid"..tostring(box)][entity]["state"] = nil

		for k,v in pairs(box["callid"..tostring(box)][entity]) do
			--self:DebugLog( "LuaLibCoop:BoxListUnRegisterEntityAllEvents( > "..tostring(name)..") k == "..tostring(k)..", v == "..tostring(v)..")" )

			CScriptCallbackSystem_GetInstance():RemoveCallback(entity, box["callid"..tostring(box)][entity][k] )
			box["callid"..tostring(box)][entity][k] = nil
		end

		box["callid"..tostring(box)][entity] = nil
	end
end

function LuaLibCoop:BoxListUnRegisterEntityEvent(box, event, entity)
	--self:DebugLog( "LuaLibCoop:BoxListUnRegisterEntityEvent("..tostring(box)..", "..tostring(event)..", "..tostring(CAPI_Entity.GetName(entity))..")" )

	if (box["callid"..tostring(box)][entity] ~=nil) then
		if (box["callid"..tostring(box)][entity][event] ~=nil) then
			CScriptCallbackSystem_GetInstance():RemoveCallback(entity, box["callid"..tostring(box)][entity][event] )
			box["callid"..tostring(box)][entity][event] = nil
		end
	end
end


--[[-------------------------------------------------------------------------------------------------------
IntMultiplier
	.
---------------------------------------------------------------------------------------------------------]]

LuaLibCoop.IntMultiplier_2_Player = 0.6
LuaLibCoop.IntMultiplier_3_Player = 0.85

function LuaLibCoop:IntMultiplierSetValue( players2, players3 )
	--LogConsole( "LuaLibCoop:IntMultiplierSetValue(players2 == "..tostring(players2)..", players3 == "..tostring(players3).." )" )
	if (players2 ~= 0) then
		LuaLibCoop.IntMultiplier_2_Player = players2
	end
	if (players3~= 0) then
		LuaLibCoop.IntMultiplier_3_Player = players3
	end
	--LogConsole( "LuaLibCoop:IntMultiplierSetValue(players2 == "..tostring(LuaLibCoop.IntMultiplier_2_Player)..", players3 == "..tostring(LuaLibCoop.IntMultiplier_3_Player).." )" )
end

function LuaLibCoop:IntMultiplier( value, players )
	local newValue

	if (value == 0) then
		return 0
	end
	--LogConsole( "LuaLibCoop:IntMultiplier(players2 == "..tostring(LuaLibCoop.IntMultiplier_2_Player)..", players3 == "..tostring(LuaLibCoop.IntMultiplier_3_Player).." )" )
	if ( players == 2 ) then
		newValue = value * LuaLibCoop.IntMultiplier_2_Player
	elseif ( players == 3 ) then
		newValue = value * LuaLibCoop.IntMultiplier_3_Player
	else
		newValue = value
	end

	newValue = self:RoundOff(newValue, 0)

	if (newValue == 0) then
		newValue = 1
	end

	--LogConsole(string.format( "LuaLibCoop:IntMultiplier(newValue == %s )", newValue ) )
	return newValue

end


--[[-------------------------------------------------------------------------------------------------------
MultiIntMultiplier
	.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:MultiIntMultiplier( int1, int2, int3 )

	local int_1 = int1 or 0;
	local int_2 = int2 or 0;
	local int_3 = int3 or 0;
	local rationInt_1 = 0;
	local rationInt_2 = 0;
	local rationInt_3 = 0;
	local newInt1 = 0;
	local newInt2 = 0;
	local newInt3 = 0;
	
	local nrOfAI = int_1 + int_2 + int_3;
	--LogConsole(string.format( "MultiIntMultiplier(nrOfAI == %s )", nrOfAI ) );

	if ( nrOfAI == 0) then
		return 0, 0, 0;
	end

	newNrOfAI = self:IntMultiplier( nrOfAI, self:GetNrOfPlayers() );
	--LogConsole(string.format( "MultiIntMultiplier(newNrOfAI == %s )", newNrOfAI ) );

	if ( int_1 > 0 ) then
		-- räkna ut int1 ration
		rationInt_1 = int_1/nrOfAI;
	end	
	if ( int_2 > 0 ) then
		rationInt_2 = int_2/nrOfAI;
	end	
	
	--LogConsole(string.format( "MultiIntMultiplier(rationInt_1 == %s )", rationInt_1 ) )

	-- räkna fram hur många int 1 det är nu. resten är int 2
	if ( rationInt_1 > 0 ) then
		newInt1 = self:RoundOff( rationInt_1 * newNrOfAI, 0);
	end
	if ( rationInt_2 > 0 ) then
		newInt2 = self:RoundOff( rationInt_2 * newNrOfAI, 0);
	end
	local newInt3 = newNrOfAI - newInt1 - newInt2;
	if ( newInt3 < 0 ) then
		newInt3 = 0;
	end

	return newInt1, newInt2, newInt3

end


--[[-------------------------------------------------------------------------------------------------------
RoundOff
	Round off the num (>0.5 = 1). RoundOff( value, 0)
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:RoundOff(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end


--[[-------------------------------------------------------------------------------------------------------
GetNrOfPlayers
	Return the number of current players.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:GetNrOfPlayers(trueCount)
	local playerCount = 0
	trueCount = trueCount or false
	
	if(LuaLibCoop.m_PlayersOverride and trueCount == false ) then
		--LogConsole( "LuaLibCoop:GetNrOfPlayers() Use override value " )
		playerCount = LuaLibCoop.m_PlayersOverrideNr
	else
		playerCount = GetNumberOfPlayers()
	end
	
	if ( playerCount == 1 and trueCount == false ) then
		playerCount = 2
	elseif( playerCount == 0 ) then
		playerCount = 2		
	end
	
	--LogConsole(string.format( "LuaLibCoop:GetNrOfPlayers(playerCount == %s )", playerCount ) )
	return playerCount
end

--[[-------------------------------------------------------------------------------------------------------
PlayersOverride
	Override the player count.
---------------------------------------------------------------------------------------------------------]]
LuaLibCoop.m_PlayersOverride = false --
LuaLibCoop.m_PlayersOverrideNr = 2

function LuaLibCoop:SetNrOfPlayersOverride(newNr)
	LogConsole(string.format( "LuaLibCoop:SetNrOfPlayersOverride(LuaLibCoop.m_PlayersOverrideNr == %s )Before", LuaLibCoop.m_PlayersOverrideNr ) )

	LuaLibCoop.m_PlayersOverride = true

	if (newNr <= 1 or newNr > 4 ) then
		newNr = 2
	end

	LuaLibCoop.m_PlayersOverrideNr = newNr
	LogConsole(string.format( "LuaLibCoop:SetNrOfPlayersOverride(LuaLibCoop.m_PlayersOverrideNr == %s )After", LuaLibCoop.m_PlayersOverrideNr ) )
end

--[[-------------------------------------------------------------------------------------------------------
ResetNrOfPlayersOverride
	Reset the player count override.
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:ResetNrOfPlayersOverride()
	LuaLibCoop.m_PlayersOverride = false
	LuaLibCoop.m_PlayersOverrideNr = 2
end


--[[-------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:Interactive( entity, state )
	if (entity == nil) then
		return
	end

	if ( state == nil or state == true ) then
		SendRegisteredEventToEntity(entity, "CBaseTriggerComponent_SetEnabled", {});
		SendRegisteredEventToEntity(entity, "CProximityTriggerComponent_SetAsUsable", {});		
	else
		SendRegisteredEventToEntity(entity, "CBaseTriggerComponent_SetDisabled", {});
		SendRegisteredEventToEntity(entity, "CProximityTriggerComponent_SetAsUnusable", {});		
	end
end


function LuaLibCoop:Hint( entity, entityList, state, iconName, playerSlot )
	if (entityList ~= nil ) then
		self:HintIconList( entityList, state, iconName, playerSlot )
	elseif (entity ~= nil ) then
		self:HintIcon( entity, state, iconName, playerSlot )
	end
end

function LuaLibCoop:HintRadius( entity, entityList, distance, iconName )
	if (entityList ~= nil ) then
		self:HintIconRadiusList( entityList, distance, iconName )		
	elseif (entity ~= nil ) then
		self:HintIconRadius( entity, distance, iconName )
	end
end


function LuaLibCoop:HintIcon( entity, state, iconName, playerSlot )
	playerSlot = playerSlot or -1
	iconName = iconName or ""
	SetInWorldIndicator(entity, playerSlot, state, iconName, false)
end

function LuaLibCoop:HintIconRadius( entity, distance, iconName )
	for slot = 0, 3, 1 do
		local player = GetPlayerInSlot(slot);
		if (player ~= GetInvalidEntityId() and CAPI_Entity.IsEntityLoaded(player)) then
			-- less or equal
			if ( GetDistance3D(entity, player) <= distance ) then
				self:HintIcon( entity, true, iconName, slot )
			else
				self:HintIcon( entity, false, iconName, slot )
			end
		end
	end
end


function LuaLibCoop:HintIconList( entityList, state, iconName, playerSlot )
	for index,entity in ipairs( entityList ) do
		self:HintIcon( entity, state, iconName, playerSlot )
	end	
end

function LuaLibCoop:HintIconRadiusList( entityList, distance, iconName )
	for index,entity in ipairs( entityList ) do
		self:HintIconRadius( entity, distance, iconName )
	end		
end


function LuaLibCoop:CheckDistance( entity, target, targetList, minDist )
	if ( targetList == nil ) then
		if ( GetDistance3D(entity, target) <= minDist ) then
			return target
		end
	else
		for index,ent in ipairs( targetList ) do
			if ( GetDistance3D(entity, ent) <= minDist ) then
				return ent				
			end			
		end		
	end
	return false
end

function LuaLibCoop:RandomEntities( names, list, nrOfEntites, doRemove )
	local entities = GetEntitiesStartsWith(names)

	if ( #entities < nrOfEntites ) then
		System:Warning("LuaLibCoop:RandomEntities(): NrOfEntites are bigger then the nr of entities that start with ["..tostring(names).."]. ");
		return
	end	
	
	while #list < nrOfEntites do
		data = self:ListRandom(entities)
		--LogConsole( "GetRandomEntitiesBox:GetRandom( data = "..tostring(CAPI_Entity.GetName(data)).." )" )
		LuaLibCoop:ListRemove(entities,data)
		table.insert( list, data )
	end
	
	if (doRemove) then
		for i,v in ipairs( entities ) do
			CAPI_Entity.RemoveEntity( v )
		end
	end	
	self:ListDebugLog( list, "RandomEntities: " )	
	return list
end


function LuaLibCoop:RandomGroupEntities( group, list, nrOfEntites, doRemove )
	local entities = GetEntitiesInGroup(group)

	if ( #entities < nrOfEntites ) then
		System:Warning("LuaLibCoop:RandomEntities(): NrOfEntites are bigger then the nr of entities that start with ["..tostring(names).."]. ");
		return
	end	
	
	while #list < nrOfEntites do
		data = self:ListRandom(entities)
		--LogConsole( "GetRandomEntitiesBox:GetRandom( data = "..tostring(CAPI_Entity.GetName(data)).." )" )
		LuaLibCoop:ListRemove(entities,data)
		table.insert( list, data )
	end
	
	if (doRemove) then
		for i,v in ipairs( entities ) do
			CAPI_Entity.RemoveEntity( v )
		end
	end	
	--self:ListDebugLog( list, "RandomEntities: " )	
	return list
end


--[[-------------------------------------------------------------------------------------------------------
	Shimmer
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:Shimmer(entity, state)
	if ( CAPI_Entity.IsEntityLoaded(entity) ) then
		--LogConsole( "LuaLibCoop:Shimmer()" )
		CAPI_Entity.SetShimmerOnEntity(entity, state, 1, 0.88, 0.6, 0.75)
	end
end

--[[-------------------------------------------------------------------------------------------------------
	PlayBark
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:PlayBark( dialog, player )	
	if ( dialog == nil ) then
		return 
	end	
	--LogConsole( "LuaLibCoop:PlayBark() dialog = "..tostring(dialog) )
	dialog = string.lower(dialog)
	if ( player ~= nil ) then
		local res = PlayCoopBark( LuaLibCoop.m_MapName, dialog, player )
		--LogConsole( "LuaLibCoop:PlayBark() test == "..tostring(test) )
		if ( res == false ) then
			--LogConsole( "LuaLibCoop:PlayBark() cant find the dialog" )
			PlayMultiplayerBark( dialog )
		end
	else	
		PlayMultiplayerBark( dialog )
	end
end

--[[-------------------------------------------------------------------------------------------------------
	PlayBark
---------------------------------------------------------------------------------------------------------]]
function LuaLibCoop:Pickable( entity, state )
	if ( state == true ) then
		SendRegisteredEventToEntity(entity, "CPickup_SetAsPickable", {});
	else
		SendRegisteredEventToEntity(entity, "CPickup_SetAsNotPickable", {});
	end
end




--[[-------------------------------------------------------------------------------------------------------
	HintManagerCoop
---------------------------------------------------------------------------------------------------------]]

HintManagerCoop = {}
HintManagerCoop.m_list = nil

function HintManagerCoop:Setup()
	if(self.m_list == nil) then
		self.m_list = {}
	end	
end

function HintManagerCoop:Add( entity, entityList, hintType, radius )
	--LogConsole("HintManagerCoop:Add()")
	
	if(self.m_list == nil) then
		LogConsole("HintManagerCoop:Add(): HintManagerCoop,m_list is nil. Is HintCoop enabled?")
	end		
	
	if ( entityList ~= nil ) then
		for i,entity in ipairs( entityList ) do
			HintManagerCoop:AddEntity( entity, hintType, radius )
		end			
	else
		HintManagerCoop:AddEntity( entity, hintType, radius )
	end
	
	CScriptCallbackSystem_GetInstance():BroadcastMessage("HintCoopBox:Update")
end

function HintManagerCoop:Remove(entity, entityList)
	if ( entityList ~= nil ) then
		for i,entity in ipairs( entityList ) do
			HintManagerCoop:RemoveEntity( entity, entityList )
		end			
	else
		HintManagerCoop:RemoveEntity( entity, entityList )
	end
end

function HintManagerCoop:AddEntity( entity, hintType, radius )
	if ( entity == nil or hintType == nil ) then
		return 
	end
	
	radius = radius or nil
	if(self.m_list[entity] == nil) then
		self.m_list[entity] = {}
	end
	self.m_list[entity][0] = true		-- state
	self.m_list[entity][1] = hintType	-- hintType
	self.m_list[entity][2] = radius		-- radius
	self.m_list[entity][3] = false		-- visible
end

function HintManagerCoop:RemoveEntity(entity)
	if ( entity == nil ) then
		return 
	end
	--LogConsole("HintManagerCoop:Remove()")
	if(self.m_list ~= nil) then
		if(self.m_list[entity] ~= nil) then
			--LogConsole("HintManagerCoop:Remove() found")
			self.m_list[entity][0] = false
			LuaLibCoop:HintIcon( entity, false, nil, nil )
			self.m_list[entity] = nil
		end
	end
end

function HintManagerCoop:Update()
	--LogConsole("HintManagerCoop:Update()" )
	self:Setup()	
	if(self.m_list ~= nil) then
		for entity,value in pairs(self.m_list) do
			if ( CAPI_Entity.IsEntityLoaded(entity) ) then
				--LogConsole("HintManagerCoop:Update() entity == "..tostring(entity) )
				if ( value[0] == true ) then
					if ( value[2] ~= nil ) then -- use radius check
						LuaLibCoop:HintIconRadius( entity, value[2], value[1] )
					elseif ( self.m_list[entity][3] == false ) then
						LuaLibCoop:HintIcon( entity, true, value[1] )
						self.m_list[entity][3] = true
					end
				end
			else
				LogConsole("HintManagerCoop:Update()Remove: entity == "..tostring(entity) )
				--self:Remove(entity)
				self.m_list[entity] = nil
			end
		end	
	end
end

function HintManagerCoop:ShutDown()
	--LogConsole("HintManagerCoop:ShutDown()" )
	if(self.m_list ~= nil) then
		self.m_list = nil
	end	
end



--[[-------------------------------------------------------------------------------------------------------
CoopTimer

---------------------------------------------------------------------------------------------------------]]

CoopTimer = {}
CoopTimer.m_id = 0

function CoopTimer:Add( box, aDelay, functionCallback )
	
	local timerId = CDominoDelayManager_GetInstance():CreateDelay( aDelay, box, functionCallback )
	CDominoDelayManager_GetInstance():SendCommand(timerId, "restart")	

	--LogConsole("CoopTimer:Add() aDelay = "..tostring(aDelay)..", functionCallback = "..tostring(functionCallback)..", timerId = "..tostring(timerId) )
	
	return timerId
end

function CoopTimer:Restart( timerId )
	--LogConsole("CoopTimer:Restart() timerId = "..tostring(timerId) )
	CDominoDelayManager_GetInstance():SendCommand(timerId, "restart")
end

function CoopTimer:Remove( timerId )
	--LogConsole("CoopTimer:Remove() timerId = "..tostring(timerId) )
	if (timerId ~= nil) then
		--LogConsole("CoopTimer:Remove() timerId != nil" )
		CDominoDelayManager_GetInstance():RemoveDelay(timerId)
		timerId = nil
	end
	return nil
end


--[[-------------------------------------------------------------------------------------------------------
Spawner

---------------------------------------------------------------------------------------------------------]]

Spawner = {}
LuaLibCoop.m_spawnerCount = 0 -- set to true til the boxes are in.
LuaLibCoop.m_currentlySpawning = false

function Spawner:Set( value )
	--LogConsole("Spawner:Set("..tostring(value)..") !!")
	LuaLibCoop.m_currentlySpawning = value
end

function Spawner:IsSpawning()
	--LogConsole("Spawner:IsSpawning("..tostring(LuaLibCoop.m_currentlySpawning)..") !!")
	if (LuaLibCoop.m_currentlySpawning) then
		return true
	else
		return false
	end
end

function Spawner:IsISpawning(spawnerbox)
	--LogConsole("Spawner:IsISpawning("..tostring(LuaLibCoop.m_currentlySpawning)..") !!")
	if ( LuaLibCoop.m_currentlySpawning == spawnerbox ) then
		return true
	else
		return false
	end
end


--[[-------------------------------------------------------------------------------------------------------
TeleportList
	Teleports all entities in the list to a destination or destinations.
	list[pawn] = destination
---------------------------------------------------------------------------------------------------------]]
TeleportList = {}

function TeleportList:Bind(list)
	for k,v in pairs(list) do
		CAPI_Entity.Bind(v, k, "", 1)
		--LogConsole( "TeleportList:Bind( list k = "..tostring(CAPI_Entity.GetName(k))..", v = "..tostring(CAPI_Entity.GetName(v)).." )" )
	end
end

function TeleportList:UnBind(list)
	for k,v in pairs(list) do
		CAPI_Entity.UnBind(v, k)
		--LogConsole( "TeleportList:UnBind( list k = "..tostring(CAPI_Entity.GetName(k))..", v = "..tostring(CAPI_Entity.GetName(v)).." )" )
	end
end





--[[-------------------------------------------------------------------------------------------------------
ListNaturalSort

---------------------------------------------------------------------------------------------------------]]

function NaturalSort_SplitStringByNr(s)
	--LogConsole("NaturalSort_SplitStringByNr()")	
	local templist = {};
	
	for x,y in (s or ""):gmatch("(%d*)(%D*)") do
		if ( x ~= "" ) then
			table.insert(templist, tonumber(x))
		end
		
		if ( y ~= "" ) then
			table.insert(templist, y)
		end
	end
	
	return templist;
end

function NaturalSort_Compare(v1, v2)
	--LogConsole("NaturalSort_Compare()")
	
	local v1_list = NaturalSort_SplitStringByNr(v1);
	local v2_list = NaturalSort_SplitStringByNr(v2);

	--LogConsole("NaturalSort_Compare() #v1_list = "..tostring( #v1_list ) )
	--LogConsole("NaturalSort_Compare() #v2_list = "..tostring( #v2_list ) )
	
	for i = 1, math.min( #v1_list, #v2_list ) do
		local v1_value = v1_list[i];
		local v2_value = v2_list[i];
		
		--LogConsole("NaturalSort_Compare() v1_value = "..tostring( v1_value ) )
		--LogConsole("NaturalSort_Compare() v2_value = "..tostring( v2_value ) )
		
		if ( type(v1_value) == "string" ) then
			v2_value = tostring(v2_value);
		elseif ( type(v2_value) == "string" ) then
			v1_value = tostring(v1_value);
		end
		
		if ( v1_value ~= v2_value ) then				
			return v1_value < v2_value;
		end
	end
	
	return #v1_list < #v2_list;
end


GroupSizeTestBase = {}
function GroupSizeTestBase:TestSize( bEqual, bLess, bGreater, currentSize, triggerSize )
	--LogConsole( "GroupSizeTestBase:TestSize():" )
	
	--LogConsole("GroupSizeTestBase:TestSize() currentSize = "..tostring( currentSize ) )
	--LogConsole("GroupSizeTestBase:TestSize() triggerSize = "..tostring( triggerSize ) )
	if ( bEqual == true ) then
		--LogConsole( "GroupSizeTestBase:TestSize(): test equal" )
	end
	if ( bLess == true ) then
		--LogConsole( "GroupSizeTestBase:TestSize(): test less" )
	end
	if ( bGreater == true ) then
		--LogConsole( "GroupSizeTestBase:TestSize(): test greater" )
	end
	
	if ( bEqual == true and currentSize == triggerSize ) then
		--LogConsole( "GroupSizeTestBase:TestSize(): equal" )
		return true
	end	
	if ( bLess == true and currentSize < triggerSize ) then
		--LogConsole( "GroupSizeTestBase:TestSize(): less" )
		return true
	end
	if ( bGreater == true and currentSize > triggerSize ) then
		--LogConsole( "GroupSizeTestBase:TestSize(): greater" )
		return true
	end
	--LogConsole( "GroupSizeTestBase:TestSize(): none" )
	return false
end

