-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: QuestGiver
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
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.Giver.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Failed = DummyFunction;
    self.Completed = DummyFunction;
    self[1] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.Giver.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
    l0.Completed = self.f_1_Completed;
    l0.Failed = self.f_1_Failed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:In();
end;

function export:Restart()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Restart();
end;

function export:Scan()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Scan();
end;

function export:f_1_Completed()
    self = self._graph;
    self:Completed();
end;

function export:f_1_Failed()
    self = self._graph;
    self:Failed();
end;

function export:f_1_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.Giver = self.Giver;
    l0.GiverObjective = self.GiverObjective;
    l0.disableEncountersForGiver = self.disableEncountersForGiver;
    l0.TypeName = "behaviourquest";
    l0.Mission = self.Mission;
    l0.MissionObjective = self.MissionObjective;
    l0.disableEncountersForMission = self.disableEncountersForMission;
    l0.GiverName = self.GiverName;
    l0.SpawnPointStart = self.SpawnPointStart;
    l0.hasTitleScreen = self.hasTitleScreen;
    l0.hasEndScreen = self.hasEndScreen;
    l0.exclusive = true;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Failed()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
