-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: DIA_HallucinationDialogs
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
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c329d.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b5ed7]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b5ed7.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00155eec.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001c329d]], "CSoundResource");
        cbox:LoadResource([[sndres0x00164da4]], "CSoundResource");
        cbox:LoadResource([[sndres0x001c32fb]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b5f0e]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c32fb.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164c05.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0016668a.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0015f793.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b5f0e.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00155eec]], "CSoundResource");
        cbox:LoadResource([[sndres0x0015f793]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00154be3.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00154be3]], "CSoundResource");
        cbox:LoadResource([[sndres0x00164c05]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164da4.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0016668a]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.done = DummyFunction;
    self.ePlayer = nil;
    self[8] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_8_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_15_Finished;
    l0.FinishedInterrupted = self.f_15_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_13_Finished;
    l0.FinishedInterrupted = self.f_13_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_32_Finished;
    l0.FinishedInterrupted = self.f_32_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[25];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_25_Out_0;
    l0.ResetOut = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_11_Out_0;
    l0.ResetOut = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[10];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_10_Out;
    self[17] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_17_Out_0;
    l0.ResetOut = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_29_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_30_Finished;
    l0.FinishedInterrupted = self.f_30_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_18_Finished;
    l0.FinishedInterrupted = self.f_18_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_5_Finished;
    l0.FinishedInterrupted = self.f_5_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_6_Out_0;
    l0.ResetOut = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[24];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_24_Out_0;
    l0.ResetOut = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_3_Finished;
    l0.FinishedInterrupted = self.f_3_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_14_Out_0;
    l0.ResetOut = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = self.f_22_Leave;
    l0.Use = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_1_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_26_Out_0;
    l0.ResetOut = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_12_Out_0;
    l0.ResetOut = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[31];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_31_Out;
    self[9] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.ResetOut = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_19_Finished;
    l0.FinishedInterrupted = self.f_19_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_16_Finished;
    l0.FinishedInterrupted = self.f_16_FinishedInterrupted;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073404509274515907";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:SetEnabled();
end;

function export:f_8_Enter()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Condition(1);
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073594969234356053";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:SetEnabled();
end;

function export:f_15_Finished()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In(0);
end;

function export:f_15_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In(0);
end;

function export:f_13_Finished()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In(0);
end;

function export:f_13_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In(0);
end;

function export:f_32_Finished()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_32_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_25_Out_0()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0:Condition(0);
end;

function export:f_11_Out_0()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001b5ed7";
    l0:ForcePlay_Priority();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001b5f0e";
    l0:ForcePlay_Priority();
end;

function export:f_17_Out_0()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00155eec";
    l0:ForcePlay_Priority();
end;

function export:f_29_Finished()
    self = self._graph;
    self:done();
end;

function export:f_30_Finished()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0:In(0);
end;

function export:f_30_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0:In(0);
end;

function export:f_18_Finished()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:In(0);
end;

function export:f_18_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:In(0);
end;

function export:f_5_Finished()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In(0);
end;

function export:f_5_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In(0);
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[1];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_6_Out_0()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0015f793";
    l0:ForcePlay_Priority();
end;

function export:f_24_Out_0()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00154be3";
    l0:ForcePlay_Priority();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.triggerId = "2073594969234356053";
    l0:Enable();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In(0);
end;

function export:f_3_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In(0);
end;

function export:f_14_Out_0()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164da4";
    l0:ForcePlay_Priority();
end;

function export:f_22_Leave()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0:Condition(1);
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0016668a";
    l0:ForcePlay_Priority();
end;

function export:f_26_Out_0()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001c329d";
    l0:ForcePlay_Priority();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.triggerId = "2073404509274515907";
    l0:Enable();
end;

function export:f_12_Out_0()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164c05";
    l0:ForcePlay_Priority();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001c32fb";
    l0:ForcePlay_Priority();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Condition(0);
end;

function export:f_19_Finished()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In(0);
end;

function export:f_19_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In(0);
end;

function export:f_16_Finished()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:In(0);
end;

function export:f_16_FinishedInterrupted()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:In(0);
end;

-- Empty out anchor definitions
function export:done()
    
end;
_compilerVersion = 24;
