-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b50/bam_030_b50.domino.xml
-- User graph: CrossTunnelFirstWaterLevelUp
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/CompoundObject_v2.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GetEntityInPrefab.lua");
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
        cbox:LoadResource([[sndres0x001876c0]], "CSoundResource");
        cbox:LoadResource([[sndres0x001C36B5]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876be]], "CSoundResource");
        cbox:LoadResource([[sndres0x001C36B7]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876bf]], "CSoundResource");
        cbox:LoadResource([[sndres0x001876c1]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Destoryed = DummyFunction;
    self.Meta = 0;
    self.PoleBroken = 0;
    self.NeedStruggleUnderWater = false;
    self[68] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[68];
    l0._graph = self;
    l0.Out = self.f_68_Out;
    self[32] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_32_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[1];
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
    l0.SPOut["End"] = self.f_1_SPOut__End_;
    self[60] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_60_Enter;
    l0.Leave = self.f_60_Leave;
    l0.Use = DummyFunction;
    self[81] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[81];
    l0._graph = self;
    l0.Out = self.f_81_Out;
    self[13] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[75] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[75];
    l0._graph = self;
    l0.Out = self.f_75_Out;
    self[86] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[86];
    l0._graph = self;
    l0.Started = self.f_86_Started;
    l0.Finished = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_2_Destroyed;
    self[85] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[85];
    l0._graph = self;
    l0.Started = self.f_85_Started;
    l0.Finished = DummyFunction;
    self[70] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Out = self.f_70_Out;
    self[9] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_9_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[77] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Out = self.f_77_Out;
    self[12] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[12];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "End",
        },
    };
    l0.Started = self.f_12_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["End"] = self.f_12_SPOut__End_;
    self[50] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out = self.f_50_Out;
    self[45] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Started = self.f_45_Started;
    l0.Finished = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[21];
    l0._graph = self;
    l0.StartFilling = self.f_21_StartFilling;
    l0.StartDischarging = DummyFunction;
    l0.Filled = self.f_21_Filled;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[66] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Out = self.f_66_Out;
    self[46] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Started = self.f_46_Started;
    l0.Finished = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    self[34] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = self.f_34_Out;
    self[23] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[23];
    l0._graph = self;
    l0.StartFilling = self.f_23_StartFilling;
    l0.StartDischarging = DummyFunction;
    l0.Filled = self.f_23_Filled;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[84] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[84];
    l0._graph = self;
    l0.Started = self.f_84_Started;
    l0.Finished = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[79] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Out = self.f_79_Out;
    self[20] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[20];
    l0._graph = self;
    l0.StartFilling = self.f_20_StartFilling;
    l0.StartDischarging = DummyFunction;
    l0.Filled = self.f_20_Filled;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[47] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Started = self.f_47_Started;
    l0.Finished = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_19_Destroyed;
    self[72] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Out = self.f_72_Out;
    self[22] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    self[36] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_36_Destroyed;
    self[7] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_7_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[10];
    l0._graph = self;
    l0.StartFilling = DummyFunction;
    l0.StartDischarging = DummyFunction;
    l0.Filled = self.f_10_Filled;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_15_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712314637133096";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712304258327846";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712325586363690";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:Enable();
    l0 = self[60];
    l0.triggerId = "2078024831804141399";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_68_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[68];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_37_Out;
    l1:In();
end;

function export:f_41_Cleaned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225221412143138";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Clean();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_32_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076867113628215150";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = self.f_41_Cleaned;
    l0:Clean();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0.PrefabEntity = "2078305305768242550";
    l0.ObjectName = "newparticleseffect_1831";
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.PrefabEntity = "2078305253792427276";
    l0.ObjectName = "casadewaterfall_5x5_13";
    l0:In();
end;

function export:f_1_SPOut__End_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.Meta;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Stop();
end;

function export:f_60_Enter()
    local l0;
    self = self._graph;
    self:en_61();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_60_Leave()
    local l0;
    self = self._graph;
    self:en_61();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
end;

function export:f_81_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[81];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_80_Out;
    l1:In();
end;

function export:f_13_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[13];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_71_Out;
    l1:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = self.PoleBroken;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:Add();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076712304258327846";
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:In();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    l0 = self[79];
    l0.PrefabEntity = "2078305305768242550";
    l0.ObjectName = "newparticleseffect_1829";
    l0:In();
end;

function export:f_75_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[75];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_74_Out;
    l1:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076867113628215150";
    l0._graph = self;
    l0.Started = self.f_40_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = self[68];
    l0.PrefabEntity = "2078305253792427276";
    l0.ObjectName = "newparticleseffect_2231";
    l0:In();
end;

function export:f_86_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712325586363690";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:Disable();
end;

function export:f_2_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.Entity = "2077075876045924555";
    l0.SoundId = "0x001876bf";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.entityId = "2076674826048644999";
    l0:Enable();
end;

function export:f_85_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712304258327846";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:Disable();
end;

function export:f_70_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[70];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_25_Out;
    l1:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076867147251853170";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = self.f_44_Cleaned;
    l0:Clean();
end;

function export:f_77_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[77];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_76_Out;
    l1:In();
end;

function export:f_53_Started()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_42_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225247286804518";
    l0._graph = self;
    l0.Started = self.f_53_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_12_SPOut__End_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078332728933241058";
    l0._graph = self;
    l0.Started = self.f_38_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_12_Started()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = self[50];
    self.Meta = l0.ID;
    l0 = self[1];
    l0.MetaSequenceID = self.Meta;
    l0.SceneEntity = "2077862102839601812";
    l0.SequenceFile = "Sequences/fc3_main/bam_030_b50/StruggleUnderWater.seq";
    l0:Play();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076867147251853170";
    l0._graph = self;
    l0.Started = self.f_42_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_45_Started()
    local l0;
    self = self._graph;
    l0 = self[85];
    l0.Entity = "2078710925388426386";
    l0.SoundId = "0x001C36B5";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_52_Started()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_21_Filled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 139;
    l0.World = "fc3_main";
    l0.SectorId = 3839;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_21_StartFilling()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.World = "fc3_main";
    l0.SectorId = 3678;
    l0.Waterlevel = 139;
    l0.Speed = 0.6;
    l0:Fill();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.entityId = "2076674826050742153";
    l0:Enable();
end;

function export:f_80_Out()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0.PrefabEntity = "2078305253792427276";
    l0.ObjectName = "newparticleseffect_2230";
    l0:In();
end;

function export:f_43_Cleaned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225237688139812";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Clean();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076712325586363690";
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_17_A_eq_B()
    local l0;
    self = self._graph;
    self:Destoryed();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076674826044450691";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_14_Destroyed;
    l0:Destroy();
end;

function export:f_66_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[66];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_67_Out;
    l1:In();
end;

function export:f_46_Started()
    local l0;
    self = self._graph;
    l0 = self[84];
    l0.Entity = "2078710940232068244";
    l0.SoundId = "0x001C36B7";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.PrefabEntity = "2078305279652408634";
    l0.ObjectName = "newparticleseffect_1159";
    l0:In();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.entityId = "2076674826046547845";
    l0:Enable();
end;

function export:f_27_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[27];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_65_Out;
    l1:In();
end;

function export:f_34_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[34];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = DummyFunction;
    l1:In();
end;

function export:f_23_Filled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 139;
    l0.World = "fc3_main";
    l0.SectorId = 3678;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_23_StartFilling()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.World = "fc3_main";
    l0.SectorId = 3838;
    l0.Waterlevel = 139;
    l0.Speed = 0.6;
    l0:Fill();
end;

function export:f_84_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076712314637133096";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:Disable();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.PrefabEntity = "2078305279652408634";
    l0.ObjectName = "newparticleseffect_1161";
    l0:In();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NeedStruggleUnderWater = l0.Target;
end;

function export:f_39_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225237688139812";
    l0._graph = self;
    l0.Started = self.f_52_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.SceneEntity = "2075388031361236852";
    l0.SequenceFile = "Sequences/fc3_main/BAM_030_b50/WaterLevelUp_1.seq";
    l0:Play();
end;

function export:f_44_Cleaned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225247286804518";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Clean();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076712314637133096";
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_38_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078333068290212104";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_3_A_eq_B()
    self = self._graph;
    self:Out();
end;

function export:f_79_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[79];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_78_Out;
    l1:In();
end;

function export:f_82_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078332743411978468";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = self.f_16_Cleaned;
    l0:Clean();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0.PrefabEntity = "2078305279652408634";
    l0.ObjectName = "newparticleseffect_1160";
    l0:In();
end;

function export:f_20_Filled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 139;
    l0.World = "fc3_main";
    l0.SectorId = 3837;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_20_StartFilling()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.World = "fc3_main";
    l0.SectorId = 3839;
    l0.Waterlevel = 139;
    l0.Speed = 0.6;
    l0:Fill();
end;

function export:f_40_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077225221412143138";
    l0._graph = self;
    l0.Started = self.f_51_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_51_Started()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_47_Started()
    local l0;
    self = self._graph;
    l0 = self[86];
    l0.Entity = "2078710940232068244";
    l0.SoundId = "0x001C36B7";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076867142199814000";
    l0._graph = self;
    l0.Started = self.f_39_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_19_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0.Entity = "2077075882136053965";
    l0.SoundId = "0x001876c0";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_72_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[72];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_73_Out;
    l1:In();
end;

function export:f_16_Cleaned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NeedStruggleUnderWater;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_62_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0.PrefabEntity = "2078305305768242550";
    l0.ObjectName = "epicwaterfal_20x5m_3";
    l0:In();
end;

function export:f_22_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[22];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_26_Out;
    l1:In();
end;

function export:f_36_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.Entity = "2077075884168194255";
    l0.SoundId = "0x001876bf";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.PrefabEntity = "2078305305768242550";
    l0.ObjectName = "newparticleseffect_1832";
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076867142199814000";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = self.f_43_Cleaned;
    l0:Clean();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    self.PoleBroken = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.PoleBroken;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_3_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.PoleBroken;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_17_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = self[81];
    l0.PrefabEntity = "2078305305768242550";
    l0.ObjectName = "newparticleseffect_1833";
    l0:In();
end;

function export:f_10_Filled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 139;
    l0.World = "fc3_main";
    l0.SectorId = 3838;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_18_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077324301096212676";
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:In();
    l0 = self[49];
    l0.Entity = "2077085492007982749";
    l0.SoundId = "0x001876be";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_15_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.World = "fc3_main";
    l0.SectorId = 3837;
    l0.Waterlevel = 139;
    l0.Speed = 0.6;
    l0:Fill();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078332728933241058";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_82_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_62_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0:In();
end;

function export:f_14_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0.PrefabEntity = "2078305305768242550";
    l0.ObjectName = "newparticleseffect_1830";
    l0:In();
    l0 = self[48];
    l0.Entity = "2077085370318602277";
    l0.SoundId = "0x001876c1";
    l0.SoundType = 11;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074764080360466382";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_18_Destroyed;
    l0:Destroy();
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
end;

function export:en_61()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_61_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Destoryed()
    
end;
_compilerVersion = 24;
