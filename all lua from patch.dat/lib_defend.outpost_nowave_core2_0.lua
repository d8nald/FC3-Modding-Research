-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: Outpost_nowave_core2_0
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="FarZone" Type="Core|float" />
    <DataIn Name="NearZone" Type="Core|float" />
    <DataIn Name="Defender Group" Type="Nomad|group" />
    <DataIn Name="RebelCheering" Type="Nomad|entity{}" />
    <DataIn Name="RebelBattlefield" Type="Nomad|entity{}" />
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
    <DataIn Name="MissionBlockID" Type="Nomad|missionblock" />
    <DataIn Name="MissionLayerID" Type="Nomad|missionblocklayer" />
</InputReflection> 
]]--
-- *** END OF SCRIPT INPUT REFLECTION ***


export = {
};


function export:LuaDependencies()
    local luaDepTable = {
    };
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/AchievementUpdate.lua");
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareFloats.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/SafeHouseModifier_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/StatisticIncrement.lua");
        cbox:RegisterBox("Domino/System/StealthIndicatorListener.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Outpostclear = false;
    self.eplayer = nil;
    self.NPCinCombat = false;
    self.NMEcount = 0;
    self.Deathcount = 0;
    self.NPCcombat = 0;
    self.Safehouse = nil;
    self.ePlayerVehicle = nil;
    self.lPlayerVehicles = {
    };
    self.ColliderID = nil;
    self.MetaSequenceId = 0;
    self.Stealth_value = 0;
    self[23] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = self.f_23_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_23_MemberAdded;
    l0.MemberRemoved = self.f_23_MemberRemoved;
    self[28] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_28_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_15_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_11_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[47] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_12_StateStart;
    l0.StateStop = self.f_12_StateStop;
    l0.MemberInState = self.f_12_MemberInState;
    self[14] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_14_Far;
    self[2] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_2_Far;
    self[7] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_7_Near;
    l0.Far = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/StealthIndicatorListener.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.OnNewValue = self.f_29_OnNewValue;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:In();
end;

function export:f_23_Enabled()
    local l0;
    self = self._graph;
    l0 = self[23];
    self.NMEcount = l0.memberCount;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_23_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[23];
    self.NMEcount = l0.memberCount;
end;

function export:f_23_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[23];
    self.NMEcount = l0.memberCount;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_28_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:Disable();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:In(0);
end;

function export:f_15_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:True();
end;

function export:f_11_Out_0()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
    l0 = self[11];
    l0:In(0);
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_62_Activated()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_8_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Outpostclear;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_10_A_is_True;
    l0.A_is_False = self.f_10_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_8_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_9_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostUndetected";
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:In();
end;

function export:f_9_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Outpostclearwithreinforcement";
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.eplayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = self.f_24_Freezed;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Freeze();
end;

function export:f_27_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:True();
    l0 = self[29];
    l0:ShutDown();
end;

function export:f_24_Freezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
    self:en_23();
    l0 = self[23];
    l0:Enable();
end;

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_12_MemberInState()
    local l0;
    self = self._graph;
    l0 = self[12];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_12_StateStart()
    local l0;
    self = self._graph;
    l0 = self[12];
    self.NPCcombat = l0.memberCountInState;
    l0 = self[29];
    l0:Enable();
end;

function export:f_12_StateStop()
    local l0;
    self = self._graph;
    l0 = self[12];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AchievementUpdate.lua")];
    l0.name = "Achievement_Unheard";
    l0._graph = self;
    l0.Updated = self.f_45_Updated;
    l0:UpdateByName();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_10_A_is_False()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_10_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_20_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_9_A_is_True;
    l0.A_is_False = self.f_9_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    self:en_23();
    l0 = self[23];
    l0:Disable();
end;

function export:f_26_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_25_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_14_Far()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_2_Far()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In(0);
end;

function export:f_25_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_21_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_7_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_8_A_is_True;
    l0.A_is_False = self.f_8_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_62_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:Enable();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = self.f_26_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_21_Unlocked()
    self = self._graph;
    self:Out();
end;

function export:f_46_Incremented()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:In(0);
end;

function export:f_45_Updated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedUndetected";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_46_Incremented;
    l0:Increment();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.group = self.Defender_Group;
    l0:Combat();
    l0 = self[7];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.nearZone = self.NearZone;
    l0:Enable();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_29_OnNewValue()
    local l0;
    self = self._graph;
    l0 = self[29];
    self.Stealth_value = l0.stealth_value;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.Stealth_value;
    l0.B = 1;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_27_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:en_23()
    local l0;
    l0 = self[23];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Tension_LP";
    l0._graph = self;
    l0.Started = self.f_6_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Attack_LP";
    l0._graph = self;
    l0.Started = self.f_13_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_20()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_20_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_31()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
