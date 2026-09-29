-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_160/jas_160_b10e/jas_160_b10e.domino.xml
-- User graph: JAS_160_B10E_Music
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001B857E]], "CSoundResource");
        cbox:LoadResource([[sndres0x001B857D]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In_Complete()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_JAS160_Escape_Grave_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_1_Stopped;
    l0:Stop();
end;

function export:In_Escape()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_JAS160_Escape_Grave_LP";
    l0._graph = self;
    l0.Started = self.f_3_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:In_LeaveMissionZone()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_JAS160_Escape_Grave_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_2_Stopped;
    l0:Stop();
end;

function export:f_3_Started()
    local l0;
    self = self._graph;
    self:Out();
    l0 = self[4];
    l0.Entity = "2078742372671310496";
    l0.SoundId = "0x001B857D";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_2_Stopped()
    local l0;
    self = self._graph;
    self:Out();
    self:en_5();
    l0 = self[5];
    l0:Play();
end;

function export:f_1_Stopped()
    local l0;
    self = self._graph;
    self:Out();
    self:en_5();
    l0 = self[5];
    l0:Play();
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Entity = "2078742372671310496";
    l0.SoundId = "0x001B857E";
    l0.SoundType = 12;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
