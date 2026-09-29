-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.domino.xml
-- User graph: F5_SC_16_Waves
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="NPC Group" Type="Nomad|group" />
    <DataIn Name="MinGroupNumber" Type="Core|int" />
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
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_2_MemberRemoved;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_3_A_ge_B()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Reset();
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_3_A_lt_B()
    self = self._graph;
    self:Out();
end;

function export:f_1_Out_0()
    local l0, l1;
    self = self._graph;
    l0 = self[2];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = self.MinGroupNumber;
    l1._graph = self;
    l1.A_lt_B = self.f_3_A_lt_B;
    l1.A_le_B = DummyFunction;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = self.f_3_A_ge_B;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
end;

function export:f_2_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In(0);
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.group = self.NPC_Group;
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
