-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: RestoreAlarmState
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="AlarmsAreActivated" Type="Core|bool" />
    <DataIn Name="AlarmsAreDisabled" Type="Core|bool" />
    <DataIn Name="AlarmGroup" Type="Nomad|group" />
    <DataIn Name="DestroyedAlarms" Type="Core|list" />
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
        cbox:RegisterBox("Domino/System/AI/AlarmModifier.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua");
        cbox:RegisterBox("Domino/System/ListCompare.lua");
        cbox:RegisterBox("Domino/System/ListReader.lua");
        cbox:RegisterBox("Domino/System/Coop/List/ListSizeTest.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Disabled = DummyFunction;
    self.Activated = DummyFunction;
    self.AlarmList = {
    };
    self.Others = {
    };
    self[3] = cbox:CreateBox("Domino/System/ListCompare.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Equal = DummyFunction;
    l0.EqualSorted = DummyFunction;
    l0.Differ = self.f_3_Differ;
    l0.A_is_bigger = self.f_3_A_is_bigger;
    l0.B_is_bigger = self.f_3_B_is_bigger;
    self[16] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0.EndOfList = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0.EndOfList = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.EndOfList = self.f_5_EndOfList;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListSizeTest.lua")];
    l0.Input = self.DestroyedAlarms;
    l0.Size = 0;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Equal = self.f_2_Equal;
    l0.NotEqual = self.f_2_NotEqual;
    l0.LessThen = DummyFunction;
    l0.GreaterThen = DummyFunction;
    l0:In();
    self:Out();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:Read();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Read();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Read();
end;

function export:f_3_A_is_bigger()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.Others = l0.Diff;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.AlarmsAreActivated;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_14_A_is_True;
    l0.A_is_False = self.f_14_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_3_B_is_bigger()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.Others = l0.Diff;
end;

function export:f_3_Differ()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.Others = l0.Diff;
end;

function export:f_4_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.AlarmsAreDisabled;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_11_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_4_A_is_True()
    local l0;
    self = self._graph;
    self:Activated();
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0:Activate();
end;

function export:f_14_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.AlarmsAreDisabled;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_10_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_14_A_is_True()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:Read();
    self:Activated();
end;

function export:f_16_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[16];
    l1 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l1.AlarmGroup = l0.Data;
    l1._graph = self;
    l1.Out = self.f_18_Out;
    l1:Activate();
end;

function export:f_21_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[21];
    l1 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l1.AlarmGroup = l0.Data;
    l1._graph = self;
    l1.Out = self.f_22_Out;
    l1:Disable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    self.AlarmList = l0.Pawns;
    l0 = self[3];
    l0.A = self.AlarmList;
    l0.B = self.DestroyedAlarms;
    l0:Compare();
end;

function export:f_2_Equal()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.AlarmsAreActivated;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_4_A_is_True;
    l0.A_is_False = self.f_4_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_2_NotEqual()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Read();
end;

function export:f_5_EndOfList()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0.Group = self.AlarmGroup;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:f_5_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[5];
    l1 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l1.AlarmGroup = l0.Data;
    l1._graph = self;
    l1.Out = self.f_12_Out;
    l1:Destroy();
end;

function export:f_11_A_is_True()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0:Disable();
    self:Disabled();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:In();
end;

function export:f_10_A_is_True()
    local l0;
    self = self._graph;
    self:Disabled();
    self:en_21();
    l0 = self[21];
    l0:Read();
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.Input = self.Others;
end;

function export:en_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = self.AlarmGroup;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_21()
    local l0;
    l0 = self[21];
    l0.Input = self.Others;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Input = self.DestroyedAlarms;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Disabled()
    
end;
function export:Activated()
    
end;
_compilerVersion = 24;
