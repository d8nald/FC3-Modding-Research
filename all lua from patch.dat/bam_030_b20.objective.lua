-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b20/bam_030_b20.domino.xml
-- User graph: Objective
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
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Complete = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074869129570954533";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_5_Removed;
    l0:Remove();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2077278134350130261";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_3_Removed;
    l0:Remove();
end;

function export:f_7_Added()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2076218277597587437";
    l0:Enable();
end;

function export:f_3_Removed()
    self = self._graph;
    self:Complete();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2077278134350130261";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_7_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_5_Removed()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_030_OBJ_Enter_JSMBase",
        id = "88182",
    };
    l0:SetMissionObjective();
end;

-- Empty out anchor definitions
function export:Complete()
    
end;
_compilerVersion = 24;
