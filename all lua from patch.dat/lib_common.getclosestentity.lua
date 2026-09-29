-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: GetClosestEntity
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="EntityToCheck" Type="Nomad|entity{}" />
    <DataIn Name="EntitytList" Type="Core|list" />
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
        cbox:RegisterBox("Domino/System/CompareFloats.lua");
        cbox:RegisterBox("Domino/System/GetDistance.lua");
        cbox:RegisterBox("Domino/System/ListReader.lua");
        cbox:RegisterBox("Domino/System/SetEntity.lua");
        cbox:RegisterBox("Domino/System/SetFloat.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ListIsEmpty = DummyFunction;
    self.Out = DummyFunction;
    self.fDistance = 0;
    self.lowetDistance = 0;
    self.currentEntity = nil;
    self.objectToCompare = nil;
    self[1] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.EndOfList = self.f_1_EndOfList;
    self[2] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.EndOfList = self.f_2_EndOfList;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[2];
    l0.Input = self.EntitytList;
    l0:ResetRead();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    self.ClosestEntity = l0.Target;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_EndOfList()
    self = self._graph;
    self:Out();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.currentEntity = l0.Data;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0.Entity1 = self.EntityToCheck;
    l0.Entity2 = self.currentEntity;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:Distance2D();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistance = l0.Distance;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = self.fDistance;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:FromFloat();
end;

function export:f_6_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = self.fDistance;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:FromFloat();
end;

function export:f_6_A_lt_B()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    self.ClosestEntity = l0.Target;
    self:en_1();
    l0 = self[1];
    l0:ResetRead();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.lowetDistance = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    l0.Entity = self.objectToCompare;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:FromEntity();
end;

function export:f_2_EndOfList()
    self = self._graph;
    self:ListIsEmpty();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    self.objectToCompare = l0.Data;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0.Entity1 = self.EntityToCheck;
    l0.Entity2 = self.objectToCompare;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:Distance3D();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Read();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistance = l0.Distance;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.lowetDistance;
    l0.B = self.fDistance;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = self.f_6_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_6_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.lowetDistance = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    l0.Entity = self.currentEntity;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:FromEntity();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.Input = self.EntitytList;
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
end;

-- Empty out anchor definitions
function export:ListIsEmpty()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
