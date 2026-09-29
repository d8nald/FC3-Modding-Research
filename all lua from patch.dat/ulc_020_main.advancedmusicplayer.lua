-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_main.domino.xml
-- User graph: AdvancedMusicPlayer
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Group" Type="Nomad|group" />
    <DataIn Name="MusicInterval" Type="Core|int" />
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.IsAllDead.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RandomInteger.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetInteger.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x00187765]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Count = 0;
    self.DelayAfterExitCombat = 8;
    self[69] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.IsAllDead.lua");
    l0 = self[69];
    l0._graph = self;
    l0.Dead = self.f_69_Dead;
    l0.NotDead = DummyFunction;
    self[62] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_62_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_10_MemberAdded;
    l0.MemberRemoved = self.f_10_MemberRemoved;
    self[11] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = DummyFunction;
    l0.StateStop = self.f_11_StateStop;
    l0.MemberInState = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_58_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[76] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[76];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[68] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[68];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_68_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = DummyFunction;
    l0.StateStop = self.f_13_StateStop;
    l0.MemberInState = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_1_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_55_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_25_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.group = self.Group;
    l0.autoDisable = false;
    l0:Combat();
    l0 = self[10];
    l0.group = self.Group;
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[25];
    l0:Enable();
    l0 = self[55];
    l0.group = self.Group;
    l0:Combat();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsNoMusicTime;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_19_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:StopAllCombatMusic()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_COMMON_Fast_End";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Stop();
end;

function export:f_70_Out()
    local l0;
    self = self._graph;
    self:en_62();
    l0 = self[62];
    l0:Stop();
    self:en_11();
    l0 = self[11];
    l0:Disable();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:True();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "No Music Time Start";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:False();
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Play next track!";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.ULC_020_MAIN.MusicTrackID;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_4_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_4_A_ne_B;
    l0:In();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = self[58];
    l0:Start();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:False();
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_66_Out()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = self[58];
    l0:Stop();
end;

function export:f_56_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    Globals.ULC_020_MAIN.NoMusicCountDown = l0.Target;
    self:en_65();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_21_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT2_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_21_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.ULC_020_MAIN.MusicTrackID;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_22_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_22_A_ne_B;
    l0:In();
end;

function export:f_69_Dead()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsMusicPlaying;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_57_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_4_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger.lua")];
    l0.Min = 1;
    l0.Max = 4;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_4_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = Globals.ULC_020_MAIN.MusicTrackID;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:Add();
end;

function export:f_19_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Resume No Music Timer";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    self:en_65();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomInteger.lua")];
    Globals.ULC_020_MAIN.MusicTrackID = l0.Target;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    Globals.ULC_020_MAIN.MusicTrackID = l0.Target;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_62_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Combat();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    l0 = self[10];
    self.Count = l0.memberCount;
end;

function export:f_10_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[10];
    self.Count = l0.memberCount;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_10_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[10];
    self.Count = l0.memberCount;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_020_MAIN.IsNoMusicTime = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_66_Out;
    l0:In();
end;

function export:f_11_StateStop()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsMusicPlaying;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_56_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_020_MAIN.IsMusicPlaying = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Stop Track: ";
    l0.int = Globals.ULC_020_MAIN.MusicTrackID;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_COMMON_Fast_End";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
    l0 = self[76];
    l0.SoundId = "0x00187765";
    l0.SoundType = 17;
    l0:Play();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_020_MAIN.IsMusicPlaying = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_COMMON_Slow_End";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Fade Track: ";
    l0.int = Globals.ULC_020_MAIN.MusicTrackID;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_58_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = Globals.ULC_020_MAIN.NoMusicCountDown;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0:Sub();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_020_MAIN.IsMusicPlaying = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Playing Track: ";
    l0.int = Globals.ULC_020_MAIN.MusicTrackID;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.ULC_020_MAIN.MusicTrackID;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_15_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_15_A_ne_B;
    l0:In();
end;

function export:f_7_A_gt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 1;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:FromInteger();
end;

function export:f_7_A_le_B()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_14_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[68];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_75_A_is_True()
    local l0;
    self = self._graph;
    self:en_49();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.ULC_020_MAIN.MusicTrackID = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.ULC_020_MAIN.MusicTrackID;
    l0.B = 4;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_7_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = self.f_7_A_gt_B;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_57_A_is_True()
    local l0;
    self = self._graph;
    self:en_49();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_59_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0:False();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "No Music Time Finished";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_59_A_gt_B()
    local l0;
    self = self._graph;
    self:en_65();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "No Music Countdown: ";
    l0.int = Globals.ULC_020_MAIN.NoMusicCountDown;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    Globals.ULC_020_MAIN.NoMusicCountDown = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.ULC_020_MAIN.NoMusicCountDown;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_59_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = self.f_59_A_gt_B;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_68_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[69];
    l0.Group = self.Group;
    l0:In();
end;

function export:f_15_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT3_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_15_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.ULC_020_MAIN.MusicTrackID;
    l0.B = 2;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_21_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_21_A_ne_B;
    l0:In();
end;

function export:f_13_StateStop()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "NPC Out of Combat";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    self:en_62();
    l0 = self[62];
    l0:Start();
end;

function export:f_23_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_DEF_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_2_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsNoMusicTime;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_3_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_22_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_22_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = Globals.ULC_020_MAIN.MusicTrackID;
    l0.B = 4;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_23_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_1_StateStart()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_70_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "NPC Enter Combat";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsMusicPlaying;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_2_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_55_StateStart()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.group = self.Group;
    l0.autoDisable = false;
    l0:Combat();
end;

function export:f_3_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:In();
end;

function export:f_25_Killed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsMusicPlaying;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_75_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_020_MAIN.IsNoMusicTime = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = self.MusicInterval;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:FromInteger();
end;

function export:en_30()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_30_Out;
end;

function export:en_65()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_65_Out;
end;

function export:en_49()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_49_Out;
end;

function export:en_62()
    local l0;
    l0 = self[62];
    l0.seconds = self.DelayAfterExitCombat;
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.group = self.Group;
end;

function export:en_58()
    local l0;
    l0 = self[58];
    l0.seconds = 1;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
end;

function export:en_14()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Count;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_14_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
