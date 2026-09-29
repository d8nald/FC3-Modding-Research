-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30_OBJ_EliminatePrivateers
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
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/IsPawnAlive.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_11_Loaded;
    l0.Unloaded = self.f_11_Unloaded;
    self[4] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[4];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_4_Out;
    self[1] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_1_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_2_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_10_Loaded;
    l0.Unloaded = self.f_10_Unloaded;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[5];
    l0.objectiveId = {
        section = "Objectives",
        item = "CIT_020_OBJ_G",
        id = "126426",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_6_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076182002372975593";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_7_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_7_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:In();
end;

function export:f_11_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0.Pawn = "2076180475075910017";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_14_True;
    l0.False = self.f_14_False;
    l0:In();
end;

function export:f_11_Unloaded()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_4_Out()
    self = self._graph;
    self:Completed();
end;

function export:f_8_Removed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Condition(0);
end;

function export:f_1_Killed()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_2_Killed()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_10_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0.Pawn = "2076180475671501193";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_13_True;
    l0.False = self.f_13_False;
    l0:In();
end;

function export:f_10_Unloaded()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_13_False()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_13_True()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.pawns = "2076180475671501193";
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076181999231441893";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_6_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.entityId = "2076180475671501193";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[11];
    l0.entityId = "2076180475075910017";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_9_Removed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Condition(1);
end;

function export:f_14_False()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_14_True()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.pawns = "2076180475075910017";
    l0:Enable();
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076182002372975593";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_8_Removed;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076181999231441893";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_9_Removed;
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
