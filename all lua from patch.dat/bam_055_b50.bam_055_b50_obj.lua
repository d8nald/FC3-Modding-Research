-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: BAM_055_B50_OBJ
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
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074869496924876186";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Remove();
end;

function export:In_2()
    local l0;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:In_3()
    local l0;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_4_Added()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_055_OBJ_find_real_tomb_gate",
        id = "152719",
    };
    l0:SetMissionObjective();
end;

function export:f_3_Added()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_055_OBJ_reach_tomb_gate",
        id = "152718",
    };
    l0:SetMissionObjective();
end;

function export:f_3_Removed()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074960430463197480";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_4_Added;
    l0.Removed = DummyFunction;
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075914456176538604";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_3_Added;
    l0.Removed = self.f_3_Removed;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
