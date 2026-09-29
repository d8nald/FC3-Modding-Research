-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_170/jas_170_b05/jas_170_b05.domino.xml
-- User graph: JAS_170_Wingsuit_Woohoo
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00190b14.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00190b14]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018eac5.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018eac5]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018eac0]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018eac0.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.ePlayer = nil;
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_4_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_2_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_1_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = self.f_1_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0018eac5";
    l0:ForcePlay_Priority();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[5];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_4_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0018eac0";
    l0:ForcePlay_Priority();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00190b14";
    l0:ForcePlay_Priority();
end;

function export:f_1_Out()
    self = self._graph;
    self:Out();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
