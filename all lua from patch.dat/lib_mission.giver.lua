-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: Giver
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="hasTitleScreen" Type="Core|bool" />
    <DataIn Name="MissionObjective" Type="Nomad|oasis" />
    <DataIn Name="GiverName" Type="Core|string" />
    <DataIn Name="SpawnPointStart" Type="Nomad|entity{}" />
    <DataIn Name="Giver" Type="Core|boxclass" />
    <DataIn Name="disableEncountersForMission" Type="Core|bool" />
    <DataIn Name="disableEncountersForGiver" Type="Core|bool" />
    <DataIn Name="Mission" Type="Core|boxclass" />
    <DataIn Name="hasEndScreen" Type="Core|bool" />
    <DataIn Name="GiverObjective" Type="Nomad|oasis" />
    <DataIn Name="exclusive" Type="Core|bool" />
    <DataIn Name="TypeName" Type="Core|string" />
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
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/Mission_v7.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGiverAssoc.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionReset.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Failed = DummyFunction;
    self.Completed = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Mission_Flow/Mission_v7.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
    l0.Failed = self.f_7_Failed;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/Mission_v7.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    l0.Failed = self.f_4_Failed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_7();
    l0 = self[7];
    l0:Start();
end;

function export:Restart()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionReset.lua")];
    l0.script = self.Giver;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:Reset();
end;

function export:Scan()
    local l0;
    self:en_7();
    l0 = self[7];
    l0:Initialize();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionReset.lua")];
    l0.script = self.Mission;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:Reset();
end;

function export:f_2_No()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Initialize();
end;

function export:f_2_Yes()
    self = self._graph;
    self:Initialized();
end;

function export:f_1_Out()
    self = self._graph;
    self:Initialized();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Start();
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = self.Mission;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_6_Yes;
    l0.No = self.f_6_No;
    l0:Script();
end;

function export:f_7_Failed()
    self = self._graph;
    self:Failed();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = self.Mission;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_2_Yes;
    l0.No = self.f_2_No;
    l0:Script();
end;

function export:f_6_No()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Start();
end;

function export:f_6_Yes()
    self = self._graph;
    self:Completed();
end;

function export:f_4_Completed()
    self = self._graph;
    self:Completed();
end;

function export:f_4_Failed()
    self = self._graph;
    self:Failed();
end;

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGiverAssoc.lua")];
    l0.giverScript = self.Giver;
    l0.missionScript = self.Mission;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.missionScript = self.Giver;
    l0.objectiveId = self.GiverObjective;
    l0.typeName = self.TypeName;
    l0.isGiver = true;
    l0.GiverName = self.GiverName;
    l0.disableEncounters = self.disableEncountersForGiver;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.missionScript = self.Mission;
    l0.objectiveId = self.MissionObjective;
    l0.typeName = self.TypeName;
    l0.GiverName = self.GiverName;
    l0.exclusive = self.exclusive;
    l0.spawnPoint = self.SpawnPointStart;
    l0.disableEncounters = self.disableEncountersForMission;
    l0.hasTitleScreen = self.hasTitleScreen;
    l0.hasEndScreen = self.hasEndScreen;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Failed()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
