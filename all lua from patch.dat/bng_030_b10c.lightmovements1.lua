-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bng_030/bng_030_b10c/bng_030_b10c.domino.xml
-- User graph: LightMovements1
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
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_1_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:PlayFromStart();
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:PlayFromStart();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.SceneEntity = "2076388639599763504";
    l0.SequenceFile = "Sequences/fc3_main/bng_010_030_lights/bangkok_light_movement.seq";
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
