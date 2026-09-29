-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b30/ulc_020_b30.domino.xml
-- User graph: ULC_020_B30_Reins_in_Building
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_2_Spawned;
    self[27] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[27];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_27_Out;
    self[9] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_16_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_29_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_5_Spawned;
    self[4] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_4_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_18_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[22];
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
    self[32] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_12_Spawned;
    self[13] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_13_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_8_Spawned;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_2_Spawned()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2075722244614570847";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2075625311929768735";
    l0:SpawnInCautious();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ReinforcementPoint = "2076188413310016649";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2075678393988315670";
    l0:SpawnInCautious();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.ReinforcementPoint = "2076579953247267587";
    l0.Battlefield = "2076579676345608954";
    l0.IdleBSR = "2076579676345608954";
    l0.AlertBSR = "2076579676345608954";
    l0.CombatBSR = "2076579676345608954";
    l0:SpawnInRelax();
    l0 = self[8];
    l0.ReinforcementPoint = "2076579954807548679";
    l0.Battlefield = "2076579676345608954";
    l0.IdleBSR = "2076579676345608954";
    l0.AlertBSR = "2076579676345608954";
    l0.CombatBSR = "2076579676345608954";
    l0:SpawnInRelax();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:In();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.triggerId = "2075830897212397079";
    l0:Enable();
    self:Out();
end;

function export:f_16_Killed()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:Condition(1);
end;

function export:f_29_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    self:Out();
    l0 = self[6];
    l0.triggerId = "2075872373017422919";
    l0:Enable();
    l0 = self[13];
    l0.triggerId = "2075678545689999913";
    l0:Enable();
end;

function export:f_5_Spawned()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.triggerId = "2076618231614803960";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716372122937383";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_4_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.ReinforcementPoint = "2076260795963940312";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2075625311929768735";
    l0:SpawnInCautious();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.ReinforcementPoint = "2076962985724624309";
    l0.Battlefield = "2076369620050121030";
    l0.IdleBSR = "2076369620050121030";
    l0.AlertBSR = "2076369620050121030";
    l0.CombatBSR = "2076369620050121030";
    l0:SpawnInCautious();
    l0 = self[32];
    l0.ReinforcementPoint = "2076369353485330805";
    l0.Battlefield = "2076369620050121030";
    l0.IdleBSR = "2076369620050121030";
    l0.AlertBSR = "2076369620050121030";
    l0.CombatBSR = "2076369620050121030";
    l0:SpawnInCautious();
end;

function export:f_18_Killed()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:Condition(0);
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716383271397419";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
    l0 = self[16];
    l0.pawns = "#308833E7";
    l0:Enable();
    l0 = self[18];
    l0.pawns = "#A981625D";
    l0:Enable();
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2075678556303686193";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2075636917484917449";
    l0:SpawnInCautious();
    l0 = self[12];
    l0.ReinforcementPoint = "2075678555242527277";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2075636917484917449";
    l0:SpawnInCautious();
end;

function export:f_12_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:f_13_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:In();
end;

function export:f_8_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076758714437607791";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
