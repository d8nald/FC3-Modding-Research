-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_main.domino.xml
-- User graph: BAM060_ObjectiveManager
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
        cbox:RegisterBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Done = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Added = self.f_1_Added;
    self[10] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Added = self.f_9_Added;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:BringKnife()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2071273707138977550";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_8_Removed;
    l0:Remove();
end;

function export:ClearAll()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2071273707138977550";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_11_Removed;
    l0:Remove();
end;

function export:KillBambi()
    self:Done();
end;

function export:LocateHut()
    local l0;
    l0 = self[10];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_060_OBJ_LocateHut",
        id = "118824",
    };
    l0:SetMissionObjective();
end;

function export:RescueKeith()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075501824267264750";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_6_Removed;
    l0:Remove();
end;

function export:f_8_Removed()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_060_OBJ_BringKnife",
        id = "103652",
    };
    l0:SetMissionObjective();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Marker = "2075501824267264750";
    l0:In();
end;

function export:f_12_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075503082508130004";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_13_Removed;
    l0:Remove();
end;

function export:f_6_Removed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_060_OBJ_Rescue Keith",
        id = "103653",
    };
    l0:SetMissionObjective();
end;

function export:f_1_Added()
    self = self._graph;
    self:Done();
end;

function export:f_13_Removed()
    self = self._graph;
    self:Done();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Marker = "2071273707138977550";
    l0:In();
end;

function export:f_5_Out()
    self = self._graph;
    self:Done();
end;

function export:f_11_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075501824267264750";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_12_Removed;
    l0:Remove();
end;

function export:f_9_Added()
    self = self._graph;
    self:Done();
end;

-- Empty out anchor definitions
function export:Done()
    
end;
_compilerVersion = 24;
