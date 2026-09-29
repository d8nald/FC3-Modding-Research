-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: Optional
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="hasTitleScreen" Type="Core|bool" />
    <DataIn Name="disableEncountersForMission" Type="Core|bool" />
    <DataIn Name="MissionObjective" Type="Nomad|oasis" />
    <DataIn Name="Mission" Type="Core|boxclass" />
    <DataIn Name="hasEndScreen" Type="Core|bool" />
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
    self.Failed = DummyFunction;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/Mission_v7.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = self.f_3_Failed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_3();
    l0 = self[3];
    l0:Start();
end;

function export:Restart()
    local l0;
    self:en_3();
    l0 = self[3];
    l0:Stop();
end;

function export:Scan()
    local l0;
    self:en_3();
    l0 = self[3];
    l0:Initialize();
end;

function export:f_3_Completed()
    self = self._graph;
    self:Completed();
end;

function export:f_3_Failed()
    self = self._graph;
    self:Failed();
end;

function export:f_3_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.missionScript = self.Mission;
    l0.objectiveId = self.MissionObjective;
    l0.typeName = "optional";
    l0.disableEncounters = self.disableEncountersForMission;
    l0.hasTitleScreen = self.hasTitleScreen;
    l0.hasEndScreen = self.hasEndScreen;
end;

-- Empty out anchor definitions
function export:Failed()
    
end;
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
