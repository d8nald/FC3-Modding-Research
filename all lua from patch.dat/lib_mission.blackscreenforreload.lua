-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: BlackScreenForReload
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="IsReloaded" Type="Core|bool" />
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Acknowledged = self.f_2_Acknowledged;
    l0.NotAcknowledged = self.f_2_NotAcknowledged;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Acknowledged = self.f_1_Acknowledged;
    l0.NotAcknowledged = self.f_1_NotAcknowledged;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Disable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = self.IsReloaded;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_3_Yes;
    l0.No = self.f_3_No;
    l0:Boolean();
end;

function export:Enable()
    local l0;
    l0 = self[2];
    l0:IsAcknowledged();
end;

function export:f_10_Out()
    self = self._graph;
    self:Out();
end;

function export:f_6_A_is_False()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_6_A_is_True()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Disable();
end;

function export:f_5_Out()
    self = self._graph;
    self:Out();
end;

function export:f_2_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeoutfx";
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:Enable();
end;

function export:f_2_NotAcknowledged()
    self = self._graph;
    self:Out();
end;

function export:f_7_Out()
    self = self._graph;
    self:Out();
end;

function export:f_1_Acknowledged()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Disable();
end;

function export:f_1_NotAcknowledged()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_3_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_6_A_is_True;
    l0.A_is_False = self.f_6_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_3_Yes()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:IsAcknowledged();
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeoutfx";
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

function export:en_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
