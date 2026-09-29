-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: isJapanVersion
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
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/GetDemoType.lua");
        cbox:RegisterBox("Domino/System/IsNudityAllowed.lua");
    end;
end;

function export:Init(cbox)
    self.Yes = DummyFunction;
    self.No = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsNudityAllowed.lua")];
    l0._graph = self;
    l0.Yes = self.f_1_Yes;
    l0.No = self.f_1_No;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    self._sld_type_3 = l0.type;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self._sld_type_3;
    l0.B = "JapanVersion";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_2_A_eq_B;
    l0.A_neq_B = self.f_2_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_2_A_eq_B()
    self = self._graph;
    self:Yes();
end;

function export:f_2_A_neq_B()
    self = self._graph;
    self:No();
end;

function export:f_1_No()
    self = self._graph;
    self:Yes();
end;

function export:f_1_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:In();
end;

-- Empty out anchor definitions
function export:Yes()
    
end;
function export:No()
    
end;
_compilerVersion = 24;
