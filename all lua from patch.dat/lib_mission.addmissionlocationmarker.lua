-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: AddMissionLocationMarker
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Marker" Type="Nomad|entity{}" />
    <DataIn Name="LocalizedText" Type="Nomad|oasis" />
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
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.AssertSpecial.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Added = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.AssertSpecial.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Added = self.f_1_Added;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Marker;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_3_Yes;
    l0.No = self.f_3_No;
    l0:Entity();
end;

function export:f_4_Out()
    self = self._graph;
    self:Added();
end;

function export:f_5_No()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.objectiveId = self.LocalizedText;
    l0:SetMissionObjective();
end;

function export:f_5_Yes()
    self = self._graph;
    self:Added();
end;

function export:f_3_No()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Marker = self.Marker;
    l0:In();
end;

function export:f_3_Yes()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.String = "AddMissionLocationMarker::Marker is null plug a valid value in.";
    l0:In();
end;

function export:f_2_Out()
    self = self._graph;
    self:Added();
end;

function export:f_1_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = self.LocalizedText;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_5_Yes;
    l0.No = self.f_5_No;
    l0:Oasis();
end;

-- Empty out anchor definitions
function export:Added()
    
end;
_compilerVersion = 24;
