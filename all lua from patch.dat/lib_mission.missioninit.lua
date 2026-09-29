-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: MissionInit
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="LocationMarker" Type="Nomad|entity{}" />
    <DataIn Name="AcknowledgeZone" Type="Nomad|entity{}" />
    <DataIn Name="ObjectiveString" Type="Nomad|oasis" />
    <DataIn Name="displayMissionTitle" Type="Core|bool" />
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/DisplayMissionTitle.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/GetSessionGlobal.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionSetAcknowledgeShape.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Added = self.f_4_Added;
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.AssertSpecial.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionSetAcknowledgeShape.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.AssertSpecial.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[11] = cbox:CreateBox("Domino/System/Mission_Flow/DisplayMissionTitle.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    self[10] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Acknowledged = self.f_10_Acknowledged;
    l0.NotAcknowledged = self.f_10_NotAcknowledged;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[10];
    l0:IsAcknowledged();
end;

function export:f_4_Added()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Oasis();
end;

function export:f_9_Out()
    self = self._graph;
    self:Out();
end;

function export:f_1_Out()
    self = self._graph;
    self:Out();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Oasis();
end;

function export:f_3_No()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.objectiveId = self.ObjectiveString;
    l0:SetMissionObjective();
end;

function export:f_3_Yes()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_5_No()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Marker = self.LocationMarker;
    l0:In();
end;

function export:f_5_Yes()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.String = "MissionInit::Marker is null plug a valid value in.";
    l0:In();
end;

function export:f_13_False()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:DisplayMissionTitle();
end;

function export:f_13_True()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_8_No()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Trigger = self.AcknowledgeZone;
    l0:In();
end;

function export:f_8_Yes()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.String = "MissionInit::AcknowledgeZone is null plug a valid value in.";
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_12_A_is_False()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_12_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/GetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0._graph = self;
    l0.True = self.f_13_True;
    l0.False = self.f_13_False;
    l0:In();
end;

function export:f_10_Acknowledged()
    self = self._graph;
    self:Out();
end;

function export:f_10_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.displayMissionTitle;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_12_A_is_True;
    l0.A_is_False = self.f_12_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = self.ObjectiveString;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_3_Yes;
    l0.No = self.f_3_No;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.LocationMarker;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_5_Yes;
    l0.No = self.f_5_No;
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AcknowledgeZone;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_8_Yes;
    l0.No = self.f_8_No;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
