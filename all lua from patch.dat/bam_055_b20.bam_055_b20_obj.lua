-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b20/bam_055_b20.domino.xml
-- User graph: BAM_055_B20_OBJ
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
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Added = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:In_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:In3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2077143822090962563";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_7_Removed;
    l0:Remove();
end;

function export:In4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075633881517661641";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_11_Removed;
    l0:Remove();
end;

function export:f_3_Added()
    self = self._graph;
    self:Out();
end;

function export:f_6_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076836928314984795";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_3_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074869496924876186";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_14_Removed;
    l0:Remove();
    l0 = self[9];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_055_OBJ_GLOBAL",
        id = "90322",
    };
    l0:SetMissionObjective();
end;

function export:f_14_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2077143822090962563";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_8_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_11_Removed()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Marker = "2078034245579707789";
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_055_OBJ_follow_the_cable",
        id = "152715",
    };
    l0:SetMissionObjective();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078034245579707789";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_6_Removed;
    l0:Remove();
end;

function export:f_10_Added()
    self = self._graph;
    self:Out();
end;

function export:f_7_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075633881517661641";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_10_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_8_Added()
    self = self._graph;
    self:Out();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
