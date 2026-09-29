-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_main.domino.xml
-- User graph: Hit
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
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Player/PlayerPlayAnim.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[ulc_020_jasonburned_layer]], "CMovementResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b00cc.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b00cc]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.NeedDamage = false;
    self.NeedPlaySequence = true;
    self[12] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Player/PlayerPlayAnim.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Played = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Started = DummyFunction;
    l0.Finishing = DummyFunction;
    l0.Finished = self.f_13_Finished;
    l0.Stopped = DummyFunction;
    l0.Failed = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_6_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_9_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_17_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_16_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_18_Out_0;
    l0.Out[1] = self.f_18_Out_1;
    l0:In();
end;

function export:Stop()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:False();
end;

function export:f_13_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.seconds = 0.3;
    l0:Start();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NeedPlaySequence = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_11_Out_0;
    l0.Out[1] = self.f_11_Out_1;
    l0.Out[2] = self.f_11_Out_2;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.seconds = 0.2;
    l0:Start();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_18_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NeedPlaySequence;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_8_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_18_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:True();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.seconds = 0.978;
    l0:Start();
end;

function export:f_11_Out_0()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Animation = "ulc_020_jasonburned_layer";
    l0:Play();
end;

function export:f_11_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "heat_distortion";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:Enable();
end;

function export:f_11_Out_2()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.seconds = 0.133;
    l0:Start();
end;

function export:f_5_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 6;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:Damage();
end;

function export:f_8_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:False();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:True();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NeedPlaySequence = l0.Target;
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Group = Globals.ULC_020_MAIN.ePlayer;
    l0.SoundId = "0x001b00cc";
    l0:ForcePlay_Priority();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NeedDamage = l0.Target;
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "heat_distortion";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.NeedDamage = l0.Target;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.NeedDamage;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_5_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
