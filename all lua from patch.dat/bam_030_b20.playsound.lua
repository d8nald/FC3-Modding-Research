-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b20/bam_030_b20.domino.xml
-- User graph: PlaySound
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
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001837ff]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[2] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_3_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_4_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0.triggerId = "2075927699238518931";
    l0:Enable();
    l0 = self[4];
    l0.triggerId = "2078011716425238312";
    l0:Enable();
end;

function export:f_3_Enter()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Entity = "2075927750148980893";
    l0.SoundId = "0x001837ff";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Entity = "2078011728657925930";
    l0.SoundId = "0x001837ff";
    l0.SoundType = 11;
    l0:Play();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
