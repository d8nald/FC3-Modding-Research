-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b40/ulc_020_b40.domino.xml
-- User graph: ULC_020_B40_AI
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
    self[9] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_16_Spawned;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
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
    self[10] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_10_Spawned;
    self[11] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_11_Spawned;
    self[4] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_4_Spawned;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_5_Spawned;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_7_Spawned;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_25_Spawned;
    self[24] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_24_Spawned;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_22_Spawned;
    self[8] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_1_Spawned;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_16_Spawned()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0:CreateAILogInArmy();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.triggerId = "2076621599473156194";
    l0:Enable();
    l0 = self[2];
    l0.triggerId = "2076663176646103240";
    l0:Enable();
    l0 = self[12];
    l0.triggerId = "2077253899250576660";
    l0:Enable();
    l0 = self[18];
    l0.triggerId = "2076373038504411923";
    l0:Enable();
    self:Out();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2076704115959802057";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076372941970408185";
    l0:SpawnInRelax();
    l0 = self[1];
    l0.ReinforcementPoint = "2076663253445906644";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076372941970408185";
    l0:SpawnInRelax();
    l0 = self[22];
    l0.ReinforcementPoint = "2076704111991990469";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076372941970408185";
    l0:SpawnInRelax();
    l0 = self[4];
    l0.ReinforcementPoint = "2076619234760224762";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076372941970408185";
    l0:SpawnInRelax();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.ReinforcementPoint = "2076372848791847633";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076868827108352388";
    l0:SpawnInCautious();
    l0 = self[5];
    l0.ReinforcementPoint = "2076372862668702421";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076868827108352388";
    l0:SpawnInCautious();
end;

function export:f_18_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:f_10_Spawned()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0:CreateAILogInArmy();
end;

function export:f_11_Spawned()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0:CreateAILogInArmy();
end;

function export:f_4_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716393285298223";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_5_Spawned()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0:CreateAILogInArmy();
end;

function export:f_7_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716393285298223";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.ReinforcementPoint = "2076372743279936178";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076372941970408185";
    l0:SpawnInRelax();
    l0 = self[9];
    l0.ReinforcementPoint = "2076619249062801406";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076372941970408185";
    l0:SpawnInRelax();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076386672053854842";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_25_Spawned()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0:CreateAILogInArmy();
end;

function export:f_24_Spawned()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0:CreateAILogInArmy();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.ReinforcementPoint = "2077253948995022107";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076868827108352388";
    l0:SpawnInCautious();
    l0 = self[25];
    l0.ReinforcementPoint = "2077253952184790307";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076868827108352388";
    l0:SpawnInCautious();
    l0 = self[10];
    l0.ReinforcementPoint = "2077253951515798815";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076868827108352388";
    l0:SpawnInCautious();
    l0 = self[24];
    l0.ReinforcementPoint = "2077253953688448295";
    l0.Battlefield = "2076963741575984673";
    l0.IdleBSR = "2076963741575984673";
    l0.AlertBSR = "2076963741575984673";
    l0.CombatBSR = "2076868827108352388";
    l0:SpawnInCautious();
end;

function export:f_22_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716393285298223";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_1_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076716393285298223";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076868846028857735";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_20()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076868846028857735";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
