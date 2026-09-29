-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: SwitchPawnPlayerBoxForQuickLaunch
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="str" Type="Core|string" />
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
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/IsMissionQuicklaunched.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Player/SwitchPawnPlayer.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Acknowledged = self.f_5_Acknowledged;
    l0.NotAcknowledged = self.f_5_NotAcknowledged;
    self[1] = cbox:CreateBox("Domino/System/Player/SwitchPawnPlayer.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[3] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:FromString()
    local l0;
    l0 = self[5];
    l0:IsAcknowledged();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.str = self.str;
    l0:FromString();
    l0 = self[3];
    l0:Close();
end;

function export:f_4_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsMissionQuicklaunched.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_4_Out_1()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
end;

function export:f_5_Acknowledged()
    self = self._graph;
    self:Out();
end;

function export:f_5_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_4_Out_0;
    l0.Out[1] = self.f_4_Out_1;
    l0:In();
end;

function export:f_1_Out()
    self = self._graph;
    self:Out();
end;

function export:f_3_Out()
    self = self._graph;
    self:Out();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
