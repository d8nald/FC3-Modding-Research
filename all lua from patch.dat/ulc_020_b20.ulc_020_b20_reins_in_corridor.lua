-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b20/ulc_020_b20.domino.xml
-- User graph: ULC_020_B20_Reins_in_corridor
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
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_13_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_20_Spawned;
    self[23] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_23_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_18_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_24_Spawned;
    self[14] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_14_Spawned;
    self[22] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_22_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_15_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_21_Spawned;
    self[17] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_17_Spawned;
    self[11] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_11_Spawned;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_5_Spawned;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_13_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_20_Spawned()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0:CreateAILogInArmy();
end;

function export:f_23_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:In();
end;

function export:f_18_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:In();
end;

function export:f_24_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716231708139718";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_14_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716122522001486";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_22_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.ReinforcementPoint = "2076562945384400926";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076716524160159795";
    l0:SpawnInCautious();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_15_Enter()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.ReinforcementPoint = "2076562973352020020";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076606747585300031";
    l0:SpawnInCautious();
end;

function export:f_21_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716139798339666";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.ReinforcementPoint = "2076607051731078172";
    l0.Battlefield = "2076935087934417692";
    l0.IdleBSR = "2076935087934417692";
    l0.AlertBSR = "2076935087934417692";
    l0.CombatBSR = "2076935087934417692";
    l0:SpawnInCautious();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.triggerId = "2075872373017422919";
    l0:Enable();
    l0 = self[15];
    l0.triggerId = "2076606858652567148";
    l0:Enable();
    l0 = self[18];
    l0.triggerId = "2076606870440658544";
    l0:Enable();
    l0 = self[23];
    l0.triggerId = "2076606889642182260";
    l0:Enable();
    l0 = self[22];
    l0.triggerId = "2076606968925022526";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
    l0 = self[13];
    l0.triggerId = "2076716649704075400";
    l0:Enable();
    self:Out();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.ReinforcementPoint = "2076606978058119490";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076606747585300031";
    l0:SpawnInRelax();
    l0 = self[20];
    l0.ReinforcementPoint = "2076606980637616454";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076606747585300031";
    l0:SpawnInRelax();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ReinforcementPoint = "2076188384870538373";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076740052248961081";
    l0:SpawnInRelax();
end;

function export:f_17_Spawned()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0:CreateAILogInArmy();
end;

function export:f_11_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716122522001486";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_5_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716067327053874";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.ReinforcementPoint = "2076606775305455172";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076606747585300031";
    l0:SpawnInCautious();
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716139798339666";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
