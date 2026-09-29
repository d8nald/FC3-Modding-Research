-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: outpost_hard_core2_0
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Reinforcement 5" Type="Nomad|entity{}" />
    <DataIn Name="Alarm Group" Type="Nomad|group" />
    <DataIn Name="Reinforcement 6" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 1" Type="Nomad|entity{}" />
    <DataIn Name="AiEventPoint" Type="Nomad|entity{}" />
    <DataIn Name="Defender Group" Type="Nomad|group" />
    <DataIn Name="Reinforcement 3" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 2" Type="Nomad|entity{}" />
    <DataIn Name="NearZone" Type="Core|float" />
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
    <DataIn Name="Battlefield" Type="Nomad|entity{}" />
    <DataIn Name="Condition before wave" Type="Core|int" />
    <DataIn Name="Reinforcement Group" Type="Nomad|group" />
    <DataIn Name="Reinforcement 4" Type="Nomad|entity{}" />
    <DataIn Name="Time before First Wave" Type="Core|float" />
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
    <DataIn Name="MissionBlockID" Type="Nomad|missionblock" />
    <DataIn Name="MissionLayerID" Type="Nomad|missionblocklayer" />
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
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00176063.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00455cfe]], "CSoundResource");
        cbox:LoadResource([[sndres0x00176063]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Wave_1_Flow = DummyFunction;
    self.Wave_2_Flow = DummyFunction;
    self.Undercover_Takeover = DummyFunction;
    self.Out = DummyFunction;
    self.eplayer = nil;
    self.NPCinCombat = false;
    self.NPCcombat = 0;
    self.Deathcount = 0;
    self.Outpostclear = false;
    self.NMEcount = 0;
    self.MetaSequenceId = 0;
    self.Stealth_value = 0;
    self[55] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_55_Fail;
    l0.Spawned = self.f_55_Spawned;
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
    self[26] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_26_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_26_Finished;
    l0.FinishedInterrupted = self.f_26_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_31_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_31_Finished;
    l0.FinishedInterrupted = self.f_31_FinishedInterrupted;
    l0.Out = DummyFunction;
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
    self[130] = cbox:CreateBox("Domino/System/ObjectiveGageTimer.lua");
    l0 = self[130];
    l0._graph = self;
    l0.ShowOut = self.f_130_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_130_TimeElapsed;
    self[27] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[27];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_27_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[35];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_35_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
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
    self[64] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[64];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_64_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_64_Finished;
    l0.FinishedInterrupted = self.f_64_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[82] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[82];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_82_Out;
    self[30] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_30_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_30_Finished;
    l0.FinishedInterrupted = self.f_30_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Enabled = self.f_43_Enabled;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_43_StateStart;
    l0.StateStop = self.f_43_StateStop;
    l0.MemberInState = self.f_43_MemberInState;
    self[83] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[83];
    l0._graph = self;
    l0.Out = self.f_83_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
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
    self[92] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[92];
    l0._graph = self;
    l0.Out = self.f_92_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_10_Fail;
    l0.Spawned = self.f_10_Spawned;
    self[57] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_57_Far;
    self[128] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[128];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_128_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_36_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[129] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[129];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_129_Out;
    self[63] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_63_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_63_Finished;
    l0.FinishedInterrupted = self.f_63_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[126] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[126];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_126_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_29_Fail;
    l0.Spawned = self.f_29_Spawned;
    self[46] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_46_TimeElapsed;
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
    self[8] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_8_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_18_MemberAdded;
    l0.MemberRemoved = self.f_18_MemberRemoved;
    self[60] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Enabled = self.f_60_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_60_MemberAdded;
    l0.MemberRemoved = self.f_60_MemberRemoved;
    self[70] = cbox:CreateBox("Domino/System/StealthIndicatorListener.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.OnNewValue = self.f_70_OnNewValue;
    self[66] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Enabled = self.f_66_Enabled;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_66_AlarmActivated;
    l0.AlarmDeactivated = DummyFunction;
    l0.AlarmDisabled = DummyFunction;
    l0.AlarmDestroyed = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_34_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_34_Finished;
    l0.FinishedInterrupted = self.f_34_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_11_Near;
    l0.Far = DummyFunction;
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
    self[32] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Enabled = self.f_32_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_32_MemberAdded;
    l0.MemberRemoved = self.f_32_MemberRemoved;
    self[17] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_17_Fail;
    l0.Spawned = self.f_17_Spawned;
    self[58] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_58_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[65] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[65];
    l0._graph = self;
    l0.Enabled = self.f_65_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_65_MemberAdded;
    l0.MemberRemoved = self.f_65_MemberRemoved;
    self[6] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_52_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_52_Finished;
    l0.FinishedInterrupted = self.f_52_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[123] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[123];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_123_Out;
    self[3] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_3_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_3_Finished;
    l0.FinishedInterrupted = self.f_3_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_19_Fail;
    l0.Spawned = self.f_19_Spawned;
    self[33] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_33_Far;
    self[54] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_54_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[4] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_4_Far;
    self[2] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = self.f_2_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_2_Finished;
    l0.FinishedInterrupted = self.f_2_FinishedInterrupted;
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
    self[41] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_41_Fail;
    l0.Spawned = self.f_41_Spawned;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:In();
end;

function export:f_55_Fail()
    local l0;
    self = self._graph;
    l0 = self[128];
    l0:In(0);
end;

function export:f_55_Spawned()
    local l0;
    self = self._graph;
    l0 = self[128];
    l0:In(0);
end;

function export:f_24_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_77_Out;
    l0:Disable();
    l0 = self[27];
    l0:In(0);
end;

function export:f_124_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:In();
end;

function export:f_119_A_is_False()
    local l0;
    self = self._graph;
    self:en_118();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_119_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_26_Finished()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:ForcePlay_Priority();
end;

function export:f_26_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:ForcePlay_Priority();
end;

function export:f_26_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = self[34];
    l0:ForcePlay_Priority();
end;

function export:f_38_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[3];
    l1.Group = l0.LocalPlayer;
    l1 = self[64];
    l1.Group = l0.LocalPlayer;
    l1 = self[2];
    l1.Group = l0.LocalPlayer;
    l0 = self[64];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_31_Finished()
    local l0;
    self = self._graph;
    self:en_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_31_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_31_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_78();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_127_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3Wave2Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_122_A_is_True;
    l0.A_is_False = self.f_122_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_44_Out()
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
    l0.Freezed = self.f_61_Freezed;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Freeze();
end;

function export:f_130_ShowOut()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.seconds = 15;
    l0:Start();
end;

function export:f_130_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_60();
    l0 = self[60];
    l0:Enable();
end;

function export:f_49_Started()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_27_Out_0()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.ReinforcementPoint = self.Reinforcement_4;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_35_Out_0()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:True();
end;

function export:f_39_Started()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_113_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2Wave1Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_117_A_is_True;
    l0.A_is_False = self.f_117_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_64_Finished()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:ForcePlay_Priority();
end;

function export:f_64_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:ForcePlay_Priority();
end;

function export:f_64_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:ForcePlay_Priority();
end;

function export:f_45_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:True();
    l0 = self[70];
    l0:ShutDown();
end;

function export:f_82_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:In();
end;

function export:f_75_Out()
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

function export:f_9_A_is_False()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_9_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_107_Out;
    l0:Disable();
    self:en_66();
    l0 = self[66];
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

function export:f_15_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:True();
    self:en_32();
    l0 = self[32];
    l0:Disable();
    self:en_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_68_Out;
    l0:True();
end;

function export:f_109_Updated()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_30_Finished()
    local l0;
    self = self._graph;
    self:en_63();
    l0 = self[63];
    l0:ForcePlay_Priority();
end;

function export:f_30_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_63();
    l0 = self[63];
    l0:ForcePlay_Priority();
end;

function export:f_30_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_63();
    l0 = self[63];
    l0:ForcePlay_Priority();
end;

function export:f_43_Enabled()
    local l0;
    self = self._graph;
    l0 = self[43];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_43_MemberInState()
    local l0;
    self = self._graph;
    l0 = self[43];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_43_StateStart()
    local l0;
    self = self._graph;
    l0 = self[43];
    self.NPCcombat = l0.memberCountInState;
    l0 = self[70];
    l0:Enable();
end;

function export:f_43_StateStop()
    local l0;
    self = self._graph;
    l0 = self[43];
    self.NPCcombat = l0.memberCountInState;
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

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = self[123];
    l0:Condition(0);
end;

function export:f_83_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_114_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3Wave1Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_119_A_is_True;
    l0.A_is_False = self.f_119_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_28_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.ReinforcementPoint = self.Reinforcement_2;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_10_Fail()
    local l0;
    self = self._graph;
    l0 = self[115];
    l0:In(0);
end;

function export:f_10_Spawned()
    local l0;
    self = self._graph;
    l0 = self[115];
    l0:In(0);
end;

function export:f_138_Activated()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_37_A_le_B()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_60();
    l0 = self[60];
    l0:Disable();
    l0 = self[54];
    l0.seconds = 1;
    l0:Start();
    l0 = self[56];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_120_A_is_False()
    local l0;
    self = self._graph;
    self:en_121();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_120_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_57_Far()
    local l0;
    self = self._graph;
    self:en_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedUndetected";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_110_Incremented;
    l0:Increment();
end;

function export:f_128_Out_0()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = self[32];
    l0:Enable();
    self:Wave_2_Flow();
end;

function export:f_36_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:Disable();
end;

function export:f_110_Incremented()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AchievementUpdate.lua")];
    l0.name = "Achievement_Unheard";
    l0._graph = self;
    l0.Updated = self.f_109_Updated;
    l0:UpdateByName();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = self[129];
    l0:Condition(0);
end;

function export:f_129_Out()
    local l0;
    self = self._graph;
    l0 = self[124];
    l0:In(0);
end;

function export:f_122_A_is_False()
    local l0;
    self = self._graph;
    self:en_121();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_122_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_111_Incremented()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0:In(0);
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAIState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.InCombat = self.f_53_InCombat;
    l0.OutOfCombat = DummyFunction;
    l0:In();
end;

function export:f_107_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:Enable();
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

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = self[82];
    l0:Condition(0);
end;

function export:f_63_Finished()
    local l0;
    self = self._graph;
    self:en_52();
    l0 = self[52];
    l0:ForcePlay_Priority();
end;

function export:f_63_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_52();
    l0 = self[52];
    l0:ForcePlay_Priority();
end;

function export:f_63_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_52();
    l0 = self[52];
    l0:ForcePlay_Priority();
end;

function export:f_126_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2Wave2Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_120_A_is_True;
    l0.A_is_False = self.f_120_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_106_Out;
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_138_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_29_Fail()
    local l0;
    self = self._graph;
    l0 = self[113];
    l0:In(0);
end;

function export:f_29_Spawned()
    local l0;
    self = self._graph;
    l0 = self[113];
    l0:In(0);
end;

function export:f_46_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.ReinforcementPoint = self.Reinforcement_5;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_56_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:CreateAILogInArmy();
end;

function export:f_61_Freezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
    self:en_66();
    l0 = self[66];
    l0:Enable();
    self:en_65();
    l0 = self[65];
    l0:Enable();
end;

function export:f_131_Unlocked()
    self = self._graph;
    self:Out();
end;

function export:f_118_Out()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    l0 = self[115];
    l0:In(0);
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[82];
    l0:Condition(1);
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    l0 = self[18];
    self.NMEcount = l0.memberCount;
    self:en_62();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_18_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[18];
    self.NMEcount = l0.memberCount;
end;

function export:f_18_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[18];
    self.NMEcount = l0.memberCount;
    self:en_62();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_60_Enabled()
    local l0;
    self = self._graph;
    l0 = self[60];
    self.NMEcount = l0.memberCount;
    self:en_37();
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
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
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
    l0.A_eq_B = self.f_45_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_62_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[129];
    l0:Condition(1);
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0:CreateAILogInArmy();
    self:en_18();
    l0 = self[18];
    l0:Disable();
end;

function export:f_66_AlarmActivated()
    local l0;
    self = self._graph;
    l0 = self[105];
    l0.seconds = 5;
    l0:Start();
    l0 = self[6];
    l0:Close();
    self:en_66();
    l0 = self[66];
    l0:Disable();
    l0 = self[130];
    l0.time = self.Time_before_First_Wave;
    l0.objectiveId = {
        section = "Outposts",
        item = "ALARMACTIVATED",
        id = "154988",
    };
    l0:Show();
end;

function export:f_66_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAlarmState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Activated = self.f_50_Activated;
    l0.Deactivated = DummyFunction;
    l0:In();
end;

function export:f_51_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[63];
    l1.Group = l0.LocalPlayer;
    l1 = self[30];
    l1.Group = l0.LocalPlayer;
    l1 = self[52];
    l1.Group = l0.LocalPlayer;
    l0 = self[30];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_139_Activated()
    local l0;
    self = self._graph;
    l0 = self[83];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_14_Out()
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

function export:f_34_Finished()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = self[31];
    l0:ForcePlay_Priority();
end;

function export:f_34_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = self[31];
    l0:ForcePlay_Priority();
end;

function export:f_34_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = self[31];
    l0:ForcePlay_Priority();
end;

function export:f_25_A_eq_B()
    local l0;
    self = self._graph;
    self:en_65();
    l0 = self[65];
    l0:Disable();
    l0 = self[6];
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:Enable();
end;

function export:f_11_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_21_A_is_True;
    l0.A_is_False = self.f_21_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.ReinforcementPoint = self.Reinforcement_6;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
    l0 = self[27];
    l0:In(0);
    self:en_49();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_32_Enabled()
    local l0;
    self = self._graph;
    l0 = self[32];
    self.NMEcount = l0.memberCount;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_32_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[32];
    self.NMEcount = l0.memberCount;
end;

function export:f_32_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[32];
    self.NMEcount = l0.memberCount;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_17_Fail()
    local l0;
    self = self._graph;
    l0 = self[114];
    l0:In(0);
end;

function export:f_17_Spawned()
    local l0;
    self = self._graph;
    l0 = self[114];
    l0:In(0);
end;

function export:f_117_A_is_False()
    local l0;
    self = self._graph;
    self:en_118();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_117_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:en_49();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_58_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.ReinforcementPoint = self.Reinforcement_3;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_134_Unlocked()
    self = self._graph;
    self:Undercover_Takeover();
end;

function export:f_105_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:In();
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

function export:f_65_Enabled()
    local l0;
    self = self._graph;
    l0 = self[65];
    self.NMEcount = l0.memberCount;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_65_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[65];
    self.NMEcount = l0.memberCount;
end;

function export:f_65_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[65];
    self.NMEcount = l0.memberCount;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_121_Out()
    local l0;
    self = self._graph;
    self:Wave_2_Flow();
    self:en_32();
    l0 = self[32];
    l0:Enable();
end;

function export:f_77_Out()
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

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_47_A_is_True;
    l0.A_is_False = self.f_47_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_52_Finished()
    local l0;
    self = self._graph;
    self:en_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_52_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_52_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_106_Out()
    local l0;
    self = self._graph;
    l0 = self[123];
    l0:Condition(1);
end;

function export:f_123_Out()
    local l0;
    self = self._graph;
    l0 = self[125];
    l0:In(0);
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:ForcePlay_Priority();
end;

function export:f_3_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:ForcePlay_Priority();
end;

function export:f_3_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:ForcePlay_Priority();
end;

function export:f_16_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[34];
    l1.Group = l0.LocalPlayer;
    l1 = self[26];
    l1.Group = l0.LocalPlayer;
    l1 = self[31];
    l1.Group = l0.LocalPlayer;
    l0 = self[26];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_50_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_69_Out;
    l0:Activate();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_19_Fail()
    local l0;
    self = self._graph;
    l0 = self[126];
    l0:In(0);
end;

function export:f_19_Spawned()
    local l0;
    self = self._graph;
    l0 = self[126];
    l0:In(0);
end;

function export:f_33_Far()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_54_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_21_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Outpostclear;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_9_A_is_True;
    l0.A_is_False = self.f_9_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_21_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_125_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Outpostclearwithreinforcement";
    l0._graph = self;
    l0.Out = self.f_5_Out;
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

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[43];
    l0.group = self.Defender_Group;
    l0:Combat();
    l0 = self[11];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.nearZone = self.NearZone;
    l0:Enable();
end;

function export:f_4_Far()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:In(0);
end;

function export:f_47_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostUndetected";
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:In();
end;

function export:f_47_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostNoAlarmsTriggered";
    l0._graph = self;
    l0.Out = self.f_67_Out;
    l0:In();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_2_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_2_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_115_Out_0()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    self:en_18();
    l0 = self[18];
    l0:Enable();
end;

function export:f_41_Fail()
    local l0;
    self = self._graph;
    l0 = self[127];
    l0:In(0);
end;

function export:f_41_Spawned()
    local l0;
    self = self._graph;
    l0 = self[127];
    l0:In(0);
end;

function export:en_31()
    local l0;
    l0 = self[31];
    l0.SoundId = "0x00455cfe";
end;

function export:en_49()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Attack_LP";
    l0._graph = self;
    l0.Started = self.f_49_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_39()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Defend_LP";
    l0._graph = self;
    l0.Started = self.f_39_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_73()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_73_Out;
end;

function export:en_15()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_15_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_72()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_72_Out;
end;

function export:en_37()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.AIBudget;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_37_A_le_B;
    l0.A_eq_B = DummyFunction;
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

function export:en_111()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedNoAlarm";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_111_Incremented;
end;

function export:en_79()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_79_Out;
end;

function export:en_63()
    local l0;
    l0 = self[63];
    l0.SoundId = self.DirectionalWave02;
end;

function export:en_118()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_118_Out;
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_60()
    local l0;
    l0 = self[60];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_62()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.Condition_before_wave;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_62_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_66()
    local l0;
    l0 = self[66];
    l0.AlarmGroup = self.Alarm_Group;
end;

function export:en_34()
    local l0;
    l0 = self[34];
    l0.SoundId = self.DirectionalWave01;
end;

function export:en_25()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_25_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_32()
    local l0;
    l0 = self[32];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_1_Out;
end;

function export:en_65()
    local l0;
    l0 = self[65];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_121()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_121_Out;
end;

function export:en_52()
    local l0;
    l0 = self[52];
    l0.SoundId = "0x00455cfe";
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.SoundId = "0x00176063";
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Tension_LP";
    l0._graph = self;
    l0.Started = self.f_13_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.SoundId = "0x00455cfe";
end;

-- Empty out anchor definitions
function export:Wave_1_Flow()
    
end;
function export:Wave_2_Flow()
    
end;
function export:Undercover_Takeover()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
