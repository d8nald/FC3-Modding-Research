-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b50/bam_030_b50.domino.xml
-- User graph: PlayDialog
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
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0019501b]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b90e6.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00195066]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018b2ff.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b90e6]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f0be.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00195048]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00195066.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b9167]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0019501b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018b2ff]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b9167.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00195048.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018f0be]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Player = nil;
    self[8] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_5_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_2_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_10_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_13_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:DestoryPole1()
    
end;

function export:DestoryPole2()
    local l0;
    l0 = self[14];
    l0.Group = self.Player;
    l0.TargetEntity = self.Player;
    l0.SoundId = "0x00195066";
    l0:ForcePlay_Priority();
end;

function export:FirstDoorOpened()
    local l0;
    l0 = self[10];
    l0:Start();
end;

function export:FirstWaterLevelUp()
    local l0;
    l0 = self[8];
    l0.Group = self.Player;
    l0.TargetEntity = self.Player;
    l0.SoundId = "0x001b90e6";
    l0:ForcePlay_Priority();
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:SecondWaterLevelUp()
    local l0;
    l0 = self[9];
    l0.Group = self.Player;
    l0.TargetEntity = self.Player;
    l0.SoundId = "0x001b9167";
    l0:ForcePlay_Priority();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Group = self.Player;
    l0.TargetEntity = self.Player;
    l0.SoundId = "0x00195048";
    l0:ForcePlay_Priority();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Start();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Group = self.Player;
    l0.TargetEntity = self.Player;
    l0.SoundId = "0x0018f0be";
    l0:ForcePlay_Priority();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.Player = l0.LocalPlayer;
    l0 = self[1];
    l0.triggerId = "2076688967406751397";
    l0:Enable();
    l0 = self[5];
    l0.triggerId = "2076122330045685811";
    l0:Enable();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Group = self.Player;
    l0.TargetEntity = self.Player;
    l0.SoundId = "0x0019501b";
    l0:ForcePlay_Priority();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Group = self.Player;
    l0.TargetEntity = self.Player;
    l0.SoundId = "0x0018b2ff";
    l0:ForcePlay_Priority();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
