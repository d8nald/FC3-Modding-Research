-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b08/ulc_020_b08.domino.xml
-- User graph: ULC_020_B08_CheckDoor
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
        cbox:RegisterBox("Domino/System/Door.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.OnPush = self.f_1_OnPush;
    l0.OnPull = self.f_1_OnPull;
    l0.OnClosed = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.OnPush = DummyFunction;
    l0.OnPull = self.f_2_OnPull;
    l0.OnClosed = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_6_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
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

function export:f_1_OnPull()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In(0);
end;

function export:f_1_OnPush()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In(0);
end;

function export:f_2_OnPull()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076836648080904249";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_6_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076933324865021366";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Door = "2076672337138172171";
    l0:StartListening();
    self:Out();
    l0 = self[1];
    l0.Door = "2076933324862924212";
    l0:StartListening();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
