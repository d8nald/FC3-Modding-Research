-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: Outpost_hard_core2_1_Dog
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="NearZone" Type="Core|float" />
    <DataIn Name="Combat" Type="Nomad|entity{}" />
    <DataIn Name="Alert" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 1" Type="Nomad|entity{}" />
    <DataIn Name="IF2Wave2Use" Type="Core|bool" />
    <DataIn Name="IDLE" Type="Nomad|entity{}" />
    <DataIn Name="MissionLayerID" Type="Nomad|missionblocklayer" />
    <DataIn Name="DirectionalWave02" Type="Nomad|Sound" />
    <DataIn Name="MissionBlockID" Type="Nomad|missionblock" />
    <DataIn Name="Reinforcement 2" Type="Nomad|entity{}" />
    <DataIn Name="Condition before wave" Type="Core|int" />
    <DataIn Name="Reinforcement 5" Type="Nomad|entity{}" />
    <DataIn Name="Time before First Wave" Type="Core|float" />
    <DataIn Name="DirectionalWave01" Type="Nomad|Sound" />
    <DataIn Name="RebelCheering" Type="Nomad|entity{}" />
    <DataIn Name="Reinforcement 4" Type="Nomad|entity{}" />
    <DataIn Name="AIBudget" Type="Core|int" />
    <DataIn Name="Reinforcement 6" Type="Nomad|entity{}" />
    <DataIn Name="IF2Wave1Use" Type="Core|bool" />
    <DataIn Name="Alarm Group" Type="Nomad|group" />
    <DataIn Name="Reinforcement 3" Type="Nomad|entity{}" />
    <DataIn Name="IF3Wave1Use" Type="Core|bool" />
    <DataIn Name="Defender Group" Type="Nomad|group" />
    <DataIn Name="Battlefield" Type="Nomad|entity{}" />
    <DataIn Name="RebelBattlefield" Type="Nomad|entity{}" />
    <DataIn Name="IF3Wave2Use" Type="Core|bool" />
    <DataIn Name="AiEventPoint" Type="Nomad|entity{}" />
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
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
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00176063.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00455cfe]], "CSoundResource");
        cbox:LoadResource([[sndres0x00176063]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Wave_2_Flow = DummyFunction;
    self.Undercover_Takeover = DummyFunction;
    self.Wave_1_Flow = DummyFunction;
    self.Out = DummyFunction;
    self.Stealth_value = 0;
    self.Outpostclear = false;
    self.NPCcombat = 0;
    self.NMEcount = 0;
    self.NPCinCombat = false;
    self.eplayer = nil;
    self.GRD_Dog_NMB = 0;
    self[41] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_41_Fail;
    l0.Spawned = self.f_41_Spawned;
    self[55] = cbox:CreateBox("Domino/System/StealthIndicatorListener.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.OnNewValue = self.f_55_OnNewValue;
    self[72] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_72_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_9_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[107] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[107];
    l0._graph = self;
    l0.Enabled = self.f_107_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_107_MemberAdded;
    l0.MemberRemoved = self.f_107_MemberRemoved;
    self[87] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[87];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_87_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[94] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[94];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_94_Out;
    self[60] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = self.f_15_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_15_MemberAdded;
    l0.MemberRemoved = self.f_15_MemberRemoved;
    self[92] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[92];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_92_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[105] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[105];
    l0._graph = self;
    l0.Enabled = self.f_105_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_105_MemberAdded;
    l0.MemberRemoved = self.f_105_MemberRemoved;
    self[62] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_62_Far;
    self[48] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_48_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[29];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_29_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[74];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_74_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[51] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[51];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_51_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[73] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[73];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_73_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Enabled = self.f_43_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_43_MemberAdded;
    l0.MemberRemoved = self.f_43_MemberRemoved;
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[21] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_21_Fail;
    l0.Spawned = self.f_21_Spawned;
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
    self[85] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[85];
    l0._graph = self;
    l0.Out = self.f_85_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
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
    self[6] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_6_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[81] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[81];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_81_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[102] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[102];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_102_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[68] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[68];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_68_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = self.f_25_Enabled;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_25_StateStart;
    l0.StateStop = self.f_25_StateStop;
    l0.MemberInState = self.f_25_MemberInState;
    self[49] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_49_Fail;
    l0.Spawned = self.f_49_Spawned;
    self[59] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_59_Far;
    self[77] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Out = self.f_77_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_20_Near;
    l0.Far = DummyFunction;
    self[71] = cbox:CreateBox("Domino/System/ObjectiveGageTimer.lua");
    l0 = self[71];
    l0._graph = self;
    l0.ShowOut = self.f_71_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_71_TimeElapsed;
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
    self[8] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_8_Fail;
    l0.Spawned = self.f_8_Spawned;
    self[17] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_17_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[70] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_70_Fail;
    l0.Spawned = self.f_70_Spawned;
    self[12] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_12_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[100] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[100];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = DummyFunction;
    l0.Far = self.f_100_Far;
    self[84] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[84];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_84_Out;
    self[57] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_57_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[76] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[76];
    l0._graph = self;
    l0.Enabled = self.f_76_Enabled;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_76_AlarmActivated;
    l0.AlarmDeactivated = DummyFunction;
    l0.AlarmDisabled = DummyFunction;
    l0.AlarmDestroyed = DummyFunction;
    self[101] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[101];
    l0._graph = self;
    l0.Enabled = self.f_101_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_101_MemberAdded;
    l0.MemberRemoved = self.f_101_MemberRemoved;
    self[36] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_36_Fail;
    l0.Spawned = self.f_36_Spawned;
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
    self[96] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[96];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_96_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_19_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[61];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_61_Out;
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_4_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
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
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:In();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:True();
end;

function export:f_41_Fail()
    local l0;
    self = self._graph;
    l0 = self[87];
    l0:In(0);
end;

function export:f_41_Spawned()
    local l0;
    self = self._graph;
    l0 = self[87];
    l0:In(0);
end;

function export:f_55_OnNewValue()
    local l0;
    self = self._graph;
    l0 = self[55];
    self.Stealth_value = l0.stealth_value;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.Stealth_value;
    l0.B = 1;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_2_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_104_A_is_False()
    local l0;
    self = self._graph;
    self:en_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_104_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_83_Freezed()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
    self:en_76();
    l0 = self[76];
    l0:Enable();
end;

function export:f_72_Finished()
    local l0;
    self = self._graph;
    l0 = self[74];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_9_Finished()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.SoundId = "0x00455cfe";
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

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.ReinforcementPoint = self.Reinforcement_1;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_87_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2Wave1Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_86_A_is_True;
    l0.A_is_False = self.f_86_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:In(0);
    self:Wave_1_Flow();
end;

function export:f_32_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_65_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_80_Activated()
    local l0;
    self = self._graph;
    l0 = self[85];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_112_Out;
    l0:Enable();
end;

function export:f_94_Out()
    local l0;
    self = self._graph;
    l0 = self[81];
    l0:In(0);
end;

function export:f_58_A_is_False()
    local l0;
    self = self._graph;
    self:en_56();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_58_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_103_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_15_Enabled()
    local l0;
    self = self._graph;
    l0 = self[15];
    self.NMEcount = l0.memberCount;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_15_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[15];
    self.NMEcount = l0.memberCount;
end;

function export:f_15_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[15];
    self.NMEcount = l0.memberCount;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_86_A_is_False()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_86_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_92_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:Condition(1);
end;

function export:f_3_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[9];
    l1.Group = l0.LocalPlayer;
    l1 = self[4];
    l1.Group = l0.LocalPlayer;
    l1 = self[102];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x00455cfe";
    l1:ForcePlay_Priority();
end;

function export:f_105_Enabled()
    local l0;
    self = self._graph;
    l0 = self[105];
    self.NMEcount = l0.memberCount;
    self:en_52();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_105_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[105];
    self.NMEcount = l0.memberCount;
end;

function export:f_105_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[105];
    self.NMEcount = l0.memberCount;
    self:en_52();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_112_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_54_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_47_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_63_Started()
    local l0;
    self = self._graph;
    l0 = self[100];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_62_Far()
    local l0;
    self = self._graph;
    l0 = self[68];
    l0:In(0);
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
    l0.NoDeactivateMBOnUnlockDone = self.f_32_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_48_Finished()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_29_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "Outpostclearwithreinforcement";
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:In();
end;

function export:f_82_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.ReinforcementPoint = self.Reinforcement_4;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_56_Started()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_52_A_le_B()
    local l0;
    self = self._graph;
    self:en_105();
    l0 = self[105];
    l0:Disable();
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[106];
    l0.seconds = 1;
    l0:Start();
    l0 = self[13];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_74_Finished()
    local l0;
    self = self._graph;
    l0 = self[94];
    l0:Condition(0);
end;

function export:f_51_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF2Wave2Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_104_A_is_True;
    l0.A_is_False = self.f_104_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_73_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3Wave1Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_50_A_is_True;
    l0.A_is_False = self.f_50_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_43_Enabled()
    local l0;
    self = self._graph;
    l0 = self[43];
    self.NMEcount = l0.memberCount;
    self:en_89();
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
    self:en_89();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.ReinforcementPoint = self.Reinforcement_6;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_69_Incremented()
    local l0;
    self = self._graph;
    self:en_107();
    l0 = self[107];
    l0:Enable();
end;

function export:f_35_Out_0()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_97_Out;
    l0:True();
end;

function export:f_89_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:True();
    self:en_43();
    l0 = self[43];
    l0:Disable();
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_46_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.ReinforcementPoint = self.Reinforcement_5;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_114_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_21_Fail()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In(0);
end;

function export:f_21_Spawned()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In(0);
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = self[84];
    l0:Condition(1);
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_78_Out;
    l0:CreateAILogInArmy();
end;

function export:f_85_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_22_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_113_Out;
    l0:Disable();
end;

function export:f_47_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_16_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_2_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:True();
    l0 = self[55];
    l0:ShutDown();
end;

function export:f_6_Finished()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.SoundId = self.DirectionalWave02;
    l0:ForcePlay_Priority();
end;

function export:f_111_Out()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_81_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NPCinCombat = l0.Target;
    self:en_45();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
    l0 = self[68];
    l0:In(0);
end;

function export:f_50_A_is_False()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_50_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.group = self.Defender_Group;
    l0:Combat();
    l0 = self[20];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.nearZone = self.NearZone;
    l0:Enable();
end;

function export:f_102_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.SoundId = "0x00176063";
    l0:ForcePlay_Priority();
end;

function export:f_45_Started()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0.Entities = self.SafeHouse;
    l0.id2 = self.eplayer;
    l0.farZone = 124;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_7_Incremented()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AchievementUpdate.lua")];
    l0.name = "Achievement_Unheard";
    l0._graph = self;
    l0.Updated = self.f_64_Updated;
    l0:UpdateByName();
end;

function export:f_68_Out_0()
    local l0;
    self = self._graph;
    self:en_56();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_25_Enabled()
    local l0;
    self = self._graph;
    l0 = self[25];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_25_MemberInState()
    local l0;
    self = self._graph;
    l0 = self[25];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_25_StateStart()
    local l0;
    self = self._graph;
    l0 = self[25];
    self.NPCcombat = l0.memberCountInState;
    l0 = self[55];
    l0:Enable();
end;

function export:f_25_StateStop()
    local l0;
    self = self._graph;
    l0 = self[25];
    self.NPCcombat = l0.memberCountInState;
end;

function export:f_90_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Outpostclear;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_58_A_is_True;
    l0.A_is_False = self.f_58_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_90_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAIState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.InCombat = self.f_88_InCombat;
    l0.OutOfCombat = DummyFunction;
    l0:In();
end;

function export:f_97_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Outpostclear = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.MissionBlockID;
    l0.missionLayerId = self.MissionLayerID;
    l0._graph = self;
    l0.Activated = self.f_80_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:Disable();
    self:en_76();
    l0 = self[76];
    l0:Disable();
end;

function export:f_49_Fail()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:In(0);
end;

function export:f_49_Spawned()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:In(0);
end;

function export:f_64_Updated()
    local l0;
    self = self._graph;
    self:en_69();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_98_Out()
    local l0;
    self = self._graph;
    self:en_63();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_27_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[6];
    l1.Group = l0.LocalPlayer;
    l1 = self[48];
    l1.Group = l0.LocalPlayer;
    l1 = self[12];
    l1.Group = l0.LocalPlayer;
    l0 = self[6];
    l0.SoundId = "0x00455cfe";
    l0:ForcePlay_Priority();
end;

function export:f_59_Far()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_16_Unlocked()
    self = self._graph;
    self:Out();
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

function export:f_77_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_26_A_is_True;
    l0.A_is_False = self.f_26_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_20_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NPCinCombat;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_90_A_is_True;
    l0.A_is_False = self.f_90_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    self:en_69();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0:Increment();
end;

function export:f_71_ShowOut()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0.seconds = 15;
    l0:Start();
end;

function export:f_71_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_105();
    l0 = self[105];
    l0:Enable();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedUndetected";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_7_Incremented;
    l0:Increment();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = self[43];
    l0:Enable();
    self:Wave_2_Flow();
end;

function export:f_11_Out_0()
    local l0;
    self = self._graph;
    self:Wave_2_Flow();
    self:en_43();
    l0 = self[43];
    l0:Enable();
end;

function export:f_66_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.Alarm_Group;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:Activate();
end;

function export:f_8_Fail()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0:In(0);
end;

function export:f_8_Spawned()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0:In(0);
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_115_Out;
    l0:Disable();
    l0 = self[68];
    l0:In(0);
end;

function export:f_70_Fail()
    local l0;
    self = self._graph;
    l0 = self[73];
    l0:In(0);
end;

function export:f_70_Spawned()
    local l0;
    self = self._graph;
    l0 = self[73];
    l0:In(0);
end;

function export:f_12_Finished()
    local l0;
    self = self._graph;
    l0 = self[84];
    l0:Condition(0);
end;

function export:f_26_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostUndetected";
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:In();
end;

function export:f_26_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "OutpostNoAlarmsTriggered";
    l0._graph = self;
    l0.Out = self.f_67_Out;
    l0:In();
end;

function export:f_100_Far()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0:In(0);
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
    l0.NoDeactivateMBOnUnlockDone = self.f_54_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_57_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0.ReinforcementPoint = self.Reinforcement_2;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_76_AlarmActivated()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0:Close();
    self:en_76();
    l0 = self[76];
    l0:Disable();
    l0 = self[71];
    l0.time = self.Time_before_First_Wave;
    l0.objectiveId = {
        section = "Outposts",
        item = "ALARMACTIVATED",
        id = "154988",
    };
    l0:Show();
    l0 = self[39];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_76_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseAlarmState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Activated = self.f_66_Activated;
    l0.Deactivated = DummyFunction;
    l0:In();
end;

function export:f_108_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0:In(0);
    self:en_107();
    l0 = self[107];
    l0:Disable();
end;

function export:f_65_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = false;
    l0._graph = self;
    l0.Unlocked = self.f_33_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_101_Enabled()
    local l0;
    self = self._graph;
    l0 = self[101];
    self.NMEcount = l0.memberCount;
    self:en_40();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_101_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[101];
    self.NMEcount = l0.memberCount;
end;

function export:f_101_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[101];
    self.NMEcount = l0.memberCount;
    self:en_40();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_36_Fail()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0:In(0);
end;

function export:f_36_Spawned()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0:In(0);
end;

function export:f_40_A_le_B()
    local l0;
    self = self._graph;
    self:en_101();
    l0 = self[101];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = self.AiEventPoint;
    l0._graph = self;
    l0.Out = self.f_82_Out;
    l0:CreateAILogInArmy();
    l0 = self[94];
    l0:Condition(1);
end;

function export:f_53_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IF3Wave2Use;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_34_A_is_True;
    l0.A_is_False = self.f_34_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_33_Unlocked()
    self = self._graph;
    self:Undercover_Takeover();
end;

function export:f_75_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[74];
    l1.Group = l0.LocalPlayer;
    l1 = self[72];
    l1.Group = l0.LocalPlayer;
    l1 = self[96];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x00455cfe";
    l1:ForcePlay_Priority();
end;

function export:f_88_InCombat()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetIdleSubState.lua")];
    l0.Group = self.Defender_Group;
    l0._graph = self;
    l0.Out = self.f_109_Out;
    l0:SetCautious();
end;

function export:f_34_A_is_False()
    local l0;
    self = self._graph;
    self:en_95();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_34_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_106_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_63();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_31_Out()
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
    l0.Freezed = self.f_83_Freezed;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Freeze();
end;

function export:f_39_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:In();
end;

function export:f_96_Finished()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0.SoundId = self.DirectionalWave01;
    l0:ForcePlay_Priority();
end;

function export:f_19_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.ReinforcementPoint = self.Reinforcement_3;
    l0.Battlefield = self.Battlefield;
    l0.IdleBSR = self.IDLE;
    l0.AlertBSR = self.Alert;
    l0.CombatBSR = self.Combat;
    l0:SpawnInCautious();
end;

function export:f_1_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0:In();
    self:en_15();
    l0 = self[15];
    l0:Disable();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:In();
end;

function export:f_4_Finished()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:Condition(0);
end;

function export:f_103_Activated()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.ReinforcementPoint = self.RebelCheering;
    l0.Battlefield = self.RebelBattlefield;
    l0.IdleBSR = self.RebelBattlefield;
    l0.AlertBSR = self.RebelBattlefield;
    l0.CombatBSR = self.RebelBattlefield;
    l0:SpawnInCautious();
end;

function export:f_99_Out_0()
    local l0;
    self = self._graph;
    self:Wave_1_Flow();
    self:en_101();
    l0 = self[101];
    l0:Enable();
end;

function export:en_107()
    local l0;
    l0 = self[107];
    l0.group = self.Guarding_dogs;
    l0.autoDisable = false;
end;

function export:en_30()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_30_Out;
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.group = self.Defender_Group;
    l0.autoDisable = false;
end;

function export:en_105()
    local l0;
    l0 = self[105];
    l0.group = self.AllAIGroup;
    l0.autoDisable = false;
end;

function export:en_63()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Defend_LP";
    l0._graph = self;
    l0.Started = self.f_63_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_56()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Tension_LP";
    l0._graph = self;
    l0.Started = self.f_56_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_52()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.AIBudget;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_52_A_le_B;
    l0.A_eq_B = DummyFunction;
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

function export:en_69()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement.lua")];
    l0.name = "OutpostUnlockedNoAlarm";
    l0.increment = 1;
    l0._graph = self;
    l0.Incremented = self.f_69_Incremented;
end;

function export:en_89()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_89_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_111()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_111_Out;
end;

function export:en_45()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_OW_Outpost_Attack_LP";
    l0._graph = self;
    l0.Started = self.f_45_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_98()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_98_Out;
end;

function export:en_95()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_95_Out;
end;

function export:en_76()
    local l0;
    l0 = self[76];
    l0.AlarmGroup = self.Alarm_Group;
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

function export:en_101()
    local l0;
    l0 = self[101];
    l0.group = self.AllAIGroup;
    l0.autoDisable = false;
end;

function export:en_40()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = self.Condition_before_wave;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_40_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.NMEcount;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_1_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

-- Empty out anchor definitions
function export:Wave_2_Flow()
    
end;
function export:Undercover_Takeover()
    
end;
function export:Wave_1_Flow()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
