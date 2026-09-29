-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: Outpost_med_core2_1_Dog
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Combat" Type="Nomad|entity{}" />
    <DataIn Name="IF2Wave2Use" Type="Core|bool" />
    <DataIn Name="NearZone" Type="Core|float" />
    <DataIn Name="IDLE" Type="Nomad|entity{}" />
    <DataIn Name="MissionBlockID" Type="Nomad|missionblock" />
    <DataIn Name="IF3Wave2Use" Type="Core|bool" />
    <DataIn Name="AIBudget" Type="Core|int" />
    <DataIn Name="Condition before wave" Type="Core|int" />
    <DataIn Name="AiEventPoint" Type="Nomad|entity{}" />
    <DataIn Name="RebelBattlefield" Type="Nomad|entity{}" />
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
    <DataIn Name="Alarm Group" Type="Nomad|group" />
    <DataIn Name="RebelCheering" Type="Nomad|entity{}" />
    <DataIn Name="IF3Wave1Use" Type="Core|bool" />
    <DataIn Name="Reinforcement 2" Type="Nomad|entity{}" />
    <DataIn Name="DirectionalWave02" Type="Nomad|Sound" />
    <DataIn Name="Reinforcement 6" Type="Nomad|entity{}" />
    <DataIn Name="Alert" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 4" Type="Nomad|entity{}" />
    <DataIn Name="IF2Wave1Use" Type="Core|bool" />
    <DataIn Name="Defender Group" Type="Nomad|group" />
    <DataIn Name="Reinforcement 5" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 3" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 1" Type="Nomad|entity{}" />
    <DataIn Name="Time before First Wave" Type="Core|float" />
    <DataIn Name="MissionLayerID" Type="Nomad|missionblocklayer" />
    <DataIn Name="Battlefield" Type="Nomad|entity{}" />
    <DataIn Name="DirectionalWave01" Type="Nomad|Sound" />
    <DataIn Name="AllAIGroup" Type="Nomad|group" />
    <DataIn Name="Guarding_dogs" Type="Nomad|group" />
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
    self.Wave_1_Flow = DummyFunction;
    self.Out = DummyFunction;
    self.Wave_2_Flow = DummyFunction;
    self.Undercover_Takeover = DummyFunction;
    self.eplayer = nil;
    self.NMEcount = 0;
    self.Outpostclear = false;
    self.NPCinCombat = false;
    self.Stealth_value = 0;
    self.NPCcombat = 0;
    self.GRD_Dog_NMB = 0;
    self[47] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_47_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[81] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[81];
    l0._graph = self;
    l0.Enabled = self.f_81_Enabled;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_81_AlarmActivated;
    l0.AlarmDeactivated = DummyFunction;
    l0.AlarmDisabled = DummyFunction;
    l0.AlarmDestroyed = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_7_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_31_Far;
    self[80] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[80];
    l0._graph = self;
    l0.Enabled = self.f_80_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_80_MemberAdded;
    l0.MemberRemoved = self.f_80_MemberRemoved;
    self[62] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[62];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_62_Out;
    self[37] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_37_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[93] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[93];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_93_Far;
    self[39] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_39_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[79] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_79_Fail;
    l0.Spawned = self.f_79_Spawned;
    self[20] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[20];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_20_Out;
    self[104] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[104];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_104_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[106] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[106];
    l0._graph = self;
    l0.Out = self.f_106_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[96] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[96];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_96_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[107] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[107];
    l0._graph = self;
    l0.Enabled = self.f_107_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_107_MemberAdded;
    l0.MemberRemoved = self.f_107_MemberRemoved;
    self[27] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[27];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_27_Out;
    self[88] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[88];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_88_Fail;
    l0.Spawned = self.f_88_Spawned;
    self[18] = cbox:CreateBox("Domino/System/ObjectiveGageTimer.lua");
    l0 = self[18];
    l0._graph = self;
    l0.ShowOut = self.f_18_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_18_TimeElapsed;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_9_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_49_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[67] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_67_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
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
    self[56] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_56_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[86] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[86];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_86_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[78] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[78];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_78_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Enabled = self.f_60_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_60_MemberAdded;
    l0.MemberRemoved = self.f_60_MemberRemoved;
    self[66] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_66_Fail;
    l0.Spawned = self.f_66_Spawned;
    self[90] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[90];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_90_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_22_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[30];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_30_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[61];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_61_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[40];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_40_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[74];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_74_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_4_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_43_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[91] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[91];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_91_Fail;
    l0.Spawned = self.f_91_Spawned;
    self[76] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[76];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_76_Near;
    l0.Far = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_13_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_26_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/StealthIndicatorListener.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.OnNewValue = self.f_14_OnNewValue;
    self[25] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_25_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Enabled = self.f_34_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_34_MemberAdded;
    l0.MemberRemoved = self.f_34_MemberRemoved;
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
    self[35] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Enabled = self.f_35_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_35_MemberAdded;
    l0.MemberRemoved = self.f_35_MemberRemoved;
    self[98] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[98];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_98_Fail;
    l0.Spawned = self.f_98_Spawned;
    self[6] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_6_Fail;
    l0.Spawned = self.f_6_Spawned;
    self[38] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_38_Far;
    self[94] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[94];
    l0._graph = self;
    l0.Enabled = self.f_94_Enabled;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_94_StateStart;
    l0.StateStop = self.f_94_StateStop;
    l0.MemberInState = self.f_94_MemberInState;
    self[8] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_8_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[100] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[100];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_100_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[59] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[59];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_59_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_73_Out;
    l0:In();
end;

function export:f_84_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostUndetected";
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:In();
end;

function export:f_84_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostNoAlarmsTriggered";
    l0._graph = self;
    l0.Out = self.f_85_Out;
    l0:In();
end;

function export:f_36_A_is_False()
    local l0;
    self = self._graph;
    self:en_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_36_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_70_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAIState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.InCombat = self.f_50_InCombat;
    l0.OutOfCombat = DummyFunction;
    l0:In();
end;

function export:f_47_Finished()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.SoundId = self.DirectionalWave01;
    l0:ForcePlay_Priority();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0:Condition(1);
end;

function export:f_63_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[86];
    l1.Group = l0.LocalPlayer;
    l1 = self[43];
    l1.Group = l0.LocalPlayer;
    l1 = self[39];
    l1.Group = l0.LocalPlayer;
    l0 = self[43];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_81_AlarmActivated()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.seconds = 5;
    l0:Start();
    self:en_81();
    l0 = self[81];
    l0:Disable();
    l0 = self[5];
    l0:Close();
    l0 = self[18];
    l0.time = self.Time_before_First_Wave;
    l0.objectiveId = {
        section = "Outposts",
        item = "ALARMACTIVATED",
        id = "154988",
    };
    l0:Show();
end;

function export:f_81_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAlarmState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Activated = self.f_11_Activated;
    l0.Deactivated = DummyFunction;
    l0:In();
end;

function export:f_83_Out()
    local l0;
    self = self._graph;
    l0 = self[79];
    l0.ReinforcementPoint = self.Reinforcement_4;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_84_A_is_True;
    l0.A_is_False = self.f_84_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_89_Freezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
    self:en_81();
    l0 = self[81];
    l0:Enable();
    self:en_35();
    l0 = self[35];
    l0:Enable();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0:In(0);
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0.ReinforcementPoint = self.Reinforcement_5;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_31_Far()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_80_Enabled()
    local l0;
    self = self._graph;
    l0 = self[80];
    self.NMEcount = l0.memberCount;
    self:en_103();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_80_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[80];
    self.NMEcount = l0.memberCount;
end;

function export:f_80_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[80];
    self.NMEcount = l0.memberCount;
    self:en_103();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_33_A_is_False()
    local l0;
    self = self._graph;
    self:en_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_33_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_114_Out;
    l0:Enable();
end;

function export:f_21_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_77_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_62_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Outpostclearwithreinforcement";
    l0._graph = self;
    l0.Out = self.f_95_Out;
    l0:In();
end;

function export:f_16_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.seconds = 1;
    l0:Start();
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_34();
    l0 = self[34];
    l0:Disable();
    l0 = self[104];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_37_Finished()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_115_Out()
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
    l0.NoDeactivateMBOnUnlockDone = self.f_21_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_87_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[49];
    l1.Group = l0.LocalPlayer;
    l1 = self[37];
    l1.Group = l0.LocalPlayer;
    l1 = self[96];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x00455cfe";
    l1:ForcePlay_Priority();
end;

function export:f_93_Far()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0:In(0);
end;

function export:f_114_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_39_Finished()
    local l0;
    self = self._graph;
    l0 = self[86];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_79_Fail()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0:In(0);
end;

function export:f_79_Spawned()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0:In(0);
end;

function export:f_1_Incremented()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AchievementUpdate.lua")];
    l0.name = "Achievement_Unheard";
    l0._graph = self;
    l0.Updated = self.f_72_Updated;
    l0:UpdateByName();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_87_Out;
    l0:In();
end;

function export:f_45_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_52_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_104_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:CreateAILogInArmy();
end;

function export:f_28_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_115_Out;
    l0:Disable();
end;

function export:f_106_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[94];
    l0.group = self.Defender_Group;
    l0:Combat();
    l0 = self[76];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.nearZone = self.NearZone;
    l0:Enable();
end;

function export:f_69_Activated()
    local l0;
    self = self._graph;
    l0 = self[106];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_11_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_70_Out;
    l0:Activate();
end;

function export:f_96_Finished()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.SoundId = self.DirectionalWave02;
    l0:ForcePlay_Priority();
end;

function export:f_107_Enabled()
    local l0;
    self = self._graph;
    l0 = self[107];
    self.GRD_Dog_NMB = l0.memberCount;
    self:en_108();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_107_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[107];
    self.GRD_Dog_NMB = l0.memberCount;
end;

function export:f_107_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[107];
    self.GRD_Dog_NMB = l0.memberCount;
    self:en_108();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_51_Started()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:In();
end;

function export:f_88_Fail()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0:In(0);
end;

function export:f_88_Spawned()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0:In(0);
end;

function export:f_105_A_is_False()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_105_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[100];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_18_ShowOut()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.seconds = 15;
    l0:Start();
end;

function export:f_18_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:Enable();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:Condition(0);
end;

function export:f_29_Unlocked()
    self = self._graph;
    self:Out();
end;

function export:f_49_Finished()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0:Condition(0);
end;

function export:f_68_A_is_False()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_68_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_67_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_113_Out;
    l0:Disable();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_77_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_3_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0:In();
end;

function export:f_56_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.ReinforcementPoint = self.Reinforcement_2;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_86_Finished()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:Condition(0);
end;

function export:f_78_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2Wave2Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_68_A_is_True;
    l0.A_is_False = self.f_68_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedUndetected";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_1_Incremented;
    l0:Increment();
end;

function export:f_57_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[8];
    l1.Group = l0.LocalPlayer;
    l1 = self[9];
    l1.Group = l0.LocalPlayer;
    l1 = self[47];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x00455cfe";
    l1:ForcePlay_Priority();
end;

function export:f_46_Incremented()
    local l0;
    self = self._graph;
    self:en_107();
    l0 = self[107];
    l0:Enable();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
    l0 = self[40];
    l0:In(0);
    self:en_51();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_60_Enabled()
    local l0;
    self = self._graph;
    l0 = self[60];
    self.NMEcount = l0.memberCount;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_60_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[60];
    self.NMEcount = l0.memberCount;
end;

function export:f_60_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[60];
    self.NMEcount = l0.memberCount;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_66_Fail()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0:In(0);
end;

function export:f_66_Spawned()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0:In(0);
end;

function export:f_99_Activated()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_90_Out_0()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_64_Out;
    l0:True();
end;

function export:f_50_InCombat()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetIdleSubState.lua")];
    l0.Group = self.Defender_Group;
    l0._graph = self;
    l0.Out = self.f_109_Out;
    l0:SetCautious();
end;

function export:f_103_A_le_B()
    local l0;
    self = self._graph;
    self:en_80();
    l0 = self[80];
    l0:Disable();
    l0 = self[25];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_22_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[91];
    l0.ReinforcementPoint = self.Reinforcement_3;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_30_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3Wave2Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_105_A_is_True;
    l0.A_is_False = self.f_105_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_61_Out_0()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    self:en_80();
    l0 = self[80];
    l0:Enable();
end;

function export:f_40_Out_0()
    local l0;
    self = self._graph;
    self:en_55();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_74_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3Wave1Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_33_A_is_True;
    l0.A_is_False = self.f_33_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_54_A_eq_B()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:Disable();
    l0 = self[5];
    l0:In();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:True();
end;

function export:f_101_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:True();
    l0 = self[14];
    l0:ShutDown();
end;

function export:f_4_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2Wave1Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_36_A_is_True;
    l0.A_is_False = self.f_36_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0:In(0);
    self:Wave_2_Flow();
end;

function export:f_43_Finished()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.SoundId = "0x00176ae2";
    l0:ForcePlay_Priority();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
end;

function export:f_111_Out()
    local l0;
    self = self._graph;
    self:en_51();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_3_Unlocked()
    self = self._graph;
    self:Undercover_Takeover();
end;

function export:f_91_Fail()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:In(0);
end;

function export:f_91_Spawned()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:In(0);
end;

function export:f_76_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_102_A_is_True;
    l0.A_is_False = self.f_102_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:Condition(1);
end;

function export:f_26_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_72_Updated()
    local l0;
    self = self._graph;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_112_Out()
    local l0;
    self = self._graph;
    l0 = self[67];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_99_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_92_Out;
    l0:Disable();
end;

function export:f_73_Out()
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
    l0.Freezed = self.f_89_Freezed;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Freeze();
end;

function export:f_97_A_is_False()
    local l0;
    self = self._graph;
    self:en_55();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_97_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_14_OnNewValue()
    local l0;
    self = self._graph;
    l0 = self[14];
    self.Stealth_value = l0.stealth_value;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.Stealth_value;
    l0.B = 1;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_101_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[98];
    l0.ReinforcementPoint = self.Reinforcement_1;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_85_Out()
    local l0;
    self = self._graph;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_25_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_83_Out;
    l0:CreateAILogInArmy();
    l0 = self[20];
    l0:Condition(1);
end;

function export:f_34_Enabled()
    local l0;
    self = self._graph;
    l0 = self[34];
    self.NMEcount = l0.memberCount;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_34_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[34];
    self.NMEcount = l0.memberCount;
end;

function export:f_34_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[34];
    self.NMEcount = l0.memberCount;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_82_Out()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    l0 = self[61];
    l0:In(0);
end;

function export:f_75_Out_0()
    local l0;
    self = self._graph;
    self:Wave_2_Flow();
    self:en_60();
    l0 = self[60];
    l0:Enable();
end;

function export:f_113_Out()
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
    l0.NoDeactivateMBOnUnlockDone = self.f_45_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_35_Enabled()
    local l0;
    self = self._graph;
    l0 = self[35];
    self.NMEcount = l0.memberCount;
    self:en_54();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_35_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[35];
    self.NMEcount = l0.memberCount;
end;

function export:f_35_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[35];
    self.NMEcount = l0.memberCount;
    self:en_54();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_52_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_29_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_44_A_eq_B()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:True();
    self:en_60();
    l0 = self[60];
    l0:Disable();
end;

function export:f_98_Fail()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_98_Spawned()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_55_Started()
    local l0;
    self = self._graph;
    l0 = self[93];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_69_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    self:en_81();
    l0 = self[81];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:Disable();
end;

function export:f_6_Fail()
    local l0;
    self = self._graph;
    l0 = self[74];
    l0:In(0);
end;

function export:f_6_Spawned()
    local l0;
    self = self._graph;
    l0 = self[74];
    l0:In(0);
end;

function export:f_38_Far()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_58_Started()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_94_Enabled()
    local l0;
    self = self._graph;
    l0 = self[94];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_94_MemberInState()
    local l0;
    self = self._graph;
    l0 = self[94];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_94_StateStart()
    local l0;
    self = self._graph;
    l0 = self[94];
    self.NPCcombat = l0.memberCountInState;
    l0 = self[14];
    l0:Enable();
end;

function export:f_94_StateStop()
    local l0;
    self = self._graph;
    l0 = self[94];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_100_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[88];
    l0.ReinforcementPoint = self.Reinforcement_6;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_59_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_112_Out;
    l0:Enable();
end;

function export:f_108_A_eq_B()
    local l0;
    self = self._graph;
    self:en_107();
    l0 = self[107];
    l0:Disable();
    l0 = self[90];
    l0:In(0);
end;

function export:f_102_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Outpostclear;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_97_A_is_True;
    l0.A_is_False = self.f_97_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_102_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:en_81()
    local l0;
    l0 = self[81];
    l0.AlarmGroup = self.Alarm_Group;
end;

function export:en_80()
    local l0;
    l0 = self[80];
    l0.group = self.AllAIGroup;
    l0.autoDisable = false;
end;

function export:en_16()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.AIBudget;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_16_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_32()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_32_Out;
end;

function export:en_107()
    local l0;
    l0 = self[107];
    l0.group = self.Guarding_dogs;
    l0.autoDisable = false;
end;

function export:en_51()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Attack_LP";
    l0._graph = self;
    l0.Started = self.f_51_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_46()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedNoAlarm";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_46_Incremented;
end;

function export:en_60()
    local l0;
    l0 = self[60];
    l0.group = self.AllAIGroup;
    l0.autoDisable = false;
end;

function export:en_103()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.Condition_before_wave;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_103_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_54()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_54_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_24()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_24_Out;
end;

function export:en_111()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_111_Out;
end;

function export:en_34()
    local l0;
    l0 = self[34];
    l0.group = self.AllAIGroup;
    l0.autoDisable = false;
end;

function export:en_82()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_82_Out;
end;

function export:en_35()
    local l0;
    l0 = self[35];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_44()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_44_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_55()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Tension_LP";
    l0._graph = self;
    l0.Started = self.f_55_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_58()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Defend_LP";
    l0._graph = self;
    l0.Started = self.f_58_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_108()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.GRD_Dog_NMB;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_108_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

-- Empty out anchor definitions
function export:Wave_1_Flow()
    
end;
function export:Out()
    
end;
function export:Wave_2_Flow()
    
end;
function export:Undercover_Takeover()
    
end;
_compilerVersion = 24;
