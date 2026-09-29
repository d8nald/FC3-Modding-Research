-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: AnimalCage
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Animal" Type="Nomad|entity{}" />
    <DataIn Name="Defenders" Type="Nomad|group" />
    <DataIn Name="Attackers" Type="Nomad|group" />
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
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/CompareEntity.lua");
        cbox:RegisterBox("Domino/System/CompoundObject_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.AnimalCageDoor = nil;
    self.NavMeshRegenRegion = nil;
    self._1 = 0;
    self.stateID = 0;
    self.eInstigator = nil;
    self.eVictim = nil;
    self[2] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[1] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[10] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_10_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_9_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = self.f_5_StateChanged;
    l0.Destroyed = self.f_5_Destroyed;
    self[14] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_14_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_12_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = self.f_13_Enabled;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_13_Damaged;
    l0.Healed = self.f_13_Healed;
    l0.Critical = self.f_13_Critical;
    l0.Killed = self.f_13_Killed;
    l0.Torso = self.f_13_Torso;
    l0.Head = self.f_13_Head;
    l0.Leg = self.f_13_Leg;
    self[8] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = self.f_8_Enabled;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_8_Damaged;
    l0.Healed = self.f_8_Healed;
    l0.Critical = self.f_8_Critical;
    l0.Killed = self.f_8_Killed;
    l0.Torso = self.f_8_Torso;
    l0.Head = self.f_8_Head;
    l0.Leg = self.f_8_Leg;
    self[3] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0.Completed = self.f_3_Completed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.ObjectName = "AnimalCageDoor";
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    self.NavMeshRegenRegion = l0.ObjectEntity;
    l0 = self[5];
    l0.entityId = self.AnimalCageDoor;
    l0:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.AnimalCageDoor = l0.ObjectEntity;
    l0 = self[2];
    l0.ObjectName = "NavMeshRegenRegion";
    l0:In();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = self.Animal;
    l0.origin = nil;
    l0.value = 50;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:Set();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = self.Animal;
    l0.origin = nil;
    l0.value = 50;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:Set();
end;

function export:f_11_Equal()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.seconds = 2;
    l0:Start();
    self:en_10();
    l0 = self[10];
    l0:Stop();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.RegionEntity = self.NavMeshRegenRegion;
    l0:In();
end;

function export:f_6_Out()
    self = self._graph;
    self:Out();
end;

function export:f_5_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[5];
    self.stateID = l0.stateID;
end;

function export:f_5_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[5];
    self.stateID = l0.stateID;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "CageOpened";
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_14_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0.Entity1 = self.eInstigator;
    l0.Entity2 = self.Animal;
    l0._graph = self;
    l0.Equal = self.f_11_Equal;
    l0.NotEqual = DummyFunction;
    l0:In();
end;

function export:f_12_Killed()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Disable();
    self:en_13();
    l0 = self[13];
    l0:Disable();
end;

function export:f_13_Critical()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_13_Damaged()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_13_Enabled()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Enable();
end;

function export:f_13_Head()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_13_Healed()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_13_Killed()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
    l0 = self[14];
    l0:In(0);
end;

function export:f_13_Leg()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_13_Torso()
    local l0;
    self = self._graph;
    l0 = self[13];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_8_Critical()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_8_Damaged()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_8_Enabled()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Enable();
end;

function export:f_8_Head()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_8_Healed()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_8_Killed()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
    l0 = self[14];
    l0:In(0);
end;

function export:f_8_Leg()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_8_Torso()
    local l0;
    self = self._graph;
    l0 = self[8];
    self.eInstigator = l0.instigator;
    self.eVictim = l0.victim;
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Start();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Enable();
    self:en_13();
    l0 = self[13];
    l0:Enable();
end;

function export:f_7_Out()
    self = self._graph;
    self:Out();
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.seconds = 20;
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.pawns = self.Animal;
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.pawns = self.Attackers;
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.pawns = self.Defenders;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
