-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b10/ulc_020_b10.domino.xml
-- User graph: ULC_020_B10_DeathZone
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
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_15_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_9_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_5_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_13_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:In();
end;

function export:f_15_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:Damage();
end;

function export:f_9_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:Damage();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:Damage();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    self:Out();
    l0 = self[5];
    l0.triggerId = "2076895890896851570";
    l0:Enable();
    l0 = self[9];
    l0.triggerId = "2076895947230548598";
    l0:Enable();
    l0 = self[2];
    l0.triggerId = "2076866611112841405";
    l0:Enable();
    l0 = self[13];
    l0.triggerId = "2076895953601696378";
    l0:Enable();
    l0 = self[15];
    l0.triggerId = "2076895961105306238";
    l0:Enable();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:Damage();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_13_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 100000;
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:Damage();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
