-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b08/ulc_020_b08.domino.xml
-- User graph: ULC_020_B08_Encounter
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
        cbox:RegisterBox("Domino/System/StimsEmitter.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
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
    self[8] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_8_Spawned;
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_7_Enter;
    l0.Leave = self.f_7_Leave;
    l0.Use = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_11_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076661488759649927";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
    l0 = self[3];
    l0.ReinforcementPoint = "2076465569843921486";
    l0.Battlefield = "2076661472561247876";
    l0.IdleBSR = "2076661472561247876";
    l0.AlertBSR = "2076661472561247876";
    l0:SpawnInRelax();
    l0 = self[2];
    l0.ReinforcementPoint = "2076010321855649923";
    l0.Battlefield = "2076661472561247876";
    l0.IdleBSR = "2076661472561247876";
    l0.AlertBSR = "2076661472561247876";
    l0:SpawnInRelax();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2078414678211455118";
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:Disable();
end;

function export:f_1_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076661488759649927";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:Out();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.triggerId = "2076092495906783017";
    l0:Enable();
    l0 = self[6];
    l0.triggerId = "2076010362162911376";
    l0:Enable();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2078414686203701394";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_8_Spawned()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.ReinforcementPoint = "2076675530041593911";
    l0.Battlefield = "2076010333777959045";
    l0.IdleBSR = "2076010333777959045";
    l0.AlertBSR = "2076010333777959045";
    l0.CombatBSR = "2076010333777959045";
    l0:SpawnInRelax();
end;

function export:f_7_Enter()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.ReinforcementPoint = "2076675530039496755";
    l0.Battlefield = "2076010333777959045";
    l0.IdleBSR = "2076010333777959045";
    l0.AlertBSR = "2076010333777959045";
    l0.CombatBSR = "2076010333777959045";
    l0:SpawnInRelax();
end;

function export:f_7_Leave()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.triggerId = "2077943921561843695";
    l0:Disable();
end;

function export:f_11_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2078414509036295074";
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:Disable();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
