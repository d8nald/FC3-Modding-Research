-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b11/ulc_010_b11.domino.xml
-- User graph: B11_Dialog
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
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018f23f]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018f21c]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018f1ef]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018f17c]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f17c.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f23f.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f1ef.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f21c.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[7] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
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
    self[3] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_8_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_10_EnterFOV;
    l0.LeaveFOV = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[6];
    l0.triggerId = "2076686746210274894";
    l0:Enable();
    l0 = self[12];
    l0.triggerId = "2078687381250124121";
    l0:Enable();
    l0 = self[8];
    l0.triggerId = "2076686773074792018";
    l0:Enable();
    l0 = self[10];
    l0.triggerId = "2078686924526070103";
    l0:Enable();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f1ef";
    l0:ForcePlay_Priority();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f21c";
    l0:ForcePlay_Priority();
end;

function export:f_8_Enter()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f23f";
    l0.Queue = true;
    l0:ForcePlay_Priority();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_10_EnterFOV()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f17c";
    l0:Interested_Priority();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
