-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: FX_RockDoors
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
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
    end;
end;

function export:Init(cbox)
    self.Completed = DummyFunction;
    self.Started = DummyFunction;
    self.Stopped = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:Stop()
    local l0;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_4_Stopped()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_2_Stopped()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_6_Started()
    self = self._graph;
    self:Started();
end;

function export:f_6_Stopped()
    self = self._graph;
    self:Stopped();
end;

function export:f_3_Started()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_3_Stopped()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_1_Stopped()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_5_Started()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_5_Stopped()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073598778484615706";
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_4_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073598786854349348";
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_2_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073598779082304028";
    l0._graph = self;
    l0.Started = self.f_6_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_6_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073598781535971872";
    l0._graph = self;
    l0.Started = self.f_3_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_3_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073598773854104088";
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_1_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073598790528559654";
    l0._graph = self;
    l0.Started = self.f_5_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_5_Stopped;
    l0.Cleaned = DummyFunction;
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
function export:Started()
    
end;
function export:Stopped()
    
end;
_compilerVersion = 24;
