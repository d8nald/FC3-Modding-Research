-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: MissionBlock
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="MissionBlockId" Type="Nomad|missionblock" />
    <DataIn Name="MissionScript" Type="Core|boxclass" />
    <DataIn Name="DBGSpawn" Type="Nomad|entity{}" />
    <DataIn Name="EndSpawn" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self.Failed = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
    l0.Enabled = DummyFunction;
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
    l0:Activate();
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
    l0.missionBlockId = self.MissionBlockId;
    l0.missionScript = self.MissionScript;
    l0.spawnPoint = self.DBGSpawn;
    l0.endSpawnPoint = self.EndSpawn;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
function export:Failed()
    
end;
_compilerVersion = 24;
