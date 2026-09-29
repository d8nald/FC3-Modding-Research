-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: Outpost_med_core2_0
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="AiEventPoint" Type="Nomad|entity{}" />
    <DataIn Name="Condition before wave" Type="Core|int" />
    <DataIn Name="Defender Group" Type="Nomad|group" />
    <DataIn Name="Alarm Group" Type="Nomad|group" />
    <DataIn Name="Reinforcement 3" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 5" Type="Nomad|entity{}" />
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 1" Type="Nomad|entity{}" />
    <DataIn Name="Battlefield" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 4" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 2" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 6" Type="Nomad|entity{}" />
    <DataIn Name="Time before First Wave" Type="Core|float" />
    <DataIn Name="NearZone" Type="Core|float" />
    <DataIn Name="RebelBattlefield" Type="Nomad|entity{}" />
    <DataIn Name="RebelCheering" Type="Nomad|entity{}" />
    <DataIn Name="DirectionalWave01" Type="Nomad|Sound" />
    <DataIn Name="DirectionalWave02" Type="Nomad|Sound" />
    <DataIn Name="IDLE" Type="Nomad|entity{}" />
    <DataIn Name="Alert" Type="Nomad|entity{}" />
    <DataIn Name="Combat" Type="Nomad|entity{}" />
    <DataIn Name="IF2Wave1Use" Type="Core|bool" />
    <DataIn Name="IF3Wave1Use" Type="Core|bool" />
    <DataIn Name="IF2Wave2Use" Type="Core|bool" />
    <DataIn Name="IF3Wave2Use" Type="Core|bool" />
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
    self.Out = DummyFunction;
    self.Undercover_Takeover = DummyFunction;
    self.Wave_2_Flow = DummyFunction;
    self.Wave_1_Flow = DummyFunction;
    self.NPCcombat = 0;
    self.Outpostclear = false;
    self.eplayer = nil;
    self.Deathcount = 0;
    self.NMEcount = 0;
    self.NPCinCombat = false;
    self.MetaSequenceId = 0;
    self.Stealth_value = 0;
    self[125] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[125];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_125_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_34_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[128] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[128];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_128_Out;
    self[17] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_17_Near;
    l0.Far = DummyFunction;
    self[81] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[81];
    l0._graph = self;
    l0.Out = self.f_81_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_32_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_32_Finished;
    l0.FinishedInterrupted = self.f_32_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[106] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[106];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_106_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_33_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_8_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_8_Finished;
    l0.FinishedInterrupted = self.f_8_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[48];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_48_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[130] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[130];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_130_Out;
    self[127] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[127];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_127_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[105] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[105];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_105_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Enabled = self.f_22_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_22_MemberAdded;
    l0.MemberRemoved = self.f_22_MemberRemoved;
    self[56] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Enabled = self.f_56_Enabled;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_56_StateStart;
    l0.StateStop = self.f_56_StateStop;
    l0.MemberInState = self.f_56_MemberInState;
    self[12] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_12_MemberAdded;
    l0.MemberRemoved = self.f_12_MemberRemoved;
    self[46] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Enabled = self.f_55_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_55_MemberAdded;
    l0.MemberRemoved = self.f_55_MemberRemoved;
    self[42] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_42_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_31_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[63] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_63_Fail;
    l0.Spawned = self.f_63_Spawned;
    self[38] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_38_Far;
    self[1] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_1_Far;
    self[61] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_61_Fail;
    l0.Spawned = self.f_61_Spawned;
    self[57] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_57_Fail;
    l0.Spawned = self.f_57_Spawned;
    self[113] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[113];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_113_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_30_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_30_Finished;
    l0.FinishedInterrupted = self.f_30_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[91] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[91];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_91_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[66] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_66_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_66_Finished;
    l0.FinishedInterrupted = self.f_66_FinishedInterrupted;
    l0.Out = DummyFunction;
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
    self[50] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_50_Fail;
    l0.Spawned = self.f_50_Spawned;
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
    self[114] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[114];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_114_Out_0;
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
    self[124] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[124];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_124_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_14_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_14_Finished;
    l0.FinishedInterrupted = self.f_14_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_15_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_15_Finished;
    l0.FinishedInterrupted = self.f_15_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[115] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[115];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_115_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
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
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_9_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_9_Finished;
    l0.FinishedInterrupted = self.f_9_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_58_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_58_Finished;
    l0.FinishedInterrupted = self.f_58_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[129] = cbox:CreateBox("Domino/System/ObjectiveGageTimer.lua");
    l0 = self[129];
    l0._graph = self;
    l0.ShowOut = self.f_129_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_129_TimeElapsed;
    self[126] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[126];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_126_Out;
    self[100] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[100];
    l0._graph = self;
    l0.Out = self.f_100_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_16_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_3_AlarmActivated;
    l0.AlarmDeactivated = DummyFunction;
    l0.AlarmDisabled = DummyFunction;
    l0.AlarmDestroyed = DummyFunction;
    self[123] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[123];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_123_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_21_Far;
    self[41] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_41_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_41_Finished;
    l0.FinishedInterrupted = self.f_41_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = self.f_23_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_23_MemberAdded;
    l0.MemberRemoved = self.f_23_MemberRemoved;
    self[59] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_59_Fail;
    l0.Spawned = self.f_59_Spawned;
    self[70] = cbox:CreateBox("Domino/System/StealthIndicatorListener.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.OnNewValue = self.f_70_OnNewValue;
    self[24] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_24_Fail;
    l0.Spawned = self.f_24_Spawned;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_122_Out;
    l0:In();
end;

function export:f_18_A_eq_B()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Disable();
    l0 = self[46];
    l0:In();
end;

function export:f_111_Updated()
    local l0;
    self = self._graph;
    self:en_112();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_51_Started()
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

function export:f_125_Out_0()
    local l0;
    self = self._graph;
    self:Wave_2_Flow();
    self:en_23();
    l0 = self[23];
    l0:Enable();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:Disable();
end;

function export:f_47_Freezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
    self:en_3();
    l0 = self[3];
    l0:Enable();
    self:en_12();
    l0 = self[12];
    l0:Enable();
end;

function export:f_120_A_is_False()
    local l0;
    self = self._graph;
    self:en_119();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_120_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_128_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Outpostclearwithreinforcement";
    l0._graph = self;
    l0.Out = self.f_62_Out;
    l0:In();
end;

function export:f_17_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_65_A_is_True;
    l0.A_is_False = self.f_65_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_53_InCombat()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetIdleSubState.lua")];
    l0.Group = self.Defender_Group;
    l0._graph = self;
    l0.Out = self.f_71_Out;
    l0:SetCautious();
end;

function export:f_81_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_32_Finished()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:ForcePlay_Priority();
end;

function export:f_32_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:ForcePlay_Priority();
end;

function export:f_32_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:ForcePlay_Priority();
end;

function export:f_106_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:CreateAILogInArmy();
    l0 = self[126];
    l0:Condition(1);
end;

function export:f_118_A_is_False()
    local l0;
    self = self._graph;
    self:en_117();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_118_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_76_Out()
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
    l0.NoDeactivateMBOnUnlockDone = self.f_136_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_33_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:ForcePlay_Priority();
end;

function export:f_8_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:ForcePlay_Priority();
end;

function export:f_8_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:ForcePlay_Priority();
end;

function export:f_119_Out()
    local l0;
    self = self._graph;
    self:Wave_2_Flow();
    l0 = self[125];
    l0:In(0);
end;

function export:f_117_Out()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    l0 = self[115];
    l0:In(0);
end;

function export:f_48_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:True();
    self:en_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_130_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:In();
end;

function export:f_127_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:Enable();
end;

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_138_Activated()
    local l0;
    self = self._graph;
    l0 = self[100];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_77_Out()
    local l0;
    self = self._graph;
    l0 = self[126];
    l0:Condition(0);
end;

function export:f_105_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:CreateAILogInArmy();
end;

function export:f_22_Enabled()
    local l0;
    self = self._graph;
    l0 = self[22];
    self.NMEcount = l0.memberCount;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_22_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[22];
    self.NMEcount = l0.memberCount;
end;

function export:f_22_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[22];
    self.NMEcount = l0.memberCount;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_138_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_107_Out;
    l0:Disable();
end;

function export:f_133_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_132_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_56_Enabled()
    local l0;
    self = self._graph;
    l0 = self[56];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_56_MemberInState()
    local l0;
    self = self._graph;
    l0 = self[56];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_56_StateStart()
    local l0;
    self = self._graph;
    l0 = self[56];
    self.NPCcombat = l0.memberCountInState;
    l0 = self[70];
    l0:Enable();
end;

function export:f_56_StateStop()
    local l0;
    self = self._graph;
    l0 = self[56];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_116_A_is_False()
    local l0;
    self = self._graph;
    self:en_117();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_116_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
    l0 = self[4];
    l0:In(0);
    self:en_51();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.nearZone = self.NearZone;
    l0:Enable();
    l0 = self[56];
    l0.group = self.Defender_Group;
    l0:Combat();
end;

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    self.NMEcount = l0.memberCount;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_12_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[12];
    self.NMEcount = l0.memberCount;
end;

function export:f_12_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[12];
    self.NMEcount = l0.memberCount;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_29_A_is_True;
    l0.A_is_False = self.f_29_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_62_Out()
    local l0;
    self = self._graph;
    l0 = self[127];
    l0:In(0);
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedUndetected";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_110_Incremented;
    l0:Increment();
end;

function export:f_136_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_135_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_112_Incremented()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0:In(0);
end;

function export:f_69_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0:ShutDown();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:True();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = self[128];
    l0:Condition(0);
end;

function export:f_134_Unlocked()
    self = self._graph;
    self:Undercover_Takeover();
end;

function export:f_60_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:True();
    self:en_23();
    l0 = self[23];
    l0:Disable();
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = self[130];
    l0:Condition(0);
end;

function export:f_45_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[8];
    l1.Group = l0.LocalPlayer;
    l1 = self[66];
    l1.Group = l0.LocalPlayer;
    l1 = self[14];
    l1.Group = l0.LocalPlayer;
    l0 = self[66];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_55_Enabled()
    local l0;
    self = self._graph;
    l0 = self[55];
    self.NMEcount = l0.memberCount;
    self:en_54();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_55_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[55];
    self.NMEcount = l0.memberCount;
end;

function export:f_55_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[55];
    self.NMEcount = l0.memberCount;
    self:en_54();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_108_Out;
    l0:Disable();
    self:en_3();
    l0 = self[3];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_139_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_42_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0.ReinforcementPoint = self.Reinforcement_5;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_31_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:Disable();
    l0 = self[4];
    l0:In(0);
end;

function export:f_19_Started()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_63_Fail()
    local l0;
    self = self._graph;
    l0 = self[114];
    l0:In(0);
end;

function export:f_63_Spawned()
    local l0;
    self = self._graph;
    l0 = self[114];
    l0:In(0);
end;

function export:f_68_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:Activate();
end;

function export:f_38_Far()
    local l0;
    self = self._graph;
    self:en_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_Far()
    local l0;
    self = self._graph;
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_43_A_is_False()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_43_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_67_Out;
    l0:True();
end;

function export:f_61_Fail()
    local l0;
    self = self._graph;
    l0 = self[113];
    l0:In(0);
end;

function export:f_61_Spawned()
    local l0;
    self = self._graph;
    l0 = self[113];
    l0:In(0);
end;

function export:f_132_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_131_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_57_Fail()
    local l0;
    self = self._graph;
    l0 = self[125];
    l0:In(0);
end;

function export:f_57_Spawned()
    local l0;
    self = self._graph;
    l0 = self[125];
    l0:In(0);
end;

function export:f_108_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:Enable();
end;

function export:f_113_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2Wave1Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_116_A_is_True;
    l0.A_is_False = self.f_116_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_30_Finished()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = self[41];
    l0:ForcePlay_Priority();
end;

function export:f_30_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = self[41];
    l0:ForcePlay_Priority();
end;

function export:f_30_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = self[41];
    l0:ForcePlay_Priority();
end;

function export:f_91_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0:In();
end;

function export:f_66_Finished()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:ForcePlay_Priority();
end;

function export:f_66_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:ForcePlay_Priority();
end;

function export:f_66_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:ForcePlay_Priority();
end;

function export:f_131_Unlocked()
    self = self._graph;
    self:Out();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.ReinforcementPoint = self.Reinforcement_6;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_112();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_50_Fail()
    local l0;
    self = self._graph;
    l0 = self[115];
    l0:In(0);
end;

function export:f_50_Spawned()
    local l0;
    self = self._graph;
    l0 = self[115];
    l0:In(0);
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_4_Out_0()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_114_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3Wave1Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_118_A_is_True;
    l0.A_is_False = self.f_118_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_20_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[130];
    l0:Condition(1);
end;

function export:f_124_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3Wave2Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_120_A_is_True;
    l0.A_is_False = self.f_120_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_54_A_le_B()
    local l0;
    self = self._graph;
    self:en_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[105];
    l0.seconds = 1;
    l0:Start();
    self:en_55();
    l0 = self[55];
    l0:Disable();
    l0 = self[33];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAIState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.InCombat = self.f_53_InCombat;
    l0.OutOfCombat = DummyFunction;
    l0:In();
end;

function export:f_74_Out()
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
    l0.NoDeactivateMBOnUnlockDone = self.f_133_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_14_Finished()
    local l0;
    self = self._graph;
    self:en_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_14_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_14_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_107_Out()
    local l0;
    self = self._graph;
    l0 = self[128];
    l0:Condition(1);
end;

function export:f_135_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_134_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_15_Finished()
    local l0;
    self = self._graph;
    self:en_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_15_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_15_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_115_Out_0()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = self[22];
    l0:Enable();
    self:Wave_1_Flow();
end;

function export:f_52_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0.ReinforcementPoint = self.Reinforcement_2;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_122_Out()
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
    l0.Freezed = self.f_47_Freezed;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Freeze();
end;

function export:f_29_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostUndetected";
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_29_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostNoAlarmsTriggered";
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_110_Incremented()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AchievementUpdate.lua")];
    l0.name = "Achievement_Unheard";
    l0._graph = self;
    l0.Updated = self.f_111_Updated;
    l0:UpdateByName();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:ForcePlay_Priority();
end;

function export:f_9_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:ForcePlay_Priority();
end;

function export:f_9_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:ForcePlay_Priority();
end;

function export:f_49_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[58];
    l1.Group = l0.LocalPlayer;
    l1 = self[30];
    l1.Group = l0.LocalPlayer;
    l1 = self[41];
    l1.Group = l0.LocalPlayer;
    l0 = self[58];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
end;

function export:f_58_Finished()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:ForcePlay_Priority();
end;

function export:f_58_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:ForcePlay_Priority();
end;

function export:f_58_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:ForcePlay_Priority();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.ReinforcementPoint = self.Reinforcement_4;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_27_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[15];
    l1.Group = l0.LocalPlayer;
    l1 = self[32];
    l1.Group = l0.LocalPlayer;
    l1 = self[9];
    l1.Group = l0.LocalPlayer;
    l0 = self[32];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_129_ShowOut()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.seconds = 15;
    l0:Start();
end;

function export:f_129_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_55();
    l0 = self[55];
    l0:Enable();
end;

function export:f_64_A_is_False()
    local l0;
    self = self._graph;
    self:en_119();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_64_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_139_Activated()
    local l0;
    self = self._graph;
    l0 = self[81];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_126_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_100_Out()
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
    l0 = self[61];
    l0.ReinforcementPoint = self.Reinforcement_1;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    self:en_51();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.ReinforcementPoint = self.Reinforcement_3;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_5_A_le_B()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = self[22];
    l0:Disable();
    l0 = self[106];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_65_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Outpostclear;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_43_A_is_True;
    l0.A_is_False = self.f_43_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_65_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_3_AlarmActivated()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0:Close();
    l0 = self[91];
    l0.seconds = 5;
    l0:Start();
    l0 = self[129];
    l0.time = self.Time_before_First_Wave;
    l0.objectiveId = {
        section = "Outposts",
        item = "ALARMACTIVATED",
        id = "154988",
    };
    l0:Show();
    self:en_3();
    l0 = self[3];
    l0:Disable();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAlarmState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Activated = self.f_68_Activated;
    l0.Deactivated = DummyFunction;
    l0:In();
end;

function export:f_123_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2Wave2Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_64_A_is_True;
    l0.A_is_False = self.f_64_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_21_Far()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_41_Finished()
    local l0;
    self = self._graph;
    self:en_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_41_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_41_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_77();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_23_Enabled()
    local l0;
    self = self._graph;
    l0 = self[23];
    self.NMEcount = l0.memberCount;
    self:en_60();
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
    self:en_60();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_39_Started()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_59_Fail()
    local l0;
    self = self._graph;
    l0 = self[124];
    l0:In(0);
end;

function export:f_59_Spawned()
    local l0;
    self = self._graph;
    l0 = self[124];
    l0:In(0);
end;

function export:f_70_OnNewValue()
    local l0;
    self = self._graph;
    l0 = self[70];
    self.Stealth_value = l0.stealth_value;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.Stealth_value;
    l0.B = 1;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_69_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_24_Fail()
    local l0;
    self = self._graph;
    l0 = self[123];
    l0:In(0);
end;

function export:f_24_Spawned()
    local l0;
    self = self._graph;
    l0 = self[123];
    l0:In(0);
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_18_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_51()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Attack_LP";
    l0._graph = self;
    l0.Started = self.f_51_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.SoundId = "0x00176ae2";
end;

function export:en_119()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_119_Out;
end;

function export:en_117()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_117_Out;
end;

function export:en_77()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_77_Out;
end;

function export:en_22()
    local l0;
    l0 = self[22];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_37()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_37_Out;
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_112()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedNoAlarm";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_112_Incremented;
end;

function export:en_72()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_72_Out;
end;

function export:en_60()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_60_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_78()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_78_Out;
end;

function export:en_55()
    local l0;
    l0 = self[55];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_19()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Defend_LP";
    l0._graph = self;
    l0.Started = self.f_19_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_30()
    local l0;
    l0 = self[30];
    l0.SoundId = self.DirectionalWave01;
end;

function export:en_54()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.AIBudget;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_54_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.SoundId = "0x00455cfe";
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.SoundId = "0x00455cfe";
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.SoundId = self.DirectionalWave02;
end;

function export:en_73()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_73_Out;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.Condition_before_wave;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_5_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.AlarmGroup = self.Alarm_Group;
end;

function export:en_41()
    local l0;
    l0 = self[41];
    l0.SoundId = "0x00455cfe";
end;

function export:en_23()
    local l0;
    l0 = self[23];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_39()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Tension_LP";
    l0._graph = self;
    l0.Started = self.f_39_Started;
    l0.Stopped = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Undercover_Takeover()
    
end;
function export:Wave_2_Flow()
    
end;
function export:Wave_1_Flow()
    
end;
_compilerVersion = 24;
