-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: Quest
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="MissionObjective" Type="Nomad|oasis" />
    <DataIn Name="disableEncountersForMission" Type="Core|bool" />
    <DataIn Name="hasEndScreen" Type="Core|bool" />
    <DataIn Name="hasTitleScreen" Type="Core|bool" />
    <DataIn Name="Mission" Type="Core|boxclass" />
    <DataIn Name="typeName" Type="Core|string" />
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
        cbox:RegisterBox("Domino/System/Mission_Flow/Mission_v7.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self.Failed = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/Mission_v7.lua");
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
    l0:Start();
end;

function export:Restart()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Stop();
end;

function export:Scan()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Initialize();
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
    l0.missionScript = self.Mission;
    l0.objectiveId = self.MissionObjective;
    l0.typeName = self.typeName;
    l0.exclusive = true;
    l0.disableEncounters = self.disableEncountersForMission;
    l0.hasTitleScreen = self.hasTitleScreen;
    l0.hasEndScreen = self.hasEndScreen;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
function export:Failed()
    
end;
_compilerVersion = 24;
