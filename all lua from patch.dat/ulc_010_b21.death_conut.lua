-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b21/ulc_010_b21.domino.xml
-- User graph: Death_Conut
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="GroupName" Type="Nomad|group" />
    <DataIn Name="DeadCount" Type="Core|int" />
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
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/SetInteger.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Continue = DummyFunction;
    self.Death = 0;
    self[2] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_2_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = DummyFunction;
    l0.StateStop = DummyFunction;
    l0.MemberInState = self.f_1_MemberInState;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 0;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:FromInteger();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    self.Death = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Death;
    l0.B = self.DeadCount;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_3_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_3_A_ge_B()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In(0);
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    self.Death = l0.Target;
    l0 = self[1];
    l0.group = self.GroupName;
    l0.autoDisable = false;
    l0:Dead();
end;

function export:f_2_Out_0()
    self = self._graph;
    self:Continue();
end;

function export:f_1_MemberInState()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = self.Death;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:Add();
end;

-- Empty out anchor definitions
function export:Continue()
    
end;
_compilerVersion = 24;
