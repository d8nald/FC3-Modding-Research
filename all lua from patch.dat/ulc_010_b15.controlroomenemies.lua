-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b15/ulc_010_b15.domino.xml
-- User graph: ControlRoomEnemies
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
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
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
    l0.Spawned = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:Out();
    l0 = self[5];
    l0.triggerId = "2076521915813466051";
    l0:Enable();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.ReinforcementPoint = "2076604169499720535";
    l0.Battlefield = "2078200792040379837";
    l0.IdleBSR = "2078200792040379837";
    l0.AlertBSR = "2078200792040379837";
    l0.CombatBSR = "2078200792040379837";
    l0:SpawnInRelax();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.ReinforcementPoint = "2078492860014929222";
    l0.Battlefield = "2078200792040379837";
    l0.IdleBSR = "2078200792040379837";
    l0.AlertBSR = "2078200792040379837";
    l0.CombatBSR = "2078200792040379837";
    l0:SpawnInRelax();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2078493110205162853";
    l0.Battlefield = "2078200792040379837";
    l0.IdleBSR = "2078200792040379837";
    l0.AlertBSR = "2078200792040379837";
    l0.CombatBSR = "2078200792040379837";
    l0:SpawnInRelax();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
