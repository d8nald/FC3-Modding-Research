-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b50/bam_030_b50.domino.xml
-- User graph: CrossTunnelSecondWaterLevelUp
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
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/CompoundObject_v2.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetWaterLevel.lua");
        cbox:RegisterBox("Domino/System/ShimmerModifier.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/WaterLevelModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001C36B6]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876c0]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876be]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876d5]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876c9]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876bf]], "CSoundResource");
        cbox:LoadResource([[sndres0x001C36B4]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876c1]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876d3]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Destoryed = DummyFunction;
    self.Meta = 0;
    self.PoleBroken = 0;
    self.IsUnderWater = false;
    self.NeedStruggleUnderWater = false;
    self[1] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[1];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "End",
        },
    };
    l0.Started = self.f_1_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["End"] = self.f_1_SPOut__End_;
    self[54] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[73] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Out = self.f_73_Out;
    self[52] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Started = self.f_52_Started;
    l0.Finished = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Started = self.f_50_Started;
    l0.Finished = DummyFunction;
    self[62] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[74];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "End",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["End"] = self.f_74_SPOut__End_;
    self[8] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[8];
    l0._graph = self;
    l0.StartFilling = self.f_8_StartFilling;
    l0.StartDischarging = DummyFunction;
    l0.Filled = self.f_8_Filled;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[53] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_53_Enter;
    l0.Leave = self.f_53_Leave;
    l0.Use = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Started = self.f_35_Started;
    l0.Finished = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_61_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_18_Destroyed;
    self[33] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Started = self.f_33_Started;
    l0.Finished = DummyFunction;
    self[56] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_56_Enter;
    l0.Leave = self.f_56_Leave;
    l0.Use = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[11];
    l0._graph = self;
    l0.StartFilling = DummyFunction;
    l0.StartDischarging = DummyFunction;
    l0.Filled = self.f_11_Filled;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_29_Destroyed;
    self[10] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_10_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_21_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[65] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[65];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_65_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[51] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Started = self.f_51_Started;
    l0.Finished = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_23_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[9];
    l0._graph = self;
    l0.StartFilling = self.f_9_StartFilling;
    l0.StartDischarging = DummyFunction;
    l0.Filled = self.f_9_Filled;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_36_Destroyed;
    self[63] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[6];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "End",
        },
    };
    l0.Started = self.f_6_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["End"] = self.f_6_SPOut__End_;
    self[4] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[4];
    l0._graph = self;
    l0.StartFilling = self.f_4_StartFilling;
    l0.StartDischarging = DummyFunction;
    l0.Filled = self.f_4_Filled;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Started = self.f_39_Started;
    l0.Finished = DummyFunction;
    self[38] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_38_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076674643810335401";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_43_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetDamageable();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = self.PoleBroken;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:Add();
end;

function export:f_1_SPOut__End_()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0:SendEvent();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078205400661937894";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Clean();
    l0 = self[65];
    l0.seconds = 0.7;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsUnderWater;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_59_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    self:en_40();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0:SendEvent();
    l0 = self[61];
    l0.seconds = 0.1;
    l0:Start();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225288686682152";
    l0._graph = self;
    l0.Started = self.f_66_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_5_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078028805273895324";
    l0._graph = self;
    l0.Started = self.f_77_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = self[6];
    l0.SceneEntity = "2075387465331504282";
    l0.SequenceFile = "Sequences/fc3_main/BAM_030_b50/WaterLevelUp_2.seq";
    l0:Play();
    l0 = self[55];
    l0.Entity = "2077085556367502638";
    l0.SoundId = "0x001876be";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    l0 = self[73];
    self.Meta = l0.ID;
    l0 = self[74];
    l0.MetaSequenceID = self.Meta;
    l0.SceneEntity = "2077862102839601812";
    l0.SequenceFile = "Sequences/fc3_main/bam_030_b50/StruggleUnderWater.seq";
    l0:Play();
end;

function export:f_52_Started()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.Entity = "2078710940234165398";
    l0.SoundId = "0x001C36B6";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.entityId = "2076674643810335401";
    l0:Enable();
end;

function export:f_22_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078332957831113448";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = self.f_12_Cleaned;
    l0:Clean();
end;

function export:f_50_Started()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.Entity = "2078710913336093840";
    l0.SoundId = "0x001C36B4";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_28_Cleaned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NeedStruggleUnderWater;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_76_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076712208454133028";
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:In();
end;

function export:f_77_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078029086036417391";
    l0._graph = self;
    l0.Started = self.f_47_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_67_Started()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_43_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076674428151801720";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_42_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetDamageable();
end;

function export:f_74_SPOut__End_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.Meta;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Stop();
end;

function export:f_8_Filled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 142.5;
    l0.World = "fc3_main";
    l0.SectorId = 3838;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_8_StartFilling()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.World = "fc3_main";
    l0.SectorId = 3839;
    l0.Waterlevel = 142.5;
    l0.Speed = 1;
    l0:Fill();
end;

function export:f_41_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712188564743458";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:Enable();
    l0 = self[53];
    l0.triggerId = "2078024906771033947";
    l0.autoDisable = false;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712208454133028";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712170634093852";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:Enable();
end;

function export:f_53_Enter()
    local l0;
    self = self._graph;
    self:en_75();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_53_Leave()
    local l0;
    self = self._graph;
    self:en_75();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076712170634093852";
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:In();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.entityId = "2076674649996933805";
    l0:Enable();
end;

function export:f_35_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712188564743458";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:Disable();
end;

function export:f_48_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078029107450436469";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_61_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsUnderWater;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_58_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_27_Cleaned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078332728933241058";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = self.f_28_Cleaned;
    l0:Clean();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225302183952428";
    l0._graph = self;
    l0.Started = self.f_71_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_18_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0.Entity = "2077075907555633365";
    l0.SoundId = "0x001876bf";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_71_Started()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225300732723242";
    l0._graph = self;
    l0.Started = self.f_67_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_15_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2074735472101327664";
    l0:Enable();
    l0 = self[54];
    l0.Entity = "2077085556367502640";
    l0.SoundId = "0x001876c1";
    l0.SoundType = 11;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074764559561802855";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_5_Destroyed;
    l0:Destroy();
end;

function export:f_33_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712170634093852";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:Disable();
end;

function export:f_56_Enter()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_56_Leave()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
end;

function export:f_11_Filled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 142.5;
    l0.World = "fc3_main";
    l0.SectorId = 3678;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_29_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.Entity = "2077075903176779985";
    l0.SoundId = "0x001876bf";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.World = "fc3_main";
    l0.SectorId = 3837;
    l0.Waterlevel = 142.5;
    l0.Speed = 1;
    l0:Fill();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078332930425531110";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_22_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_21_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225288686682152";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Clean();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    self.PoleBroken = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.PoleBroken;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_14_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.PoleBroken;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_19_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NeedStruggleUnderWater = l0.Target;
end;

function export:f_65_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsUnderWater;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_64_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_66_Started()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_51_Started()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.Entity = "2078710913336093840";
    l0.SoundId = "0x001C36B4";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_23_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225300732723242";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Clean();
end;

function export:f_59_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.Entity = "2077088430998694369";
    l0.SoundId = "0x001876d5";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_76_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[73];
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076712188564743458";
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_25_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078333059660431622";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_2_Enabled()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.triggerId = "2077088436373694949";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.SceneEntity = "2074735422163944236";
    l0.SequenceFile = "Sequences/fc3_main/SHA_Quest/Water_Part2/Water_Part2B01/RoadFal.seq";
    l0:Play();
end;

function export:f_9_Filled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 142.5;
    l0.World = "fc3_main";
    l0.SectorId = 3837;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_9_StartFilling()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.World = "fc3_main";
    l0.SectorId = 3838;
    l0.Waterlevel = 142.5;
    l0.Speed = 1;
    l0:Fill();
end;

function export:f_36_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.Entity = "2077075906060363987";
    l0.SoundId = "0x001876c0";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_42_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076674649996933805";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_41_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetDamageable();
end;

function export:f_6_SPOut__End_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078332930425531110";
    l0._graph = self;
    l0.Started = self.f_25_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.entityId = "2076674428151801720";
    l0:Enable();
end;

function export:f_4_Filled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 142.5;
    l0.World = "fc3_main";
    l0.SectorId = 3839;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_4_StartFilling()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.World = "fc3_main";
    l0.SectorId = 3678;
    l0.Waterlevel = 142.5;
    l0.Speed = 1;
    l0:Fill();
end;

function export:f_64_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0.Entity = "2077088776967973705";
    l0.SoundId = "0x001876c9";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsUnderWater = l0.Target;
end;

function export:f_19_A_eq_B()
    self = self._graph;
    self:Out();
end;

function export:f_49_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078029103711214451";
    l0._graph = self;
    l0.Started = self.f_48_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_12_Cleaned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078333068290212104";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = self.f_27_Cleaned;
    l0:Clean();
end;

function export:f_58_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0.Entity = "2077088776395451207";
    l0.SoundId = "0x001876d3";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_14_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076674430720812921";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_15_Destroyed;
    l0:Destroy();
    self:Destoryed();
end;

function export:f_39_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712208454133028";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:Disable();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_38_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225302183952428";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Clean();
end;

function export:f_47_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078029100567583601";
    l0._graph = self;
    l0.Started = self.f_49_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:en_32()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_32_Out;
end;

function export:en_75()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_75_Out;
end;

function export:en_40()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.3;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_57()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_57_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Destoryed()
    
end;
_compilerVersion = 24;
