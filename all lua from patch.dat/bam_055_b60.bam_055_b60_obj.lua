-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: BAM_055_B60_Obj
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
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[6];
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

function export:Obj_1st()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074960430463197480";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_3_Removed;
    l0:Remove();
end;

function export:Obj_2nd()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076120729201429766";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_4_Removed;
    l0:Remove();
end;

function export:f_4_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076120776882277642";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_5_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_5_Added()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_055_OBJ_avoid_trap",
        id = "152721",
    };
    l0:SetMissionObjective();
end;

function export:f_1_Added()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_055_OBJ_open_sarcophagi",
        id = "152720",
    };
    l0:SetMissionObjective();
end;

function export:f_3_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076120729201429766";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_1_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
