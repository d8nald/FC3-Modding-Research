-- DOMINO REFLECTION BOX START
--
-- <Display Category="Exotic Gameplay" Text="MissionBomb"/>
--
-- <ContextHelp><![CDATA[
--	Start: will spawn and show the usable ghost bomb to let the player know where to set the bomb.
--	LockPlayerIntoRemote:  this works only if the player has set the bomb. Will holster all weapons,
--							equip the bomb detonator and lock the player into using it. The player
--							won't be able to loot stuff, change weapon, etc. Basicly, he has to push.
--	ForceDetonate:	This will work only if the player is lock into remote. This will force the player into pushing the button.
--	DoDetonateBomb:	If the bomb is set, this will make it explode without the detonator.
--	ShutDown:	cleanup everything. Like nothing happened.
--
--	-----Gym-----
--	World:
--	Map:
--	Layer:
--	Type:
--
--  ]]></ContextHelp>
--
-- <ControlIn  Name="Start"/>
-- <ControlIn  Name="LockPlayerIntoRemote"/>
-- <ControlIn  Name="ForceDetonate"/>
-- <ControlIn  Name="DoDetonateBomb"/>
-- <ControlIn  Name="ShutDown"/>
--
-- <DataIn     Name="bombPos"           			Type="Nomad|entity"/>
-- <DataIn     Name="bombCueArchetype"				Type="Nomad|archetype"/>
-- <DataIn     Name="bombArchetype"     			Type="Nomad|archetype"/>
-- <DataIn     Name="bombRemoteArchetype"			Type="Nomad|archetype"/>
-- <DataIn     Name="keepBombOnShutdown"			Type="Core|bool"		Default="false"/>
--
-- <ControlOut Name="Started"/>
-- <ControlOut Name="BombArmed" Delayed="true"/>
-- <ControlOut Name="Detonate" Delayed="true"/>
--
-- DOMINO REFLECTION BOX END
MissionBomb = {}
function MissionBomb:Create(cbox)
	cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua");
	cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibEvents.lua");
	cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibMath.lua");
end
function MissionBomb:Init(cbox)
    self.str_IED_explosive = "IED_Explosive"
	self.str_detonateSignal = "updateshooting"
	self.str_detonateSignal2 = "startshooting"
	self.mms_PlaceMissionBomb = GetPathID("PlaceMissionBomb")
	self.mms_DetonateMissionBomb = GetPathID("DetonateMissionBomb")
	self.mms_FastHolster = GetPathID("Pawn_Generic_Fast_Holster")
	self.strMarkup_PlaceBomb = "MissionBombPlace"
	self.strMarkup_DetonateBomb = "MissionBombGoBoom"
	self.str_fake_IED = "weapons:FC3/IED"
	self.strStunStateName = "::Main Avatar/Common/Stun"
	self.strIdleStateName = "::Main Avatar/Common/Idle"
	self.strBoneToSnapDynamite = "RightHandMiddle1"
	self.lookAtTime = 0.3
end
function MissionBomb:ShutDown()
    self:UnregisterDetonate()
    self:UnregisterTickPlaceBomb()
    self:UnregisterTickDetonateBomb()
	self:UnregisterPlaceBombConditionTicker()
	self:FilterInventorySignals(false)
	self.player = GetLocalPlayerId()
	self:UnregisterGOSMListenStun()
	self:UnregisterLookAtBombTicker()
	self:UnregisterGOSMListenIdle()
	LuaLibEvents:UnregisterSpawnListener(self, self.missionIED, "MissionIED_Loaded")
	LuaLibEvents:UnregisterSpawnListener(self, self.missionIED_Cue, "MissionIED_Cue_Loaded")
	LuaLibEvents:UnregisterSpawnListener(self, self.fakeIED, "FakeIED_Explosion")
	LuaLibEvents:UnregisterSpawnListener(self, self.remote, "RemoteLoaded")
	LuaLibEvents:UnregisterEvent(self, "PlaceBomb", self.missionIED_Cue)
	LuaLibEvents:UnregisterEvent(self, "DoPlaceBomb", self.player)
	LuaLibEvents:UnregisterEvent(self, "DoDetonateBomb", self.player)
	if(self.missionIED_Cue) then
		CAPI_Entity.RemoveEntity(self.missionIED_Cue)
		self.missionIED_Cue = nil;
	end
	if(self.missionIED and not self.keepBombOnShutdown) then
		CAPI_Entity.RemoveEntity(self.missionIED)
		self.missionIED = nil;
	end
	self.dynamiteLoaded = nil;
	self.remoteLoaded = nil;
	self.bombIsBound = nil;
	self.playerIsLookingAtBombSpot = nil;
	EnableGodMode(0);
end
function MissionBomb:UnregisterDetonate()
	if (self.callidDetonate) then
	    UnregisterDominoInputListenerSignal(GetLocalPlayerId(), self.callidDetonate, self.str_detonateSignal);
		self.callidDetonate = nil;
	end
	if (self.callidDetonate2) then
	    UnregisterDominoInputListenerSignal(GetLocalPlayerId(), self.callidDetonate2, self.str_detonateSignal2);
		self.callidDetonate2 = nil;
	end
end
function MissionBomb:UnregisterTickPlaceBomb()
	if (self.tickerPlaceBombId) then
	    CDominoTickManager_GetInstance():UnregisterTickFunction(self.tickerPlaceBombId)
		self.tickerPlaceBombId = nil;
	end
end
function MissionBomb:UnregisterTickDetonateBomb()
	if (self.tickerDetonateBombId) then
	    CDominoTickManager_GetInstance():UnregisterTickFunction(self.tickerDetonateBombId)
		self.tickerDetonateBombId = nil;
	end
end
function MissionBomb:UnregisterPlaceBombConditionTicker()
	if (self.tickerFastHolsterId) then
	    CDominoTickManager_GetInstance():UnregisterTickFunction(self.tickerFastHolsterId)
		self.tickerFastHolsterId = nil;
	end
end
function MissionBomb:UnregisterGOSMListenStun()
	if (self.callidWaitForStun) then
	    CGOStateMachineScriptCallbackSystem_GetInstance():UnregisterStateCallback(self.player, self.callidWaitForStun, "Stun");
		self.callidWaitForStun = nil;
	end
end
function MissionBomb:UnregisterGOSMListenIdle()
	if (self.callidWaitForIdle) then
	    CGOStateMachineScriptCallbackSystem_GetInstance():UnregisterStateCallback(self.player, self.callidWaitForIdle, "Idle");
		self.callidWaitForIdle = nil;
	end
end
function MissionBomb:UnregisterLookAtBombTicker()
	if (self.tickerLookAtBombSpot) then
	    CDominoTickManager_GetInstance():UnregisterTickFunction(self.tickerLookAtBombSpot)
		self.tickerLookAtBombSpot = nil;
	end
end
function MissionBomb:FilterInventorySignals(enable)
	self.player = GetLocalPlayerId()
    CAPI_Player.SetIgnorePlayerSignal(self.player, "open_inventory", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "try_detonate_ied", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "select_last_weapon", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "use", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "throw_grenade", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "release_grenade", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "throw_rock", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "toggle_monocular", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "select_weapon_slot0", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "select_weapon_slot1", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "select_weapon_slot2", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "select_weapon_slot3", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "select_next_weapon", enable)
	CAPI_Player.SetIgnorePlayerSignal(self.player, "select_previous_weapon", enable)
end
function MissionBomb:SetBombUsable(enable)
	--local usableString = enable and "CUsableComponent_Enable" or "CUsableComponent_Disable"
	local baseTriggerString = enable and "CBaseTriggerComponent_SetEnabled" or "CBaseTriggerComponent_SetDisabled"
	local proxyTriggerString = enable and "CProximityTriggerComponent_SetAsUsable" or "CProximityTriggerComponent_SetAsUnusable"
    --if(CAPI_Entity.ValidateHasUsableComponent(self.missionIED_Cue)) then
	--	SendRegisteredEventToEntity(self.missionIED_Cue, usableString, {});
	--end
	--SendCommandEventToEntity(self.missionIED_Cue, "SetUsability", {tostring(enable)});
	SendRegisteredEventToEntity(self.missionIED_Cue, baseTriggerString, {});
	SendRegisteredEventToEntity(self.missionIED_Cue, proxyTriggerString, {});
end
function MissionBomb:Start()
	self:ShutDown()
	local pos = CAPI_Entity.GetEntityPositionVec3(self.bombPos);
	self.missionIED_Cue = SpawnEntityFromArchetype(self.bombCueArchetype, pos[1], pos[2], pos[3], 0, 0, 0)
	LuaLibEvents:RegisterSpawnListener(self, self.missionIED_Cue, "MissionIED_Cue_Loaded")
	self:Started()
end
function MissionBomb:MissionIED_Cue_Loaded()
	LuaLibEvents:UnregisterSpawnListener(self, self.missionIED_Cue, "MissionIED_Cue_Loaded")
	self:SetBombUsable(true)
	local rot = CAPI_Entity.GetEntityAngles(self.bombPos);
	CAPI_Entity.SetEntityAngles(self.missionIED_Cue, rot)
	CAPI_Entity.Bind(self.bombPos, self.missionIED_Cue, "", false)
	LuaLibEvents:RegisterEvent(self, "PlaceBomb", self.missionIED_Cue, "Use")
end
function MissionBomb:PlaceBomb()
	self.player = GetLocalPlayerId();

	LuaLibEvents:UnregisterEvent(self, "PlaceBomb", self.missionIED_Cue)
	self:SetBombUsable(false)

	--Lock player
	CAPI_Player.PushPlayerActionMap(self.player, "narrative_interact");
    EnableGodMode(1);

	--Spawn dynamite and remote	on top of player to let them load.
	local xPos 	= CAPI_Entity.GetEntityPosition(self.player, 0)
	local yPos 	= CAPI_Entity.GetEntityPosition(self.player, 1)
	local zPos 	= CAPI_Entity.GetEntityPosition(self.player, 2)
	self.missionIED = SpawnEntityFromArchetype(self.bombArchetype, xPos, yPos, zPos, 0,0,0)
	LuaLibEvents:RegisterSpawnListener(self, self.missionIED, "MissionIED_Loaded")
	self.remote = SpawnEntityFromArchetype(self.bombRemoteArchetype, xPos, yPos, zPos, 0,0,0)
	LuaLibEvents:RegisterSpawnListener(self, self.remote, "RemoteLoaded")
	CAPI_Pawn.SetNearZ(self.player, false);
	
	CAPI_Pawn.DrawWeapon(self.player, "primary", "", "", true);

	CAPI_Pawn.PlayAnimation(self.player, self.mms_FastHolster, 1, true);
    self.tickerFastHolsterId = CDominoTickManager_GetInstance():RegisterTickFunction(self, "PlaceBombConditionsTicker")

	self.rot0 = luavec.new(CAPI_Player.GetPlayerLookAngles(self.player))
    local targetPos = luavec.new(CAPI_Entity.GetEntityPositionVec3(self.bombPos))
    local playerPos = luavec.new(CAPI_Entity.GetBonePos(self.player, "Camera"))
	local normalizedDir = LuaLibMath:Normalize(targetPos - playerPos)
    self.endRot = luavec.new(GetAnglesFromDir(normalizedDir))
    self.endRot = self.rot0 + GetShortestDiffVec3(self.rot0, self.endRot)
    self.elapsedTime = 0;
    self.tickerLookAtBombSpot = CDominoTickManager_GetInstance():RegisterTickFunction(self, "LookAtBombUpdate")
end
function MissionBomb:LookAtBombUpdate(delta)
    self.elapsedTime = self.elapsedTime + delta;
    local rot = LuaLibMath:Lerp(self.rot0, self.endRot, math.min(self.elapsedTime / self.lookAtTime, 1))
    CAPI_Player.SetPlayerLookAnglesFromAngles(self.player, rot)
    if(self.elapsedTime / self.lookAtTime >= 1) then
		self.playerIsLookingAtBombSpot = true
		self:UnregisterLookAtBombTicker()
		CAPI_Pawn.PushBeautifier(self.player, "observer")
		CAPI_NPC.WriteBlackBoardFloat(self.player, "ObserverEyeAngle", 40)
		CAPI_NPC.WriteBlackBoardFloat(self.player, "ObserverEyeSpeed", 2)
    end
end
function MissionBomb:MissionIED_Loaded()
    LuaLibEvents:UnregisterSpawnListener(self, self.missionIED, "MissionIED_Loaded")
	CAPI_Entity.SetVisibility(self.missionIED, false)
	self.dynamiteLoaded = true;
end
function MissionBomb:RemoteLoaded()
	LuaLibEvents:UnregisterSpawnListener(self, self.remote, "RemoteLoaded")
	CAPI_Entity.SetVisibility(self.remote, false)
	self.remoteLoaded = true;
end
function MissionBomb:PlaceBombConditionsTicker()
	if(self.dynamiteLoaded and self.remoteLoaded and self.playerIsLookingAtBombSpot and
	(CAPI_Pawn.IsAnimationCutable(self.player, self.mms_FastHolster, 1)
	or CAPI_Pawn.GetCurrentMoveName(self.player, 1) ~= self.mms_FastHolster)) then
        self:UnregisterPlaceBombConditionTicker()
		CAPI_Entity.Bind(self.player, self.missionIED, self.strBoneToSnapDynamite, true);
		CAPI_Entity.SetVisibility(self.missionIED, true)
		LuaLibEvents:RegisterEvent(self, "DoPlaceBomb", self.player, self.strMarkup_PlaceBomb)
		CAPI_Pawn.PlayAnimation(self.player, self.mms_PlaceMissionBomb, 1, true);
		self.tickerPlaceBombId = CDominoTickManager_GetInstance():RegisterTickFunction(self, "PlaceBombAnimTicker")
    end
end
function MissionBomb:DoPlaceBomb()
	if(self.missionIED_Cue) then
		CAPI_Entity.RemoveEntity(self.missionIED_Cue)
		self.missionIED_Cue = nil;
	end
	LuaLibEvents:UnregisterEvent(self, "DoPlaceBomb", self.player)
	CAPI_Entity.UnBind(self.player, self.missionIED)
	CAPI_Entity.SetEntityPositionVec3(self.missionIED, CAPI_Entity.GetEntityPositionVec3(self.bombPos))
	CAPI_Entity.SetEntityAngles(self.missionIED, CAPI_Entity.GetEntityAngles(self.bombPos))
	CAPI_Entity.Bind(self.bombPos, self.missionIED, "", true)
	self.bombIsBound = true;
	CAPI_Pawn.SetNearZ(self.player, true);
end
function MissionBomb:PlaceBombAnimTicker(delta)
	--[[
	if(not self.bombIsBound) then
		local posLeftHandVector = luavec.new(CAPI_Entity.GetBonePos(self.player, "LeftHand"))
		local posRightHandVector = luavec.new(CAPI_Entity.GetBonePos(self.player, "RightHand"))

		--local rotLeftHand = CAPI_Entity.GetBoneRot(self.player, "LeftHand")
		--local rotRightHand = CAPI_Entity.GetBoneRot(self.player, "RightHand")

		local posMiddleHandsVector = (posLeftHandVector - posRightHandVector)*0.5
		CAPI_Entity.SetEntityPositionVec3(self.missionIED, posLeftHandVector-posMiddleHandsVector)
	end
	--]]
    if(CAPI_Pawn.IsAnimationCutable(self.player, self.mms_PlaceMissionBomb, 1)
	or CAPI_Pawn.GetCurrentMoveName(self.player, 1) ~= self.mms_PlaceMissionBomb) then
		if(not self.bombIsBound) then --Sometimes, we dont get the markup event. So release it, fixing a nasty bug.
			self:DoPlaceBomb()
		end
        self:UnregisterTickPlaceBomb()
        CAPI_Pawn.PopBeautifier(self.player, "observer")
		CAPI_Player.RemovePlayerActionMap(self.player, "narrative_interact");
        EnableGodMode(0);

		self.resumeGOSM = self.BombArmed
		self.callidWaitForStun = CGOStateMachineScriptCallbackSystem_GetInstance():RegisterStateCallback(self.player, self, "GOSM_Stun", self.strStunStateName);
		CAPI_Pawn.ShutdownGOSM(self.player)
    end
end
function MissionBomb:LockPlayerIntoRemote()
	if(not self.callidDetonate ) then -- prevent double calls		
		CAPI_Entity.SetVisibility(self.remote, true)
		CAPI_Pawn.AddWeapon(self.player, self.remote)
		CAPI_Pawn.SetupMissionIED(self.player, self.bombRemoteArchetype, true)
		CAPI_Pawn.DrawWeapon(self.player, self.str_IED_explosive, "", "", true)
		self:FilterInventorySignals(true)
		self.callidDetonate = RegisterDominoInputListenerSignal(self.player, self, "ForceDetonate", self.str_detonateSignal)
		self.callidDetonate2 = RegisterDominoInputListenerSignal(self.player, self, "ForceDetonate", self.str_detonateSignal2)
	end
end
function MissionBomb:ForceDetonate()
	self:UnregisterDetonate()
    self.player = GetLocalPlayerId()
	LuaLibEvents:RegisterEvent(self, "DoDetonateBomb", self.player, self.strMarkup_DetonateBomb)	
	CAPI_Pawn.PlayAnimation(self.player, self.mms_DetonateMissionBomb, 1, true)
    self.tickerDetonateBombId = CDominoTickManager_GetInstance():RegisterTickFunction(self, "DetonateBombAnimTicker")
end
function MissionBomb:DoDetonateBomb()
	LuaLibEvents:UnregisterEvent(self, "DoDetonateBomb", self.player)
	if(self.missionIED) then
		CAPI_Entity.RemoveEntity(self.missionIED)
		self.missionIED = nil;
	end
	local pos = CAPI_Entity.GetEntityPositionVec3(self.bombPos);
	self.fakeIED = SpawnEntityFromArchetype(self.str_fake_IED, pos[1], pos[2], pos[3], 0, 0, 0)
	LuaLibEvents:RegisterSpawnListener(self, self.fakeIED, "FakeIED_Explosion")
end
function MissionBomb:DetonateBombAnimTicker(delta)
    if(CAPI_Pawn.IsAnimationCutable(self.player, self.mms_DetonateMissionBomb, 1)
	or CAPI_Pawn.GetCurrentMoveName(self.player, 1) ~= self.mms_DetonateMissionBomb) then
		self:UnregisterTickDetonateBomb()
		self:FilterInventorySignals(false)		
		CAPI_Pawn.SetupMissionIED(self.player, self.bombRemoteArchetype, false)
		CAPI_Pawn.RemoveWeapon(self.player, self.bombRemoteArchetype);
		self.remoteLoaded = nil;
		self.resumeGOSM = self.Detonate
		if(not CAPI_Pawn.IsPawnDead(self.player)) then
			self.callidWaitForStun = CGOStateMachineScriptCallbackSystem_GetInstance():RegisterStateCallback(self.player, self, "GOSM_Stun", self.strStunStateName);
			CAPI_Pawn.ShutdownGOSM(self.player)
		end
	end
end
function MissionBomb:FakeIED_Explosion()
	LuaLibEvents:UnregisterSpawnListener(self, self.fakeIED, "FakeIED_Explosion")
	CAPI_Entity.SendDetonateEvent(self.fakeIED, self.remote)
	self.bombIsBound = nil
	self.dynamiteLoaded = nil;
end
function MissionBomb:GOSM_Stun()
	self:UnregisterGOSMListenStun()
	self.callidWaitForIdle = CGOStateMachineScriptCallbackSystem_GetInstance():RegisterStateCallback(self.player, self, "GOSM_Idle", self.strIdleStateName);
	CAPI_Pawn.RestoreGOSM(self.player, "stun_recover")
end
function MissionBomb:GOSM_Idle()
	self:UnregisterGOSMListenIdle()
	local GOSMResetResume = self.resumeGOSM
	GOSMResetResume(self) --GOSM reset all done.
end

-- Export visible for Nomad engine.
export = MissionBomb;
MissionBomb = nil;
