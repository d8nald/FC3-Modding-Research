-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: Outpost_easy_core2_0
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Reinforcement 1" Type="Nomad|entity{}" />
    <DataIn Name="Defender Group" Type="Nomad|group" />
    <DataIn Name="Alarm Group" Type="Nomad|group" />
    <DataIn Name="Reinforcement 2" Type="Nomad|entity{}" />
    <DataIn Name="Time before First Wave" Type="Core|float" />
    <DataIn Name="NearZone" Type="Core|float" />
    <DataIn Name="AiEventPoint" Type="Nomad|entity{}" />
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 3" Type="Nomad|entity{}" />
    <DataIn Name="Battlefield" Type="Nomad|entity{}" />
    <DataIn Name="Directional" Type="Nomad|Sound" />
    <DataIn Name="RebelBattlefield" Type="Nomad|entity{}" />
    <DataIn Name="RebelCheering" Type="Nomad|entity{}" />
    <DataIn Name="IDLE" Type="Nomad|entity{}" />
    <DataIn Name="Alert" Type="Nomad|entity{}" />
    <DataIn Name="Combat" Type="Nomad|entity{}" />
    <DataIn Name="IF2use" Type="Core|bool" />
    <DataIn Name="IF3use" Type="Core|bool" />
    <DataIn Name="MissionLayerID" Type="Nomad|missionblocklayer" />
    <DataIn Name="MissionBlockID" Type="Nomad|missionblock" />
    <DataIn Name="AIBudget" Type="Core|int" />
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
    self.Wave_1_Flow = DummyFunction;
    self.Out = DummyFunction;
    self.Deathcount = 0;
    self.NPCinCombat = false;
    self.NPCcombat = 0;
    self.NMEcount = 0;
    self.eplayer = nil;
    self.Outpostclear = false;
    self.ePlayerVehicle = nil;
    self.lPlayerVehicles = {
    };
    self.MetaSequenceId = 0;
    self.Stealth_value = 0;
    self[12] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[104] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[104];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_104_Out;
    self[92] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[92];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_92_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_45_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_45_Finished;
    l0.FinishedInterrupted = self.f_45_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_1_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/StealthIndicatorListener.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.OnNewValue = self.f_61_OnNewValue;
    self[40] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_40_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_10_Near;
    l0.Far = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_6_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Enabled = self.f_21_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_21_MemberAdded;
    l0.MemberRemoved = self.f_21_MemberRemoved;
    self[30] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_30_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_30_Finished;
    l0.FinishedInterrupted = self.f_30_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Enabled = self.f_24_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_24_MemberAdded;
    l0.MemberRemoved = self.f_24_MemberRemoved;
    self[23] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_23_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_15_Far;
    self[109] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[109];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_109_Out;
    self[19] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_19_Fail;
    l0.Spawned = self.f_19_Spawned;
    self[35] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_35_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_17_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_17_Finished;
    l0.FinishedInterrupted = self.f_17_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = self.f_29_Enabled;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_29_AlarmActivated;
    l0.AlarmDeactivated = DummyFunction;
    l0.AlarmDisabled = DummyFunction;
    l0.AlarmDestroyed = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_55_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[54] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = self.f_16_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_16_MemberAdded;
    l0.MemberRemoved = self.f_16_MemberRemoved;
    self[91] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[91];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_91_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[99] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[99];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_99_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_20_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_14_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_14_Finished;
    l0.FinishedInterrupted = self.f_14_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[105] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[105];
    l0._graph = self;
    l0.Out = self.f_105_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_39_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_41_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_41_Finished;
    l0.FinishedInterrupted = self.f_41_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_44_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_27_Fail;
    l0.Spawned = self.f_27_Spawned;
    self[3] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_3_Far;
    self[53] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[53];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_53_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_9_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_9_Finished;
    l0.FinishedInterrupted = self.f_9_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[103] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[103];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_103_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_25_Fail;
    l0.Spawned = self.f_25_Spawned;
    self[7] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = self.f_7_Enabled;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_7_StateStart;
    l0.StateStop = self.f_7_StateStop;
    l0.MemberInState = self.f_7_MemberInState;
    self[37] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_37_Far;
    self[110] = cbox:CreateBox("Domino/System/ObjectiveGageTimer.lua");
    l0 = self[110];
    l0._graph = self;
    l0.ShowOut = self.f_110_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_110_TimeElapsed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_34_A_is_True;
    l0.A_is_False = self.f_34_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_104_Out()
    local l0;
    self = self._graph;
    l0 = self[103];
    l0:In(0);
end;

function export:f_4_Out()
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
    l0.Freezed = self.f_31_Freezed;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Freeze();
end;

function export:f_93_Out()
    local l0;
    self = self._graph;
    l0 = self[104];
    l0:Condition(1);
end;

function export:f_92_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_101_A_is_True;
    l0.A_is_False = self.f_101_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_58_InCombat()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetIdleSubState.lua")];
    l0.Group = self.Defender_Group;
    l0._graph = self;
    l0.Out = self.f_52_Out;
    l0:SetCautious();
end;

function export:f_66_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_45_Finished()
    local l0;
    self = self._graph;
    self:en_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_45_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_45_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_112_Unlocked()
    self = self._graph;
    self:Out();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = self[104];
    l0:Condition(0);
end;

function export:f_60_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:Activate();
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_67_Out;
    l0:Disable();
end;

function export:f_61_OnNewValue()
    local l0;
    self = self._graph;
    l0 = self[61];
    self.Stealth_value = l0.stealth_value;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.Stealth_value;
    l0.B = 1;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_62_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_40_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[109];
    l0:Condition(1);
end;

function export:f_10_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_42_A_is_True;
    l0.A_is_False = self.f_42_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_6_Out_0()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_21_Enabled()
    local l0;
    self = self._graph;
    l0 = self[21];
    self.NMEcount = l0.memberCount;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_21_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[21];
    self.NMEcount = l0.memberCount;
end;

function export:f_21_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[21];
    self.NMEcount = l0.memberCount;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_97_Incremented()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AchievementUpdate.lua")];
    l0.name = "Achievement_Unheard";
    l0._graph = self;
    l0.Updated = self.f_96_Updated;
    l0:UpdateByName();
end;

function export:f_38_Started()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_30_Finished()
    local l0;
    self = self._graph;
    self:en_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_30_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_30_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_68();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = self[109];
    l0:Condition(0);
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
end;

function export:f_124_Activated()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_5_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In();
    self:en_16();
    l0 = self[16];
    l0:Disable();
end;

function export:f_24_Enabled()
    local l0;
    self = self._graph;
    l0 = self[24];
    self.NMEcount = l0.memberCount;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_24_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[24];
    self.NMEcount = l0.memberCount;
end;

function export:f_24_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[24];
    self.NMEcount = l0.memberCount;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_23_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.ReinforcementPoint = self.Reinforcement_3;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_114_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_113_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_15_Far()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.ReinforcementPoint = self.Reinforcement_1;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.group = self.Defender_Group;
    l0:Combat();
    l0 = self[10];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.nearZone = self.NearZone;
    l0:Enable();
end;

function export:f_116_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_115_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:Enable();
end;

function export:f_11_A_eq_B()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_24();
    l0 = self[24];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:True();
end;

function export:f_98_Incremented()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0:In(0);
end;

function export:f_19_Fail()
    local l0;
    self = self._graph;
    l0 = self[91];
    l0:In(0);
end;

function export:f_19_Spawned()
    local l0;
    self = self._graph;
    l0 = self[91];
    l0:In(0);
end;

function export:f_96_Updated()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_35_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_50();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_17_Finished()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = self[45];
    l0:ForcePlay_Priority();
end;

function export:f_17_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = self[45];
    l0:ForcePlay_Priority();
end;

function export:f_17_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = self[45];
    l0:ForcePlay_Priority();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    self:en_50();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_29_AlarmActivated()
    local l0;
    self = self._graph;
    l0 = self[110];
    l0.time = self.Time_before_First_Wave;
    l0.objectiveId = {
        section = "Outposts",
        item = "ALARMACTIVATED",
        id = "154988",
    };
    l0:Show();
    self:en_29();
    l0 = self[29];
    l0:Disable();
    l0 = self[39];
    l0.seconds = 2;
    l0:Start();
    l0 = self[12];
    l0:Close();
end;

function export:f_29_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAlarmState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Activated = self.f_60_Activated;
    l0.Deactivated = DummyFunction;
    l0:In();
end;

function export:f_28_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[41];
    l1.Group = l0.LocalPlayer;
    l1 = self[17];
    l1.Group = l0.LocalPlayer;
    l1 = self[45];
    l1.Group = l0.LocalPlayer;
    l0 = self[41];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_55_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:CreateAILogInArmy();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_94_Out;
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_125_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    self:en_29();
    l0 = self[29];
    l0:Disable();
end;

function export:f_8_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[30];
    l1.Group = l0.LocalPlayer;
    l1 = self[14];
    l1.Group = l0.LocalPlayer;
    l1 = self[9];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x00455cfe";
    l1:ForcePlay_Priority();
end;

function export:f_62_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:ShutDown();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:True();
end;

function export:f_115_Unlocked()
    self = self._graph;
    self:Undercover_Takeover();
end;

function export:f_94_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_66_Out;
    l0:Enable();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
    self:en_38();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
    l0 = self[6];
    l0:In(0);
end;

function export:f_100_A_is_False()
    local l0;
    self = self._graph;
    self:en_102();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_100_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_124_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_93_Out;
    l0:Disable();
end;

function export:f_65_Out()
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
    l0.NoDeactivateMBOnUnlockDone = self.f_114_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_16_Enabled()
    local l0;
    self = self._graph;
    l0 = self[16];
    self.NMEcount = l0.memberCount;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_16_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[16];
    self.NMEcount = l0.memberCount;
end;

function export:f_16_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[16];
    self.NMEcount = l0.memberCount;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_33_A_is_False()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_33_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_91_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_100_A_is_True;
    l0.A_is_False = self.f_100_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_99_Out_0()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    self:en_24();
    l0 = self[24];
    l0:Enable();
end;

function export:f_20_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_65_Out;
    l0:Disable();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAIState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.InCombat = self.f_58_InCombat;
    l0.OutOfCombat = DummyFunction;
    l0:In();
end;

function export:f_42_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Outpostclear;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_33_A_is_True;
    l0.A_is_False = self.f_33_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_42_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_14_Finished()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:ForcePlay_Priority();
end;

function export:f_14_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:ForcePlay_Priority();
end;

function export:f_14_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:ForcePlay_Priority();
end;

function export:f_125_Activated()
    local l0;
    self = self._graph;
    l0 = self[105];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_101_A_is_False()
    local l0;
    self = self._graph;
    self:en_102();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_101_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_105_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_46_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.seconds = 1;
    l0:Start();
    self:en_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[35];
    l0.seconds = 1;
    l0:Start();
    self:en_21();
    l0 = self[21];
    l0:Disable();
end;

function export:f_102_Out()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    l0 = self[99];
    l0:In(0);
end;

function export:f_39_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_41_Finished()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:ForcePlay_Priority();
end;

function export:f_41_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:ForcePlay_Priority();
end;

function export:f_41_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:ForcePlay_Priority();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedUndetected";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_97_Incremented;
    l0:Increment();
end;

function export:f_34_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostUndetected";
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:In();
end;

function export:f_34_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostNoAlarmsTriggered";
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:In();
end;

function export:f_44_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.ReinforcementPoint = self.Reinforcement_2;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_52_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0:True();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_27_Fail()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0:In(0);
end;

function export:f_27_Spawned()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0:In(0);
end;

function export:f_50_Started()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_3_Far()
    local l0;
    self = self._graph;
    self:en_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_53_Out_0()
    local l0;
    self = self._graph;
    self:en_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:True();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:ForcePlay_Priority();
end;

function export:f_9_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:ForcePlay_Priority();
end;

function export:f_9_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:ForcePlay_Priority();
end;

function export:f_103_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Outpostclearwithreinforcement";
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_67_Out()
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
    l0.NoDeactivateMBOnUnlockDone = self.f_117_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_25_Fail()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:In(0);
end;

function export:f_25_Spawned()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:In(0);
end;

function export:f_117_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_116_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_7_Enabled()
    local l0;
    self = self._graph;
    l0 = self[7];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_7_MemberInState()
    local l0;
    self = self._graph;
    l0 = self[7];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_7_StateStart()
    local l0;
    self = self._graph;
    l0 = self[7];
    self.NPCcombat = l0.memberCountInState;
    l0 = self[61];
    l0:Enable();
end;

function export:f_7_StateStop()
    local l0;
    self = self._graph;
    l0 = self[7];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_18_Started()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_37_Far()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In(0);
end;

function export:f_113_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_112_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_110_ShowOut()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.seconds = 15;
    l0:Start();
end;

function export:f_110_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Enable();
end;

function export:f_31_Freezed()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:Enable();
    self:en_29();
    l0 = self[29];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:In();
end;

function export:en_45()
    local l0;
    l0 = self[45];
    l0.SoundId = "0x00455cfe";
end;

function export:en_63()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_63_Out;
end;

function export:en_21()
    local l0;
    l0 = self[21];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_38()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Attack_LP";
    l0._graph = self;
    l0.Started = self.f_38_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_30()
    local l0;
    l0 = self[30];
    l0.SoundId = "0x00455cfe";
end;

function export:en_68()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_68_Out;
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

function export:en_24()
    local l0;
    l0 = self[24];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_11()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_11_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_98()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedNoAlarm";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_98_Incremented;
end;

function export:en_17()
    local l0;
    l0 = self[17];
    l0.SoundId = self.Directional;
end;

function export:en_36()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_36_Out;
end;

function export:en_29()
    local l0;
    l0 = self[29];
    l0.AlarmGroup = self.Alarm_Group;
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.SoundId = "0x00176ae2";
end;

function export:en_46()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.AIBudget;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_46_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_102()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_102_Out;
end;

function export:en_64()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_64_Out;
end;

function export:en_50()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Defend_LP";
    l0._graph = self;
    l0.Started = self.f_50_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Tension_LP";
    l0._graph = self;
    l0.Started = self.f_18_Started;
    l0.Stopped = DummyFunction;
end;

-- Empty out anchor definitions
function export:Undercover_Takeover()
    
end;
function export:Wave_1_Flow()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
