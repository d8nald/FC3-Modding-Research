-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: PlayMusic
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/FloatArithmetics.lua");
        cbox:RegisterBox("Domino/System/RandomFloat.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetFloat.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001877ca]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.MusicDuration = 76;
    self[8] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_8_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_2_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = self.f_3_Finished;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_Shipyard_ExplorationMysteryA";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:Stop()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_Shipyard_ExplorationMysteryA";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_20_Stopped;
    l0:Stop();
    l0 = self[8];
    l0:Stop();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.BAM_055_MAIN.IsMusicKilled;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_12_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    Globals.BAM_055_MAIN.MusicPlayTime_Env = l0.Target;
    l0 = self[2];
    l0:Start();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    l0.A = Globals.BAM_055_MAIN.MusicPlayTime_Env;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:Add();
end;

function export:f_1_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l1 = self[8];
    l1.seconds = l0.Target;
    l1:Start();
end;

function export:f_9_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:True();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:False();
    l0 = self[2];
    l0:Stop();
end;

function export:f_12_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.BAM_055_MAIN.IsMusicPlaying_Env;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_9_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BAM_055_MAIN.IsMusicPlaying_Env = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 6;
    l0.Max = 8;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BAM_055_MAIN.IsMusicPlaying_Env = l0.Target;
    l0 = self[3];
    l0.SoundId = "0x001877ca";
    l0.SoundType = 17;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:FromFloat();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    Globals.BAM_055_MAIN.MusicPlayTime_Env = l0.Target;
    l0 = self[2];
    l0:Start();
end;

function export:f_20_Stopped()
    self = self._graph;
    self:Out();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
