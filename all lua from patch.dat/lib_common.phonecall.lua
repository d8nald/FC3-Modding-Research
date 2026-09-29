-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: PhoneCall
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SoundID" Type="Nomad|Sound" />
    <DataIn Name="CallerID" Type="Nomad|oasis" />
    <DataIn Name="EndOfChain" Type="Core|bool" />
    <DataIn Name="IsIncomingCall" Type="Core|bool" />
    <DataIn Name="IsSatelliteCommunication" Type="Core|bool" />
</InputReflection> 
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
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.IsAnySideQuestBriefingAcknowledged.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/Player/PhoneCall_v2.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetFloat.lua");
        cbox:RegisterBox("Domino/System/SetSound.lua");
        cbox:RegisterBox("Domino/System/SetOasis.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001b83bb]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b83bc]], "CSoundResource");
        cbox:LoadResource([[sndres0x]], "CSoundResource");
        cbox:LoadResource([[sndres0x001a4ef2]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b83ba]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Finished = DummyFunction;
    self.Name = {
        section = "",
        item = "",
        id = "",
    };
    self.Ringtone = "0x";
    self.duration = 0;
    self[25] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_25_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[14] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = self.f_14_Finished;
    self[23] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    self[28] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.IsAnySideQuestBriefingAcknowledged.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Yes = DummyFunction;
    l0.No = self.f_28_No;
    self[27] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.IsAnySideQuestBriefingAcknowledged.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Yes = DummyFunction;
    l0.No = self.f_27_No;
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
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.StartedPriorityFailed = self.f_4_StartedPriorityFailed;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_4_Finished;
    l0.FinishedInterrupted = self.f_4_FinishedInterrupted;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Chain()
    local l0;
    l0 = self[28];
    l0:In();
end;

function export:Start()
    local l0;
    l0 = self[23];
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetSound.lua")];
    self.Ringtone = l0.Target;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.Name = l0.Target;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_25_TimeElapsed()
    self = self._graph;
    self:Finished();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.seconds = self.duration;
    l0:Start();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:In();
end;

function export:f_12_A_is_False()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/Player/PhoneCall_v2.lua")];
    l0:StartOutgoingCall();
end;

function export:f_12_A_is_True()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/Player/PhoneCall_v2.lua")];
    l0:StartIncomingCall();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.duration = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetSound.lua")];
    l0.SoundID = "0x001b83bc";
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:FromSound();
end;

function export:f_14_Finished()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = self[25];
    l0:Start();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetSound.lua")];
    self.Ringtone = l0.Target;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.Name = l0.Target;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_19_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.SoundId = "0x001b83ba";
    l0.SoundType = 20;
    l0:Play();
end;

function export:f_19_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:In();
end;

function export:f_6_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[4];
    l1.Group = l0.LocalPlayer;
    l1.TargetEntity = l0.LocalPlayer;
    l1.SoundId = self.SoundID;
    l1:ForcePlay_Priority();
end;

function export:f_15_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 5.2;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:FromFloat();
end;

function export:f_15_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 1.95;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:FromFloat();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetSound.lua")];
    self.Ringtone = l0.Target;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.duration = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetSound.lua")];
    l0.SoundID = "0x001a4ef2";
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:FromSound();
end;

function export:f_2_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = self.CallerID;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:FromOasis();
end;

function export:f_2_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Characters",
        item = "VICEGUIDE_CHARACTERS_DENNIS",
        id = "90989",
    };
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:FromOasis();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:Send();
end;

function export:f_28_No()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0:In();
end;

function export:f_17_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsIncomingCall;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_15_A_is_True;
    l0.A_is_False = self.f_15_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_17_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 0.5;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:FromFloat();
end;

function export:f_11_A_is_False()
    self = self._graph;
    self:Finished();
end;

function export:f_11_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "PhoneCallEnd";
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = self.CallerID;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_2_Yes;
    l0.No = self.f_2_No;
    l0:Oasis();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsSatelliteCommunication;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_19_A_is_True;
    l0.A_is_False = self.f_19_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_27_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "PhoneCallStart";
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    self.duration = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetSound.lua")];
    l0.SoundID = "0x001b83bb";
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:FromSound();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = self[25];
    l0:Start();
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0:In();
end;

function export:f_4_Finished()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_4_FinishedInterrupted()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_4_Started()
    self = self._graph;
    self:Out();
end;

function export:f_4_StartedPriorityFailed()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:en_25()
    local l0;
    l0 = self[25];
    l0.seconds = 0.5;
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PhoneCall_v2.lua")];
    l0.pawn = nil;
    l0.SoundId = self.Ringtone;
    l0.CallerId = self.Name;
    l0._graph = self;
    l0.Started = self.f_13_Started;
    l0.Error = DummyFunction;
end;

function export:en_12()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsIncomingCall;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_12_A_is_True;
    l0.A_is_False = self.f_12_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
end;

function export:en_17()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsSatelliteCommunication;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_17_A_is_True;
    l0.A_is_False = self.f_17_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

function export:en_11()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.EndOfChain;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_11_A_is_True;
    l0.A_is_False = self.f_11_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Finished()
    
end;
_compilerVersion = 24;
