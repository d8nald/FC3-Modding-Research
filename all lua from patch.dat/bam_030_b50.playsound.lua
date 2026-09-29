-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b50/bam_030_b50.domino.xml
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
        cbox:LoadResource([[sndres0x00199b3d]], "CSoundResource");
        cbox:LoadResource([[sndres0x00183816]], "CSoundResource");
        cbox:LoadResource([[sndres0x00199c79]], "CSoundResource");
        cbox:LoadResource([[sndres0x00199b3a]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[2] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_8_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.Finished = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = self.f_6_Started;
    l0.Finished = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:FirstWaterLevelUp()
    local l0;
    l0 = self[4];
    l0.Entity = "2075887906622303725";
    l0.SoundId = "0x00199b3d";
    l0.SoundType = 1;
    l0:Play();
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.Entity = "2075887918636887535";
    l0.SoundId = "0x00199b3a";
    l0.SoundType = 1;
    l0:Play();
    l0 = self[8];
    l0.triggerId = "2077085773640854920";
    l0:Enable();
end;

function export:SecondWaterLevelUp()
    local l0;
    l0 = self[6];
    l0.Entity = "2075887918636887535";
    l0.SoundId = "0x00199b3d";
    l0.SoundType = 1;
    l0:Play();
end;

function export:f_8_Enter()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Entity = "2077085624870978199";
    l0.SoundId = "0x00199c79";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Entity = "2075887906622303725";
    l0.SoundId = "0x00183816";
    l0.SoundType = 1;
    l0:Play();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Entity = "2075887918636887535";
    l0.SoundId = "0x00183816";
    l0.SoundType = 1;
    l0:Play();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Entity = "2075887906622303725";
    l0.SoundId = "0x00199b3a";
    l0.SoundType = 1;
    l0:Play();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
