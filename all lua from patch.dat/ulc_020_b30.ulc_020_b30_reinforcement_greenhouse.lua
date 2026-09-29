-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b30/ulc_020_b30.domino.xml
-- User graph: ULC_020_B30_Reinforcement_GreenHouse
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
        cbox:RegisterBox("Domino/System/AI/AIEventLog.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_10_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_9_Spawned;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_2_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.pawns = "#D2C21848";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716349899417635";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.ReinforcementPoint = "2076386511443468898";
    l0.Battlefield = "2076386499244335708";
    l0.IdleBSR = "2076386499244335708";
    l0.AlertBSR = "2076386499244335708";
    l0.CombatBSR = "2076386499244335708";
    l0:SpawnInRelax();
    l0 = self[7];
    l0.ReinforcementPoint = "2076386517388894822";
    l0.Battlefield = "2076386499244335708";
    l0.IdleBSR = "2076386499244335708";
    l0.AlertBSR = "2076386499244335708";
    l0.CombatBSR = "2076386499244335708";
    l0:SpawnInRelax();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.triggerId = "2076386473151570522";
    l0:Enable();
    self:Out();
end;

function export:f_9_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_2_Killed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ReinforcementPoint = "2076386521308471922";
    l0.Battlefield = "2076386499244335708";
    l0.IdleBSR = "2076386499244335708";
    l0.AlertBSR = "2076386499244335708";
    l0.CombatBSR = "2076386499244335708";
    l0:SpawnInCautious();
    l0 = self[3];
    l0.ReinforcementPoint = "2076386519785939566";
    l0.Battlefield = "2076386499244335708";
    l0.IdleBSR = "2076386499244335708";
    l0.AlertBSR = "2076386499244335708";
    l0.CombatBSR = "2076386499244335708";
    l0:SpawnInCautious();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
