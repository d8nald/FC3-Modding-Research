-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_socialchallenges/f5_sc_16/f5_sc_16.domino.xml
-- User graph: F5_SC_16_ProxTag
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Reinforcement PT" Type="Nomad|entity{}" />
    <DataIn Name="Battlefield" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/ListReader.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/TaggingModifier_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.NPC4 = nil;
    self.Player = nil;
    self.Npc2 = nil;
    self.Npc = nil;
    self.NPC3 = nil;
    self[3] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0.EndOfList = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_15_Spawned;
    self[2] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_2_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[15];
    l0.ReinforcementPoint = self.Reinforcement_PT;
    l0.Battlefield = self.Battlefield;
    l0.CombatBSR = self.Battlefield;
    l0:SpawnInCautious();
end;

function export:f_3_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[3];
    l1 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l1.Entity = l0.Data;
    l1.Player = nil;
    l1._graph = self;
    l1.Out = self.f_1_Out;
    l1:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Read();
end;

function export:f_15_Spawned()
    local l0, l1;
    self = self._graph;
    l0 = self[15];
    l1 = self[3];
    l1.Input = l0.mercsSpawned;
    l0 = self[2];
    l0.seconds = 1;
    l0:Start();
    self:Out();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Read();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
