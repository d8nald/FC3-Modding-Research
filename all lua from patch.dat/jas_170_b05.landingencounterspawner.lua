-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_170/jas_170_b05/jas_170_b05.domino.xml
-- User graph: LandingEncounterSpawner
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
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.ZodiacSpawned = {
    };
    self[6] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_6_Spawned;
    self[1] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_7_Spawned;
    self[3] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
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
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.ReinforcementPoint = "2076870612048946850";
    l0.Battlefield = "2076870656953165476";
    l0:SpawnInRelax();
end;

function export:f_6_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "#9353EFB2";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = self.f_8_Started;
    l0:StartPhysics();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2076870854056093353";
    l0.Battlefield = "2076870656953165476";
    l0:SpawnInRelax();
end;

function export:f_7_Spawned()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.ReinforcementPoint = "2077842181571227882";
    l0.Battlefield = "2076870656953165476";
    l0:SpawnInRelax();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.ReinforcementPoint = "2077842189748023534";
    l0.Battlefield = "2076870656953165476";
    l0:SpawnInRelax();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.ReinforcementPoint = "2077852603357616219";
    l0.Battlefield = "2076870656953165476";
    l0:SpawnInRelax();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ReinforcementPoint = "2076870889063851702";
    l0.Battlefield = "2076870656953165476";
    l0:SpawnInRelax();
end;

function export:f_8_Started()
    self = self._graph;
    self:Out();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.ReinforcementPoint = "2076870865873544877";
    l0.Battlefield = "2076870656953165476";
    l0:SpawnInRelax();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
