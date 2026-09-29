-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b30/ulc_020_b30.domino.xml
-- User graph: ULC_020_B30_Objectivemarker
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
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.player = nil;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_23_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_22_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_3_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_10_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_21_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_4_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[10];
    l0.triggerId = "2076550777494580310";
    l0:Enable();
    l0 = self[23];
    l0.triggerId = "2076595196235119180";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595117411564088";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_20_Added;
    l0.Removed = DummyFunction;
    l0:Add();
    l0 = self[4];
    l0.triggerId = "2076550552275135550";
    l0:Enable();
    l0 = self[12];
    l0.triggerId = "2076550563455052866";
    l0:Enable();
    l0 = self[21];
    l0.triggerId = "2076595167623674434";
    l0:Enable();
    l0 = self[22];
    l0.triggerId = "2076595242691230298";
    l0:Enable();
    l0 = self[3];
    l0.triggerId = "2076595137049295418";
    l0:Enable();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595209824664144";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_1_Removed;
    l0:Remove();
end;

function export:f_15_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595158545103422";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_23_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595187865385544";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_2_Removed;
    l0:Remove();
end;

function export:f_22_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595236276042326";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_18_Removed;
    l0:Remove();
end;

function export:f_16_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076550777492483154";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_3_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595117411564088";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_15_Removed;
    l0:Remove();
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076550777492483154";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_6_Removed;
    l0:Remove();
end;

function export:f_1_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595236276042326";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_2_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595209824664144";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_21_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595158545103422";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_14_Removed;
    l0:Remove();
end;

function export:f_14_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076595187865385544";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_20_Added()
    self = self._graph;
    self:Out();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076550552273038394";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_16_Removed;
    l0:Remove();
end;

function export:f_6_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076550787078564954";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_18_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076550552273038394";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
