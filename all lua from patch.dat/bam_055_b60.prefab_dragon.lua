-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: Prefab_Dragon
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Prefab" Type="Nomad|entity{}" />
    <DataIn Name="BurstStart" Type="Nomad|Sound" />
    <DataIn Name="Sound_Point" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/GetEntityInPrefab.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Complete = DummyFunction;
    self.Out = DummyFunction;
    self.SmokeActived = DummyFunction;
    self.FireActived = DummyFunction;
    self.Fire = nil;
    self.Smoke = nil;
    self.L_fire_0 = nil;
    self.L_fire_1 = nil;
    self.L_fire_spark = nil;
    self[1] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[7] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[10] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
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
    self[11] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = self.f_11_Started;
    l0.Finished = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[8] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Deactive_fire()
    local l0;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
    self:en_11();
    l0 = self[11];
    l0:Stop();
end;

function export:Deactive_Sound()
    local l0;
    self:en_11();
    l0 = self[11];
    l0:Stop();
end;

function export:FireOn()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:In()
    local l0;
    l0 = self[10];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "Lights/Omni_fire_0";
    l0:In();
end;

function export:SmokeOn()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "Particle_IndiSpark";
    l0:In();
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
    self:Out();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.Smoke = l0.ObjectEntity;
    l0 = self[2];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "Particle_Spitfire";
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    self.Fire = l0.ObjectEntity;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    self.L_fire_0 = l0.ObjectEntity;
    l0 = self[20];
    l0:Start();
end;

function export:f_20_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = self.L_fire_0;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "Particle_IndiSpark";
    l0:In();
    self:Out();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
    self:en_11();
    l0 = self[11];
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.Smoke;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_9_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_4_Stopped()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_9_Stopped()
    self = self._graph;
    self:Complete();
end;

function export:f_11_Started()
    self = self._graph;
    self:FireActived();
end;

function export:f_3_Started()
    self = self._graph;
    self:SmokeActived();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    self.Fire = l0.ObjectEntity;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.Smoke = l0.ObjectEntity;
    l0 = self[7];
    l0.PrefabEntity = self.Prefab;
    l0.ObjectName = "Particle_Spitfire";
    l0:In();
end;

function export:en_14()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = self.L_fire_0;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.Fire;
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_4_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.Entity = self.Sound_Point;
    l0.SoundId = self.BurstStart;
    l0.SoundType = 11;
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.Smoke;
    l0._graph = self;
    l0.Started = self.f_3_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

-- Empty out anchor definitions
function export:Complete()
    
end;
function export:Out()
    
end;
function export:SmokeActived()
    
end;
function export:FireActived()
    
end;
_compilerVersion = 24;
