-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_160/jas_160_b10e/jas_160_b10e.domino.xml
-- User graph: JAS_160_B10E_Grunts
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/RandomFloat.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001b84cb]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b84ca]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ePlayer = nil;
    self.fRandomDelay = 0;
    self.PlayingGrunt = false;
    self[20] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = self.f_20_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_20_Received;
    self[21] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_21_Finished;
    l0.FinishedInterrupted = self.f_21_FinishedInterrupted;
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_3_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_18_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
    self[22] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[22];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_22_Out;
    self[7] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_7_Received;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
    self[8] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_8_Received;
    self[17] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_17_Finished;
    l0.FinishedInterrupted = self.f_17_FinishedInterrupted;
    l0.Out = DummyFunction;
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
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Disable()
    local l0;
    self:en_18();
    l0 = self[18];
    l0:Stop();
    self:en_17();
    l0 = self[17];
    l0:Stop();
    self:en_1();
    l0 = self[1];
    l0:Stop();
end;

function export:Enable()
    local l0;
    l0 = self[3];
    l0:In(0);
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = self[22];
    l0:Condition(1);
end;

function export:f_20_Enabled()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.message = "PlayerGrunt2";
    l0:Enable();
end;

function export:f_20_Received()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_21_Finished()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
    self:en_22();
    l0 = self[22];
    l0:Condition(0);
end;

function export:f_21_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = self[22];
    l0:Condition(0);
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:True();
end;

function export:f_3_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:False();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[20];
    l0.message = "PlayerGrunt1";
    l0:Enable();
    self:en_22();
    l0 = self[22];
    l0:Condition(0);
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0:In();
end;

function export:f_18_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.fRandomDelay = l0.Target;
    self:en_18();
    l0 = self[18];
    l0:Start();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[8];
    l0.message = "PlayerGrunt3";
    l0:Enable();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001b84ca";
    l0:SafetyReflex_Priority();
end;

function export:f_7_Received()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.message = "PlayerGrunt5";
    l0:Enable();
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_6_A_is_False()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:SafetyReflex_Priority();
end;

function export:f_6_A_is_True()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Start();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.PlayingGrunt = l0.Target;
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.PlayingGrunt = l0.Target;
end;

function export:f_9_Received()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_8_Received()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.message = "PlayerGrunt4";
    l0:Enable();
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.PlayingGrunt = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_17_Finished()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0:In();
end;

function export:f_17_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0:In();
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:en_11()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.seconds = self.fRandomDelay;
end;

function export:en_19()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.1;
    l0.Max = 0.5;
    l0._graph = self;
    l0.Out = self.f_19_Out;
end;

function export:en_22()
    local l0;
    l0 = self[22];
    l0.AutoReset = true;
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.PlayingGrunt;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_6_A_is_True;
    l0.A_is_False = self.f_6_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

function export:en_17()
    local l0;
    l0 = self[17];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001b84cb";
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.seconds = 0.1;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
