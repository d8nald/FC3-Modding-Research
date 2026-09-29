-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: FX_HouseSparks
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
        cbox:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:Init(cbox)
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

function export:f_2_Started()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_2_Stopped()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Start();
end;

function export:f_4_Stopped()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_3_Started()
    local l0;
    self = self._graph;
    self:Started();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Sparks started.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_3_Stopped()
    self = self._graph;
    self:Stopped();
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073595724462837319";
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_1_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073595749173579337";
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_2_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073595754250784333";
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_4_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2073595752166215243";
    l0._graph = self;
    l0.Started = self.f_3_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_3_Stopped;
    l0.Cleaned = DummyFunction;
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Stopped()
    
end;
_compilerVersion = 24;
