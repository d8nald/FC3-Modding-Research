-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b21/ulc_010_b21.domino.xml
-- User graph: Enemy_Group_02
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
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Death_Conut.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetProgressionMode.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_17_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_8_Spawned;
    self[5] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_5_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_2_Spawned;
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
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_B21/ULC_010_B21.Death_Conut.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Continue = self.f_4_Continue;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_14_Spawned;
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

function export:f_17_Enter()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2076372044957667836";
    l0.Battlefield = "2078517683065726510";
    l0.IdleBSR = "2078517673410438701";
    l0.AlertBSR = "2078517673410438701";
    l0.CombatBSR = "2078517683065726510";
    l0:SpawnInCautious();
end;

function export:f_8_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076410016161603991";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.ReinforcementPoint = "2076372083268440580";
    l0.Battlefield = "2076672840509179765";
    l0.IdleBSR = "2076672840509179765";
    l0.AlertBSR = "2076672840509179765";
    l0.CombatBSR = "2076672840509179765";
    l0:SpawnInCautious();
end;

function export:f_2_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076410130479456678";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_10_Spawned()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.GroupName = "#2F35B708";
    l0.DeadCount = 2;
    l0:In();
end;

function export:f_11_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076895792068582834";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.triggerId = "2076369287299211644";
    l0:Enable();
    l0 = self[17];
    l0.triggerId = "2078109750792311182";
    l0:Enable();
    self:Out();
    l0 = self[1];
    l0.triggerId = "2076372055325987328";
    l0:Enable();
    l0 = self[5];
    l0.triggerId = "2076372102293803528";
    l0:Enable();
end;

function export:f_4_Continue()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2076410087615766942";
    l0.Battlefield = "2078517683065726510";
    l0.IdleBSR = "2076314294332433332";
    l0.AlertBSR = "2076314294332433332";
    l0.CombatBSR = "2078517683065726510";
    l0:SpawnInRelax();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.ReinforcementPoint = "2076313277041746643";
    l0.Battlefield = "2078517683065726510";
    l0.IdleBSR = "2076314294332433332";
    l0.AlertBSR = "2076314294332433332";
    l0.CombatBSR = "2078517683065726510";
    l0:SpawnInCautious();
    l0 = self[14];
    l0.ReinforcementPoint = "2076619936324652780";
    l0.Battlefield = "2078517761664886329";
    l0.IdleBSR = "2078517761664886329";
    l0.AlertBSR = "2078517761664886329";
    l0.CombatBSR = "2078517761664886329";
    l0:SpawnInCautious();
    l0 = self[11];
    l0.ReinforcementPoint = "2076369317647098240";
    l0.Battlefield = "2078517683065726510";
    l0.IdleBSR = "2078517723037443631";
    l0.AlertBSR = "2078517723037443631";
    l0.CombatBSR = "2078517683065726510";
    l0:SpawnInCautious();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.ReinforcementPoint = "2076604220949150559";
    l0.Battlefield = "2078517683065726510";
    l0.IdleBSR = "2078517476970210852";
    l0.AlertBSR = "2078517476970210852";
    l0.CombatBSR = "2078517683065726510";
    l0:SpawnInCautious();
end;

function export:f_14_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#AE2848CB";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ShootAlways();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
