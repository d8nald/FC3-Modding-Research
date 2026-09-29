-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_main.domino.xml
-- User graph: BAM060_MusicBrain
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
    end;
end;

function export:Init(cbox)
    self.Done = DummyFunction;
    self.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:AcquireMission()
    self:Out();
end;

function export:Assassinate()
    local l0;
    self:Out();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_BAM060_KnifeFight";
    l0._graph = self;
    l0.Started = self.f_8_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:BeforeKnifeFight()
    local l0;
    self:Out();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_BAM060_BeforeKnifeFight";
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:ExitMissionZone()
    self:Out();
end;

function export:MissionComplete()
    local l0;
    self:Out();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_BAM060_KnifeFight_EndStinger";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_BAM060_KnifeFight";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_7_Stopped;
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_BAM060_BeforeKnifeFight";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Stop();
end;

function export:MissionSuccess()
    self:Done();
    self:Out();
end;

function export:f_8_Started()
    self = self._graph;
    self:Done();
end;

function export:f_4_Started()
    self = self._graph;
    self:Done();
end;

function export:f_7_Stopped()
    self = self._graph;
    self:Done();
end;

-- Empty out anchor definitions
function export:Done()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
