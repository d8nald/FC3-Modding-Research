-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b20/sam_015_b20.domino.xml
-- User graph: SAM_015_B20_ExpDevicesListener
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/MissionBomb.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ObjectiveTimer_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B02_AlreadyThereReinforcement.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_BeepCount.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_Explosion.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_Reinforcement.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetInteger.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/Switch.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.globals.lua");
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x00166559]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00166559.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00165b15.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00164ba1]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b36a7.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b3611]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b360c]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164ba1.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164e59.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001665d1.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001665d1]], "CSoundResource");
        cbox:LoadResource([[sndres0x00164e59]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00165af2.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b362f.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b3689.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b3611.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001654aa.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b36a7]], "CSoundResource");
        cbox:LoadResource([[sndres0x0011624b]], "CSoundResource");
        cbox:LoadResource([[sndres0x00161fee]], "CSoundResource");
        cbox:LoadResource([[sndres0x00165b15]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b3751]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b362f]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00161fee.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00165af2]], "CSoundResource");
        cbox:LoadResource([[sndres0x001651ed]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b360c.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001654aa]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001651ed.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b3689]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b3751.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.FailbyDefusing = DummyFunction;
    self.ePlayer = nil;
    self[79] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Out = self.f_79_Out;
    self[41] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_41_Out_0;
    l0.ResetOut = DummyFunction;
    self[78] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[78];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[148] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[148];
    l0._graph = self;
    l0.Started = self.f_148_Started;
    l0.Finished = DummyFunction;
    self[90] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[90];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[77] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Started = self.f_77_Started;
    l0.Finished = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[43];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_43_Out_0;
    l0.ResetOut = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[20];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 4,
    };
    l0.Out = self.f_20_Out;
    self[108] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[108];
    l0._graph = self;
    l0.Out = self.f_108_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    self[53] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_BeepCount.lua");
    l0 = self[53];
    l0._graph = self;
    self[140] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[140];
    l0._graph = self;
    l0.Out = self.f_140_Out;
    self[86] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[86];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_86_Spawned;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_Reinforcement.lua");
    l0 = self[1];
    l0._graph = self;
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
    self[118] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[118];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = DummyFunction;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = DummyFunction;
    l0.Markup2 = DummyFunction;
    l0.Available = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_6_Spawned;
    self[69] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[69];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_69_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[89] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[89];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[104] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[104];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[65] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[65];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_55_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[146] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[146];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[113] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[113];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = DummyFunction;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = DummyFunction;
    l0.Markup2 = DummyFunction;
    l0.Available = DummyFunction;
    self[87] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Out = self.f_87_Out;
    self[59] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Enabled = self.f_59_Enabled;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_59_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[97] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[97];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_97_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[42];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_42_Out_0;
    l0.ResetOut = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    self[50] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_50_Spawned;
    self[51] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B02_AlreadyThereReinforcement.lua");
    l0 = self[51];
    l0._graph = self;
    self[32] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_32_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[149] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[149];
    l0._graph = self;
    l0.Started = self.f_149_Started;
    l0.Finished = DummyFunction;
    self[153] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[153];
    l0._graph = self;
    l0.Out = self.f_153_Out;
    self[70] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_70_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[103] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[103];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_60_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[88] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[88];
    l0._graph = self;
    l0.ShowOut = DummyFunction;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_88_TimeElapsed;
    self[28] = cbox:CreateBox("Domino/System/MissionBomb.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.BombArmed = self.f_28_BombArmed;
    l0.Detonate = DummyFunction;
    self[152] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[152];
    l0._graph = self;
    l0.Out = self.f_152_Out;
    self[24] = cbox:CreateBox("Domino/System/MissionBomb.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.BombArmed = self.f_24_BombArmed;
    l0.Detonate = DummyFunction;
    self[63] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_63_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[68] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[68];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_68_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
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
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[33] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_33_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[94] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[94];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_94_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[120] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[120];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = DummyFunction;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = DummyFunction;
    l0.Markup2 = DummyFunction;
    l0.Available = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[71] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[71];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_71_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[105] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[105];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[91] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[91];
    l0._graph = self;
    l0.Out = self.f_91_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[116] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[116];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = DummyFunction;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = DummyFunction;
    l0.Markup2 = DummyFunction;
    l0.Available = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self[22];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 4,
    };
    l0.Out = DummyFunction;
    l0.Output[0] = self.f_22_Output_0;
    l0.Output[1] = self.f_22_Output_1;
    l0.Output[2] = self.f_22_Output_2;
    l0.Output[3] = self.f_22_Output_3;
    l0.None = DummyFunction;
    self[98] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[98];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[112] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[112];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_112_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[21] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B20/SAM_015_B20.SAM_015_B20_Explosion.lua");
    l0 = self[21];
    l0._graph = self;
    self[58] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[99] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[99];
    l0._graph = self;
    l0.ShowOut = DummyFunction;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_99_TimeElapsed;
    self[111] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[111];
    l0._graph = self;
    l0.Out = self.f_111_Out;
    l0.Closed = self.f_111_Closed;
    l0.Opened = DummyFunction;
    self[73] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[135] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[135];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_135_Out;
    self[30] = cbox:CreateBox("Domino/System/MissionBomb.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.BombArmed = self.f_30_BombArmed;
    l0.Detonate = DummyFunction;
    self[150] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[150];
    l0._graph = self;
    l0.Started = self.f_150_Started;
    l0.Finished = DummyFunction;
    self[62] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_62_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[47] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_47_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[102] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[102];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = self.f_102_Finished;
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
    self[85] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[85];
    l0._graph = self;
    l0.ShowOut = DummyFunction;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_85_TimeElapsed;
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
    self[49] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_49_Spawned;
    self[44] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[44];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_44_Out_0;
    l0.ResetOut = DummyFunction;
    self[96] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[96];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_96_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/MissionBomb.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.BombArmed = self.f_14_BombArmed;
    l0.Detonate = DummyFunction;
    self[101] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[101];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_101_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[100] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[100];
    l0._graph = self;
    l0.ShowOut = DummyFunction;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_100_TimeElapsed;
    self[93] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[93];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_93_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_66_Out;
    l0:In();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_124_Out;
    l0:True();
    l0 = self[21];
    l0:Bomb01();
    self:en_80();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    self:en_113();
    l0 = self[113];
    l0:Disable();
    self:en_115();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
    l0 = self[1];
    l0:BlewupBomb01();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    self:en_117();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
    self:en_116();
    l0 = self[116];
    l0:Disable();
    self:en_81();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_127_Out;
    l0:True();
    l0 = self[21];
    l0:Bomb02();
    l0 = self[1];
    l0:BlewupBomb02();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_129_Out;
    l0:True();
    self:en_82();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    l0 = self[1];
    l0:BlewupBomb03();
    self:en_118();
    l0 = self[118];
    l0:Disable();
    self:en_119();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
    l0 = self[21];
    l0:Bomb03();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = self[120];
    l0:Disable();
    self:en_121();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
    l0 = self[21];
    l0:Bomb04();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_131_Out;
    l0:True();
    l0 = self[1];
    l0:BlewupBomb04();
end;

function export:f_142_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:In();
end;

function export:f_145_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:In();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    self:en_115();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074911217029238747";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_25_Removed;
    l0:Remove();
    l0 = self[100];
    l0.time = 20;
    l0:Show();
    l0 = self[51];
    l0:In();
    l0 = self[53];
    l0:FirstBomb();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#D5177BB6";
    l0._graph = self;
    l0.Out = self.f_107_Out;
    l0:In();
end;

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076677065100245527";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_10_Removed;
    l0:Remove();
    self:en_117();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#1007F9F1";
    l0._graph = self;
    l0.Out = self.f_72_Out;
    l0:In();
    l0 = self[53];
    l0:SecondBomb();
    l0 = self[85];
    l0.time = 20;
    l0:Show();
    l0 = self[51];
    l0:Bomb02();
    l0:In();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    l0 = self[88];
    l0.time = 20;
    l0:Show();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074911270303191007";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_4_Removed;
    l0:Remove();
    self:en_119();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
    l0 = self[53];
    l0:ThirdBomb();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#27625D67";
    l0._graph = self;
    l0.Out = self.f_106_Out;
    l0:In();
    l0 = self[51];
    l0:In();
    l0:Bomb03();
    l0 = self[47];
    l0.seconds = 1.5;
    l0:Start();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0:FourthBomb();
    l0 = self[51];
    l0:Bomb04();
    l0:In();
    self:en_121();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
    l0 = self[153];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_GetOutArea",
        id = "118791",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
    l0 = self[99];
    l0.time = 20;
    l0:Show();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076677099227200035";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_8_Removed;
    l0:Remove();
end;

function export:f_143_Out()
    local l0;
    self = self._graph;
    l0 = self[135];
    l0:Condition(1);
    l0 = self[22];
    l0:In();
end;

function export:f_144_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:In();
end;

function export:f_138_A_eq_B()
    local l0;
    self = self._graph;
    self:en_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_123_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074841747564792131";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_12_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_123_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078253662976623680";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_151_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076456952254183781";
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:CreateAILogInArmy();
end;

function export:f_114_Out()
    local l0;
    self = self._graph;
    self:en_68();
    l0 = self[68];
    l0:Enable();
end;

function export:f_41_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = 1;
    l0.B = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0._graph = self;
    l0.Out = self.f_166_Out;
    l0:Add();
end;

function export:f_148_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:In();
end;

function export:f_77_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:In();
end;

function export:f_43_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = 1;
    l0.B = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0._graph = self;
    l0.Out = self.f_164_Out;
    l0:Add();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = self[87];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_SetExplosives",
        id = "55086",
    };
    l0:SetMissionObjective();
end;

function export:f_170_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:In();
end;

function export:f_170_Out_1()
    local l0;
    self = self._graph;
    self:en_145();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_108_Out()
    local l0;
    self = self._graph;
    l0 = self[96];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = self[140];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_GetOutArea",
        id = "118791",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.ReinforcementPoint = "2075814780576213059";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_147_Out_0;
    l0.Out[1] = self.f_147_Out_1;
    l0.Out[2] = self.f_147_Out_2;
    l0.Out[3] = self.f_147_Out_3;
    l0:In();
end;

function export:f_140_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076459463518200995";
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:CreateAILogInArmy();
end;

function export:f_86_Spawned()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.ReinforcementPoint = "2078018286726950277";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_166_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.SAM_015_B20.NumberOfDestroyedTanks = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_170_Out_0;
    l0.Out[1] = self.f_170_Out_1;
    l0:In();
end;

function export:f_133_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074566616170907671";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_5_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_133_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078253694880597058";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_156_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_157_Stopped()
    local l0;
    self = self._graph;
    self:en_142();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0.SoundId = "0x001b3611";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[63];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x00164ba1";
    l0:ForcePlay_Priority();
end;

function export:f_54_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076486796518152407";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_165_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.SAM_015_B20.NumberOfDestroyedTanks = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_169_Out_0;
    l0.Out[1] = self.f_169_Out_1;
    l0:In();
end;

function export:f_6_Spawned()
    local l0;
    self = self._graph;
    l0 = self[108];
    l0.ReinforcementPoint = "2077745743573042272";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_66_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[19];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_SetExplosives",
        id = "55086",
    };
    l0:SetMissionObjective();
    l0 = self[1];
    l0:In();
end;

function export:f_83_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076486804202117339";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_54_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_25_Removed()
    local l0;
    self = self._graph;
    self:en_80();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[86];
    l0.ReinforcementPoint = "2074623223378480956";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_69_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x001b36a7";
    l0:ForcePlay_Priority();
    l0 = self[102];
    l0.SoundId = "0x00165af2";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_8_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075807288163047889";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_83_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_122_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075834369502623285";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_15_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_122_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078242271894979675";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_155_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_131_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.SAM_015_MAIN.SAM_015_Objective04Destroyed = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 4;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_130_Out;
    l0:FromInteger();
end;

function export:f_141_A_eq_B()
    local l0;
    self = self._graph;
    self:en_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:Condition(1);
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.SAM_015_MAIN.IsSam015Reloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_110_A_is_True;
    l0.A_is_False = self.f_110_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_107_Out()
    local l0;
    self = self._graph;
    l0 = self[79];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_GetOutArea",
        id = "118791",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_155_Stopped()
    local l0;
    self = self._graph;
    self:en_144();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_124_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.SAM_015_MAIN.SAM_015_Objective01Destroyed = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 1;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_125_Out;
    l0:FromInteger();
end;

function export:f_55_Finished()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_87_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_106_Out()
    local l0;
    self = self._graph;
    l0 = self[152];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_GetOutArea",
        id = "118791",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_59_Enabled()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.seconds = 1.7;
    l0:Start();
end;

function export:f_59_OnSit()
    local l0;
    self = self._graph;
    l0 = self[111];
    l0:Close();
end;

function export:f_115_Out()
    local l0;
    self = self._graph;
    self:en_113();
    l0 = self[113];
    l0:Enable();
end;

function export:f_128_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed = l0.Target;
end;

function export:f_97_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.ReinforcementPoint = "2075754151846878875";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2075807136232774091";
    l0.CombatBSR = "2075807136232774091";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_42_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = 1;
    l0.B = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0._graph = self;
    l0.Out = self.f_165_Out;
    l0:Add();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:Condition(0);
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.SAM_015_MAIN.IsSam015Reloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_160_A_is_True;
    l0.A_is_False = self.f_160_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_50_Spawned()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0.ReinforcementPoint = "2073859993725050583";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_156_Stopped()
    local l0;
    self = self._graph;
    self:en_145();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_154_Out()
    local l0;
    self = self._graph;
    l0 = self[97];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_32_Finished()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:Start();
end;

function export:f_168_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:In();
end;

function export:f_168_Out_1()
    local l0;
    self = self._graph;
    self:en_143();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_117_Out()
    local l0;
    self = self._graph;
    self:en_116();
    l0 = self[116];
    l0:Enable();
end;

function export:f_149_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:In();
end;

function export:f_153_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076459481291564199";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:CreateAILogInArmy();
end;

function export:f_134_A_is_False()
    local l0;
    self = self._graph;
    self:en_114();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_134_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_137_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_5_Added()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = self[28];
    l0:Start();
end;

function export:f_70_OnSit()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001651ed";
    l0:ForcePlay_Priority();
end;

function export:f_125_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed = l0.Target;
end;

function export:f_60_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[111];
    l0:In();
end;

function export:f_12_Added()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Start();
end;

function export:f_169_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:In();
end;

function export:f_169_Out_1()
    local l0;
    self = self._graph;
    self:en_144();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_151_Stopped()
    local l0;
    self = self._graph;
    self:en_143();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_164_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.SAM_015_B20.NumberOfDestroyedTanks = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_168_Out_0;
    l0.Out[1] = self.f_168_Out_1;
    l0:In();
end;

function export:f_158_Out()
    local l0;
    self = self._graph;
    self:en_59();
    l0 = self[59];
    l0:Enable();
end;

function export:f_163_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.SAM_015_B20.NumberOfDestroyedTanks = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_167_Out_0;
    l0.Out[1] = self.f_167_Out_1;
    l0:In();
end;

function export:f_88_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0:In(0);
    self:en_30();
    l0 = self[30];
    l0:DoDetonateBomb();
end;

function export:f_28_BombArmed()
    local l0;
    self = self._graph;
    l0 = self[150];
    l0.Entity = "2076294028464235217";
    l0.SoundId = "0x0011624b";
    l0.SoundType = 15;
    l0:Play();
end;

function export:f_159_Out()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.vehicle = "2078294646217262066";
    l0:Enable();
end;

function export:f_152_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076457845192145367";
    l0._graph = self;
    l0.Out = self.f_154_Out;
    l0:CreateAILogInArmy();
end;

function export:f_24_BombArmed()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0.Entity = "2076294012626543301";
    l0.SoundId = "0x0011624b";
    l0.SoundType = 15;
    l0:Play();
end;

function export:f_119_Out()
    local l0;
    self = self._graph;
    self:en_118();
    l0 = self[118];
    l0:Enable();
end;

function export:f_63_Finished()
    local l0;
    self = self._graph;
    l0 = self[67];
    l0:Start();
end;

function export:f_68_OnSit()
    local l0;
    self = self._graph;
    l0 = self[69];
    l0:Start();
end;

function export:f_57_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[103];
    l0.SoundId = "0x001b3751";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[58];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x00165b15";
    l0:ForcePlay_Priority();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.SAM_015_MAIN.IsSam015Reloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_134_A_is_True;
    l0.A_is_False = self.f_134_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = self[20];
    l0:Condition(2);
end;

function export:f_33_OnSit()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0.seconds = 0.7;
    l0:Start();
end;

function export:f_129_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.SAM_015_MAIN.SAM_015_Objective03Destroyed = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 3;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_128_Out;
    l0:FromInteger();
end;

function export:f_94_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[90];
    l0.ReinforcementPoint = "2075815480429389923";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_167_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:In();
end;

function export:f_167_Out_1()
    local l0;
    self = self._graph;
    self:en_142();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:Condition(3);
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.SAM_015_MAIN.IsSam015Reloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_162_A_is_True;
    l0.A_is_False = self.f_162_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_71_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[105];
    l0.SoundId = "0x001b362f";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[73];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x00164e59";
    l0:ForcePlay_Priority();
end;

function export:f_81_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076677065100245527";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Remove();
end;

function export:f_127_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.SAM_015_MAIN.SAM_015_Objective02Destroyed = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 2;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_126_Out;
    l0:FromInteger();
end;

function export:f_91_Out()
    local l0;
    self = self._graph;
    l0 = self[112];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_137_A_eq_B()
    local l0;
    self = self._graph;
    self:en_114();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_162_A_is_False()
    local l0;
    self = self._graph;
    self:en_161();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_162_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0.B = 4;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_138_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_22_Output_0()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_Explosives01",
        id = "71307",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_22_Output_1()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_Explosives02",
        id = "71308",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_22_Output_2()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_Explosives03",
        id = "71309",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_22_Output_3()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_Explosives04",
        id = "79382",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_112_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[98];
    l0.ReinforcementPoint = "2075837798576857028";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2075807136232774091";
    l0.CombatBSR = "2075807136232774091";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = self[89];
    l0.ReinforcementPoint = "2074911400725073913";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_110_A_is_False()
    local l0;
    self = self._graph;
    self:en_159();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_110_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0.B = 2;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_139_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_99_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = self[28];
    l0:DoDetonateBomb();
    l0 = self[41];
    l0:In(0);
end;

function export:f_139_A_eq_B()
    local l0;
    self = self._graph;
    self:en_159();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_111_Closed()
    local l0;
    self = self._graph;
    self:en_109();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_111_Out()
    local l0;
    self = self._graph;
    self:en_109();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_59();
    l0 = self[59];
    l0:Disable();
end;

function export:f_135_Out()
    local l0;
    self = self._graph;
    l0 = self[146];
    l0:Close();
end;

function export:f_30_BombArmed()
    local l0;
    self = self._graph;
    l0 = self[149];
    l0.Entity = "2076294026539049677";
    l0.SoundId = "0x0011624b";
    l0.SoundType = 15;
    l0:Play();
end;

function export:f_150_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_130_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed = l0.Target;
end;

function export:f_62_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x00161fee";
    l0:ForcePlay_Priority();
    l0 = self[52];
    l0.SoundId = "0x001b360c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_10_Removed()
    local l0;
    self = self._graph;
    self:en_81();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_47_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001665d1";
    l0:ForcePlay_Priority();
end;

function export:f_126_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    PersistentGlobals.SAM_015_MAIN.SAM_015_LastObjectiveDestroyed = l0.Target;
end;

function export:f_102_Finished()
    local l0;
    self = self._graph;
    l0 = self[71];
    l0:Start();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    l0 = self[104];
    l0.SoundId = "0x001b3689";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[55];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x00166559";
    l0:ForcePlay_Priority();
end;

function export:f_132_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2073418075939557766";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_3_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_132_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078241903620408409";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_157_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_92_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[91];
    l0.ReinforcementPoint = "2075814844046518344";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2075807136232774091";
    l0.CombatBSR = "2075807136232774091";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_3_Added()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Start();
end;

function export:f_85_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:DoDetonateBomb();
    l0 = self[43];
    l0:In(0);
end;

function export:f_67_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[65];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001654aa";
    l0:ForcePlay_Priority();
end;

function export:f_161_Out()
    local l0;
    self = self._graph;
    self:en_68();
    l0 = self[68];
    l0:Enable();
    l0 = self[70];
    l0.vehicle = "2078294646217262066";
    l0:Enable();
end;

function export:f_15_Added()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:Start();
end;

function export:f_147_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective01Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_132_A_is_True;
    l0.A_is_False = self.f_132_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_147_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective02Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_123_A_is_True;
    l0.A_is_False = self.f_123_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_147_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective03Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_122_A_is_True;
    l0.A_is_False = self.f_122_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_147_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.SAM_015_MAIN.SAM_015_Objective04Destroyed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_133_A_is_True;
    l0.A_is_False = self.f_133_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_49_Spawned()
    local l0;
    self = self._graph;
    l0 = self[94];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_44_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = 1;
    l0.B = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0._graph = self;
    l0.Out = self.f_163_Out;
    l0:Add();
end;

function export:f_96_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2075754251788754591";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074911357498576878";
    l0.CombatBSR = "2074911357498576878";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_14_BombArmed()
    local l0;
    self = self._graph;
    l0 = self[148];
    l0.Entity = "2076294023718380233";
    l0.SoundId = "0x0011624b";
    l0.SoundType = 15;
    l0:Play();
end;

function export:f_101_TimeElapsed()
    self = self._graph;
    self:Out();
end;

function export:f_100_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0:In(0);
    self:en_14();
    l0 = self[14];
    l0:DoDetonateBomb();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.ReinforcementPoint = "2073388917089912156";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909097790020228";
    l0.CombatBSR = "2074909097790020228";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_4_Removed()
    local l0;
    self = self._graph;
    self:en_82();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_93_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.ReinforcementPoint = "2073860399568016910";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2074909201001355909";
    l0.CombatBSR = "2074909201001355909";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_121_Out()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = self[120];
    l0:Enable();
end;

function export:f_160_A_is_False()
    local l0;
    self = self._graph;
    self:en_158();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_160_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.SAM_015_B20.NumberOfDestroyedTanks;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_141_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[93];
    l0.seconds = 2;
    l0:Start();
end;

function export:en_142()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_142_Out;
end;

function export:en_145()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_145_Out;
end;

function export:en_143()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_143_Out;
end;

function export:en_144()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_144_Out;
end;

function export:en_114()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_114_Out;
end;

function export:en_118()
    local l0;
    l0 = self[118];
    l0.ContextualAction = "2075893801817221640";
end;

function export:en_113()
    local l0;
    l0 = self[113];
    l0.ContextualAction = "2075893793990650368";
end;

function export:en_59()
    local l0;
    l0 = self[59];
    l0.vehicle = "2078294646217262066";
end;

function export:en_115()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2075893793990650368";
    l0._graph = self;
    l0.Out = self.f_115_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_117()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2075893798510012932";
    l0._graph = self;
    l0.Out = self.f_117_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_82()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075807290664950229";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

function export:en_158()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_158_Out;
end;

function export:en_80()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075807294183971293";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

function export:en_28()
    local l0;
    l0 = self[28];
    l0.bombPos = "2076472892553494384";
    l0.bombCueArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_DynamiteGhost_01";
    l0.bombArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_Dynamite_01";
    l0.bombRemoteArchetype = "weapons:FC3/IED_remote.MissionBombRemote";
end;

function export:en_159()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_159_Out;
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.bombPos = "2076472869908447080";
    l0.bombCueArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_DynamiteGhost_01";
    l0.bombArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_Dynamite_01";
    l0.bombRemoteArchetype = "weapons:FC3/IED_remote.MissionBombRemote";
end;

function export:en_119()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2075893801817221640";
    l0._graph = self;
    l0.Out = self.f_119_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_68()
    local l0;
    l0 = self[68];
    l0.vehicle = "2078294646217262066";
end;

function export:en_120()
    local l0;
    l0 = self[120];
    l0.ContextualAction = "2075893803954219532";
end;

function export:en_81()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075807292569164249";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_81_Removed;
end;

function export:en_116()
    local l0;
    l0 = self[116];
    l0.ContextualAction = "2075893798510012932";
end;

function export:en_30()
    local l0;
    l0 = self[30];
    l0.bombPos = "2076472881251942252";
    l0.bombCueArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_DynamiteGhost_01";
    l0.bombArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_Dynamite_01";
    l0.bombRemoteArchetype = "weapons:FC3/IED_remote.MissionBombRemote";
end;

function export:en_109()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_109_Out;
end;

function export:en_161()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_161_Out;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.bombPos = "2076472847601041252";
    l0.bombCueArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_DynamiteGhost_01";
    l0.bombArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_Dynamite_01";
    l0.bombRemoteArchetype = "weapons:FC3/IED_remote.MissionBombRemote";
end;

function export:en_121()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2075893803954219532";
    l0._graph = self;
    l0.Out = self.f_121_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:FailbyDefusing()
    
end;
_compilerVersion = 24;
