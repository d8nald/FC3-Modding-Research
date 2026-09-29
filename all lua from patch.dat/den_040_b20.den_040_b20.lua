-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/den_040/den_040_b20/den_040_b20.domino.xml
-- User graph: DEN_040_B20
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection /> 
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
        cbox:RegisterBox("Domino/System/AI/AIEventLog.lua");
        cbox:RegisterBox("Domino/System/AI/AlarmListener.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_B20_Init.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B20/DEN_040_B20.OBJ_DestroyWeaponCaches.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ObjectiveCleared = DummyFunction;
    self.DEN_040_B20_Boomed = 2;
    self[25] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_25_AlarmActivated;
    l0.AlarmDeactivated = DummyFunction;
    l0.AlarmDisabled = DummyFunction;
    l0.AlarmDestroyed = DummyFunction;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_B20_Init.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    self[30] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[30];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_30_Out_0;
    l0.ResetOut = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_26_Out_0;
    l0.ResetOut = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[2];
    l0._graph = self;
    self[32] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_32_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Enabled = self.f_27_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_27_MemberRemoved;
    self[18] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_18_Out_0;
    l0.ResetOut = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[6];
    l0._graph = self;
    self[21] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener.lua");
    l0 = self[21];
    l0._graph = self;
    l0.WarningZoneEntered = DummyFunction;
    l0.FailingZoneEntered = self.f_21_FailingZoneEntered;
    self[17] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    self[19] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = DummyFunction;
    l0.StateStop = self.f_16_StateStop;
    l0.MemberInState = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Acknowledged = self.f_8_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[7] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B20/DEN_040_B20.OBJ_DestroyWeaponCaches.lua");
    l0 = self[7];
    l0._graph = self;
    l0.ObjectiveCleared = self.f_7_ObjectiveCleared;
    l0.Out_Prevent_Reinforcement = self.f_7_Out_Prevent_Reinforcement;
    l0.PlayerLeftArea = self.f_7_PlayerLeftArea;
    l0.DisableWarningZone = self.f_7_DisableWarningZone;
    l0.GetOut = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[9];
    l0:Initialize();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077330718054164808";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:OnLeaveZone()
    local l0;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Disable();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_28_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Reinforcement will spawn because it is less or equal to 9 mercs.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_25_AlarmActivated()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Acknowledge();
end;

function export:f_31_Stopped()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.seconds = 0.4;
    l0:Start();
end;

function export:f_30_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076956601587088781";
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:CreateAILogInArmy();
    self:en_27();
    l0 = self[27];
    l0:Disable();
end;

function export:f_26_Out_0()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:Enable();
end;

function export:f_4_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_STR_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_31_Stopped;
    l0:Stop();
end;

function export:f_13_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760141560883361";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_15_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_20_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.AlarmGroup = "#3E17E227";
    l0:Enable();
end;

function export:f_20_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_32_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:False();
end;

function export:f_27_Enabled()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_27_MemberRemoved()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_1_Stopped()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Fail();
end;

function export:f_18_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_4_Stopped;
    l0:Stop();
end;

function export:f_33_Removed()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Complete();
end;

function export:f_14_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076488639184950916";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760156704417988";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_13_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_21_FailingZoneEntered()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_5_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_1_Stopped;
    l0:Stop();
end;

function export:f_15_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760142540253347";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_14_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075643019702318557";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_33_Removed;
    l0:Remove();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.ReinforcementPoint = "2076956272468442505";
    l0.Battlefield = "2072740378414448599";
    l0.IdleBSR = "2072740378414448599";
    l0.AlertBSR = "2072740378414448599";
    l0.CombatBSR = "2072740378414448599";
    l0:SpawnInCautious();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:In();
    self:en_21();
    l0 = self[21];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.DEN_040_MAIN.AlarmAreActivated;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_20_A_is_True;
    l0.A_is_False = self.f_20_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_16_StateStop()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:If_Killed_everyone_in_time();
end;

function export:f_8_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Send();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.DEN_040_MAIN.IsReloaded = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078297902117049879";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:SetDisabled();
end;

function export:f_7_DisableWarningZone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:In();
end;

function export:f_7_ObjectiveCleared()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.group = "#3E17E227";
    l0:Combat();
end;

function export:f_7_Out_Prevent_Reinforcement()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:In(0);
end;

function export:f_7_PlayerLeftArea()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:In(0);
end;

function export:en_28()
    local l0, l1;
    l0 = self[27];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 9;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_28_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
end;

function export:en_27()
    local l0;
    l0 = self[27];
    l0.group = "#3E17E227";
    l0.autoDisable = false;
end;

function export:en_21()
    local l0;
    l0 = self[21];
    l0.WarningZoneTrigger = "2078612594809128409";
    l0.FailingZoneTrigger = "2078612633881167340";
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_STR_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_5_Stopped;
end;

-- Empty out anchor definitions
function export:ObjectiveCleared()
    
end;
_compilerVersion = 24;
