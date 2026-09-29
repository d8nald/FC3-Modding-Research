-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: Outpost_easy_core_2_1_Dog
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Reinforcement 3" Type="Nomad|entity{}" />
    <DataIn Name="AIBudget" Type="Core|int" />
    <DataIn Name="RebelCheering" Type="Nomad|entity{}" />
    <DataIn Name="AiEventPoint" Type="Nomad|entity{}" />
    <DataIn Name="IF3use" Type="Core|bool" />
    <DataIn Name="Alert" Type="Nomad|entity{}" />
    <DataIn Name="Combat" Type="Nomad|entity{}" />
    <DataIn Name="RebelBattlefield" Type="Nomad|entity{}" />
    <DataIn Name="Battlefield" Type="Nomad|entity{}" />
    <DataIn Name="NearZone" Type="Core|float" />
    <DataIn Name="Alarm Group" Type="Nomad|group" />
    <DataIn Name="MissionLayerID" Type="Nomad|missionblocklayer" />
    <DataIn Name="IF2use" Type="Core|bool" />
    <DataIn Name="Reinforcement 2" Type="Nomad|entity{}" />
    <DataIn Name="IDLE" Type="Nomad|entity{}" />
    <DataIn Name="Directional" Type="Nomad|Sound" />
    <DataIn Name="Time before First Wave" Type="Core|float" />
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 1" Type="Nomad|entity{}" />
    <DataIn Name="Defender Group" Type="Nomad|group" />
    <DataIn Name="MissionBlockID" Type="Nomad|missionblock" />
    <DataIn Name="Guarding_dogs" Type="Nomad|group" />
    <DataIn Name="AllAIGroup" Type="Nomad|group" />
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
        cbox:RegisterBox("Domino/System/AI/AIEventLog.lua");
        cbox:RegisterBox("Domino/System/AI/AlarmListener.lua");
        cbox:RegisterBox("Domino/System/AI/AlarmModifier.lua");
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareFloats.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GetSafeHouseAIState.lua");
        cbox:RegisterBox("Domino/System/GetSafeHouseAlarmState.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveGageTimer.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/SafeHouseModifier_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/AI/SetIdleSubState.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/StatisticIncrement.lua");
        cbox:RegisterBox("Domino/System/StealthIndicatorListener.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x00176ae2]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00176ae2.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00455cfe]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Undercover_Takeover = DummyFunction;
    self.Out = DummyFunction;
    self.Wave_1_Flow = DummyFunction;
    self.NMEcount = 0;
    self.NPCcombat = 0;
    self.Outpostclear = false;
    self.Stealth_value = 0;
    self.eplayer = nil;
    self.NPCinCombat = false;
    self.GRD_Dog_NMB = 0;
    self[46] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[46];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_46_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_61_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[77] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_77_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_12_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_24_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[65] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[65];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_65_Out;
    self[21] = cbox:CreateBox("Domino/System/StealthIndicatorListener.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.OnNewValue = self.f_21_OnNewValue;
    self[67] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_67_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[74];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_74_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_52_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_48_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_8_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_42_Far;
    self[29] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_29_Fail;
    l0.Spawned = self.f_29_Spawned;
    self[6] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_6_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[73] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_73_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_19_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = self.f_13_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_13_MemberAdded;
    l0.MemberRemoved = self.f_13_MemberRemoved;
    self[75] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[75];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_75_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[71] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[71];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_71_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[81] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[81];
    l0._graph = self;
    l0.Enabled = self.f_81_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_81_MemberAdded;
    l0.MemberRemoved = self.f_81_MemberRemoved;
    self[60] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_60_Near;
    l0.Far = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_57_Fail;
    l0.Spawned = self.f_57_Spawned;
    self[11] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_11_Far;
    self[34] = cbox:CreateBox("Domino/System/ObjectiveGageTimer.lua");
    l0 = self[34];
    l0._graph = self;
    l0.ShowOut = self.f_34_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_34_TimeElapsed;
    self[83] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[83];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_83_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Enabled = self.f_43_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_43_MemberAdded;
    l0.MemberRemoved = self.f_43_MemberRemoved;
    self[45] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[45];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_45_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[47] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[47];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_47_Out;
    self[78] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[78];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_78_Fail;
    l0.Spawned = self.f_78_Spawned;
    self[82] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[82];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_82_Far;
    self[55] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[55];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_55_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[70] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_70_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[87] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Enabled = self.f_87_Enabled;
    l0.Disabled = self.f_87_Disabled;
    l0.MemberAdded = self.f_87_MemberAdded;
    l0.MemberRemoved = self.f_87_MemberRemoved;
    self[64] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[64];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_64_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Enabled = self.f_37_Enabled;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_37_StateStart;
    l0.StateStop = self.f_37_StateStop;
    l0.MemberInState = self.f_37_MemberInState;
    self[72] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Enabled = self.f_72_Enabled;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_72_AlarmActivated;
    l0.AlarmDeactivated = DummyFunction;
    l0.AlarmDisabled = DummyFunction;
    l0.AlarmDestroyed = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_26_InCombat()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetIdleSubState.lua")];
    l0.Group = self.Defender_Group;
    l0._graph = self;
    l0.Out = self.f_89_Out;
    l0:SetCautious();
end;

function export:f_46_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_54_A_is_True;
    l0.A_is_False = self.f_54_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    self:en_53();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_61_Finished()
    local l0;
    self = self._graph;
    l0 = self[65];
    l0:Condition(0);
end;

function export:f_94_Out()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_33_Activated()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_77_Finished()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0.SoundId = "0x00176ae2";
    l0:ForcePlay_Priority();
end;

function export:f_15_Started()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0:In();
end;

function export:f_84_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0:ShutDown();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:True();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_86_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    self:en_72();
    l0 = self[72];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:Disable();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
end;

function export:f_24_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_93_Out;
    l0:Disable();
    l0 = self[71];
    l0:In(0);
end;

function export:f_51_Unlocked()
    self = self._graph;
    self:Out();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0:In(0);
end;

function export:f_93_Out()
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
    l0.NoDeactivateMBOnUnlockDone = self.f_28_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_17_Out()
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
    l0.Freezed = self.f_1_Freezed;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Freeze();
end;

function export:f_54_A_is_False()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_54_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[74];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_32_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:In();
    self:en_13();
    l0 = self[13];
    l0:Disable();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_33_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_21_OnNewValue()
    local l0;
    self = self._graph;
    l0 = self[21];
    self.Stealth_value = l0.stealth_value;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.Stealth_value;
    l0.B = 1;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_84_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.ReinforcementPoint = self.Reinforcement_1;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_85_Started()
    local l0;
    self = self._graph;
    l0 = self[82];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_95_Out()
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
    l0.NoDeactivateMBOnUnlockDone = self.f_23_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_67_Finished()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0:Condition(0);
end;

function export:f_2_Unlocked()
    self = self._graph;
    self:Undercover_Takeover();
end;

function export:f_74_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0.ReinforcementPoint = self.Reinforcement_3;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedUndetected";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_20_Incremented;
    l0:Increment();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = self[65];
    l0:Condition(1);
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.nearZone = self.NearZone;
    l0:Enable();
    l0 = self[37];
    l0.group = self.Defender_Group;
    l0:Combat();
end;

function export:f_52_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_95_Out;
    l0:Disable();
end;

function export:f_48_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_56();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_56_Started()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    l0 = self[83];
    l0.SoundId = self.Directional;
    l0:ForcePlay_Priority();
end;

function export:f_42_Far()
    local l0;
    self = self._graph;
    self:en_69();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_40_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_68_Out;
    l0:Activate();
end;

function export:f_29_Fail()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:In(0);
end;

function export:f_29_Spawned()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:In(0);
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.ReinforcementPoint = self.Reinforcement_2;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_73_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:CreateAILogInArmy();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0:In(0);
    self:Wave_1_Flow();
end;

function export:f_19_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_25_A_is_True;
    l0.A_is_False = self.f_25_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_13_Enabled()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.NMEcount = l0.memberCount;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_13_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.NMEcount = l0.memberCount;
end;

function export:f_13_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.NMEcount = l0.memberCount;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_23_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_50_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_41_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[77];
    l1.Group = l0.LocalPlayer;
    l1 = self[67];
    l1.Group = l0.LocalPlayer;
    l1 = self[70];
    l1.Group = l0.LocalPlayer;
    l0 = self[77];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_75_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0:True();
    self:en_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_53_Incremented()
    local l0;
    self = self._graph;
    self:en_87();
    l0 = self[87];
    l0:Enable();
end;

function export:f_91_Out()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_66_Updated()
    local l0;
    self = self._graph;
    self:en_53();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_9_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_2_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:True();
end;

function export:f_71_Out_0()
    local l0;
    self = self._graph;
    self:en_85();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_1_Freezed()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_79_Out;
    l0:In();
    self:en_72();
    l0 = self[72];
    l0:Enable();
end;

function export:f_81_Enabled()
    local l0;
    self = self._graph;
    l0 = self[81];
    self.NMEcount = l0.memberCount;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_81_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[81];
    self.NMEcount = l0.memberCount;
end;

function export:f_81_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[81];
    self.NMEcount = l0.memberCount;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_36_A_le_B()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = self[43];
    l0:Disable();
    l0 = self[48];
    l0.seconds = 1;
    l0:Start();
    self:en_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[73];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_25_A_is_False()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_25_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_60_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_10_A_is_True;
    l0.A_is_False = self.f_10_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
    l0 = self[71];
    l0:In(0);
end;

function export:f_57_Fail()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0:In(0);
end;

function export:f_57_Spawned()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0:In(0);
end;

function export:f_11_Far()
    local l0;
    self = self._graph;
    self:en_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_34_ShowOut()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0.seconds = 15;
    l0:Start();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = self[43];
    l0:Enable();
end;

function export:f_86_Activated()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_94_Out;
    l0:Enable();
end;

function export:f_16_A_is_False()
    local l0;
    self = self._graph;
    self:en_85();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_16_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_83_Finished()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_18_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostUndetected";
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_18_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostNoAlarmsTriggered";
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:In();
end;

function export:f_50_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_51_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_5_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:True();
    self:en_69();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_81();
    l0 = self[81];
    l0:Disable();
end;

function export:f_43_Enabled()
    local l0;
    self = self._graph;
    l0 = self[43];
    self.NMEcount = l0.memberCount;
    self:en_36();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_43_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[43];
    self.NMEcount = l0.memberCount;
end;

function export:f_43_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[43];
    self.NMEcount = l0.memberCount;
    self:en_36();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_45_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Outpostclearwithreinforcement";
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:In();
end;

function export:f_44_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[8];
    l1.Group = l0.LocalPlayer;
    l1 = self[83];
    l1.Group = l0.LocalPlayer;
    l1 = self[61];
    l1.Group = l0.LocalPlayer;
    l0 = self[8];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_78_Fail()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0:In(0);
end;

function export:f_78_Spawned()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0:In(0);
end;

function export:f_10_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Outpostclear;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_16_A_is_True;
    l0.A_is_False = self.f_16_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_10_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_92_Out;
    l0:Enable();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAIState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.InCombat = self.f_26_InCombat;
    l0.OutOfCombat = DummyFunction;
    l0:In();
end;

function export:f_82_Far()
    local l0;
    self = self._graph;
    l0 = self[71];
    l0:In(0);
end;

function export:f_20_Incremented()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AchievementUpdate.lua")];
    l0.name = "Achievement_Unheard";
    l0._graph = self;
    l0.Updated = self.f_66_Updated;
    l0:UpdateByName();
end;

function export:f_55_Out_0()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    self:en_81();
    l0 = self[81];
    l0:Enable();
end;

function export:f_28_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_9_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_70_Finished()
    local l0;
    self = self._graph;
    l0 = self[67];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_18_A_is_True;
    l0.A_is_False = self.f_18_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_87_Disabled()
    local l0;
    self = self._graph;
    self:en_87();
    l0 = self[87];
    l0:Disable();
end;

function export:f_87_Enabled()
    local l0;
    self = self._graph;
    l0 = self[87];
    self.GRD_Dog_NMB = l0.memberCount;
    self:en_88();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_87_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[87];
    self.GRD_Dog_NMB = l0.memberCount;
end;

function export:f_87_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[87];
    self.GRD_Dog_NMB = l0.memberCount;
    self:en_88();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_64_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0:Condition(1);
end;

function export:f_88_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0:In(0);
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    self:en_56();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_37_Enabled()
    local l0;
    self = self._graph;
    l0 = self[37];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_37_MemberInState()
    local l0;
    self = self._graph;
    l0 = self[37];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_37_StateStart()
    local l0;
    self = self._graph;
    l0 = self[37];
    self.NPCcombat = l0.memberCountInState;
    l0 = self[21];
    l0:Enable();
end;

function export:f_37_StateStop()
    local l0;
    self = self._graph;
    l0 = self[37];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_72_AlarmActivated()
    local l0;
    self = self._graph;
    self:en_72();
    l0 = self[72];
    l0:Disable();
    l0 = self[27];
    l0:Close();
    l0 = self[34];
    l0.time = self.Time_before_First_Wave;
    l0.objectiveId = {
        section = "Outposts",
        item = "ALARMACTIVATED",
        id = "154988",
    };
    l0:Show();
    l0 = self[12];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_72_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAlarmState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Activated = self.f_40_Activated;
    l0.Deactivated = DummyFunction;
    l0:In();
end;

function export:en_15()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Attack_LP";
    l0._graph = self;
    l0.Started = self.f_15_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_32()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_32_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_85()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Tension_LP";
    l0._graph = self;
    l0.Started = self.f_85_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_56()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Defend_LP";
    l0._graph = self;
    l0.Started = self.f_56_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_53()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedNoAlarm";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_53_Incremented;
end;

function export:en_91()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_91_Out;
end;

function export:en_81()
    local l0;
    l0 = self[81];
    l0.group = self.AllAIGroup;
    l0.autoDisable = false;
end;

function export:en_36()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.AIBudget;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_36_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_5_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_43()
    local l0;
    l0 = self[43];
    l0.group = self.AllAIGroup;
    l0.autoDisable = false;
end;

function export:en_87()
    local l0;
    l0 = self[87];
    l0.group = self.Guarding_dogs;
    l0.autoDisable = false;
end;

function export:en_88()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.GRD_Dog_NMB;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_88_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_69()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_69_Out;
end;

function export:en_72()
    local l0;
    l0 = self[72];
    l0.AlarmGroup = self.Alarm_Group;
end;

-- Empty out anchor definitions
function export:Undercover_Takeover()
    
end;
function export:Out()
    
end;
function export:Wave_1_Flow()
    
end;
_compilerVersion = 24;
