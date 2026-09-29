-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b20/sam_015_b20.domino.xml
-- User graph: SAM_015_B02_AlreadyThereReinforcement
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
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/RemoveEntitiesOutRange.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.FuelDepotGuardLeftAlive = 0;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0.Closed = self.f_6_Closed;
    l0.Opened = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[9];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 3,
    };
    l0.Out = self.f_9_Out;
    self[17] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_17_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0.Closed = self.f_4_Closed;
    l0.Opened = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_12_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_1_MemberAdded;
    l0.MemberRemoved = self.f_1_MemberRemoved;
    self[13] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_13_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_11_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.Closed = self.f_2_Closed;
    l0.Opened = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Bomb02()
    local l0;
    l0 = self[2];
    l0:Close();
end;

function export:Bomb03()
    local l0;
    l0 = self[4];
    l0:Close();
end;

function export:Bomb04()
    local l0;
    l0 = self[6];
    l0:Close();
end;

function export:In()
    local l0;
    l0 = self[10];
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_6_Closed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(2);
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0.Range = 30;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:Remove();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Close();
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_4_Closed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(1);
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0.Range = 30;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:Remove();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ReinforcementPoint = "2077811339568361319";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2077812851810060703";
    l0.CombatBSR = "2077812851810060703";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.FuelDepotGuardLeftAlive = l0.memberCount;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_1_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.FuelDepotGuardLeftAlive = l0.memberCount;
end;

function export:f_1_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.FuelDepotGuardLeftAlive = l0.memberCount;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2077811130301951842";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2077812858558695840";
    l0.CombatBSR = "2077812858558695840";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_8_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
    l0 = self[6];
    l0:In();
    self:en_1();
    l0 = self[1];
    l0:Disable();
    l0 = self[2];
    l0:In();
end;

function export:f_11_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.ReinforcementPoint = "2077811348577726315";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2077812841886337438";
    l0.CombatBSR = "2077812841886337438";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_2_Closed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(0);
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0.Range = 30;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:Remove();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.group = "#0E950B53";
    l0.autoDisable = false;
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.FuelDepotGuardLeftAlive;
    l0.B = 4;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_8_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
