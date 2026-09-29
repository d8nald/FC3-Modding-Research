-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: BAM_055_B50_LampON
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SFX_Name" Type="Nomad|entity{}" />
    <DataIn Name="Lit_Name" Type="Nomad|entity{}" />
    <DataIn Name="SP_Name" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_2_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:Init_Off()
    local l0;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_3_Disabled()
    self = self._graph;
    self:Out();
end;

function export:f_3_Enabled()
    self = self._graph;
    self:Out();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = self.Lit_Name;
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = self.f_3_Disabled;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.SFX_Name;
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
