-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/den_040/den_040_b20/den_040_b20.domino.xml
-- User graph: OBJ_DestroyWeaponCaches
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
        cbox:RegisterBox("Domino/System/AI/AIEventLog.lua");
        cbox:RegisterBox("Domino/System/AI/AlarmModifier.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/CompoundObject_v2.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/MetaBreakableModifier.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MissionBomb.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ObjectiveTimer_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PickupState.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetReevaluateCover.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cbox:RegisterBox("Domino/System/StimsEmitter.lua");
        cbox:RegisterBox("Domino/System/AI/TargetModifier.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0016608b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001592DF]], "CSoundResource");
        cbox:LoadResource([[sndres0x001592DE]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164c1c.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00194151]], "CSoundResource");
        cbox:LoadResource([[sndres0x00164c1c]], "CSoundResource");
        cbox:LoadResource([[sndres0x0017b4fa]], "CSoundResource");
        cbox:LoadResource([[sndres0x0017b06d]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017b06d.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00194156.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00194151.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017b4fa.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0016608b]], "CSoundResource");
        cbox:LoadResource([[sndres0x00194156]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ObjectiveCleared = DummyFunction;
    self.GetOut = DummyFunction;
    self.Out_Prevent_Reinforcement = DummyFunction;
    self.DisableWarningZone = DummyFunction;
    self.PlayerLeftArea = DummyFunction;
    self.ePlayer = nil;
    self[13] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_13_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[68] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[68];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_68_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[82] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[82];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_82_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[90] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[90];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_90_Out_0;
    l0.ResetOut = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Started = self.f_31_Started;
    l0.Finished = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_34_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[76] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[76];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_76_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/MissionBomb.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.BombArmed = self.f_39_BombArmed;
    l0.Detonate = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_41_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0.Completed = self.f_27_Completed;
    self[30] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Started = self.f_30_Started;
    l0.Finished = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_14_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[79] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Out = self.f_79_Out;
    l0.Closed = self.f_79_Closed;
    l0.Opened = DummyFunction;
    self[77] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Out = self.f_77_Out;
    self[11] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = self.f_11_Out;
    self[51] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_51_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[44];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_44_Out_0;
    l0.ResetOut = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = self.f_42_StateChanged;
    l0.Destroyed = self.f_42_Destroyed;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_4_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[87] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Enabled = self.f_87_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_87_MemberRemoved;
    self[25] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    self[72] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_72_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Started = self.f_24_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_24_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
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
    self[12] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[80] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[80];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_80_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    self[15] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_15_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[85] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[85];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_85_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[89] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[89];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_89_Out_0;
    l0.ResetOut = DummyFunction;
    self[56] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Enabled = self.f_56_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_56_Enter;
    l0.Leave = self.f_56_Leave;
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
    self[40] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[40];
    l0._graph = self;
    l0.ShowOut = self.f_40_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_40_TimeElapsed;
    self[48] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = self.f_48_Leave;
    l0.Use = DummyFunction;
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
    self[32] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_32_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[59] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[59];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_59_Out_0;
    l0.ResetOut = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = self.f_37_Out;
    self[67] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[67];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_67_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:If_Killed_everyone_in_time()
    local l0;
    l0 = self[79];
    l0:Close();
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074760141560883361";
    l0._graph = self;
    l0.Out = self.f_73_Out;
    l0:In();
end;

function export:f_13_Finished()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_68_StateStart()
    local l0;
    self = self._graph;
    l0 = self[67];
    l0:Condition(1);
end;

function export:f_82_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078201571581117588";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.triggerId = "2074856870656372441";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[4];
    l0.triggerId = "2074856870656372441";
    l0:Enable();
end;

function export:f_70_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075630969777301491";
    l0._graph = self;
    l0.Out = self.f_71_Out;
    l0:In();
end;

function export:f_50_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075642982813414873";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_16_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_50_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AlarmModifier.lua")];
    l0.AlarmGroup = "#3E17E227";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:Disable();
end;

function export:f_50_Out_2()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.entityId = "2075630969777301491";
    l0:Enable();
end;

function export:f_90_Out_0()
    local l0;
    self = self._graph;
    self:en_87();
    l0 = self[87];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Less than or equal 7 mercs. Surprise reinforcement arrives.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2078640417615659358";
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:CreateAILogInArmy();
end;

function export:f_31_Started()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.SceneEntity = "2075724224449751337";
    l0.SequenceFile = "Sequences/fc3_main/den_040_chimneyexplosion/Seq_ChimneyExplosion.seq";
    l0:Play();
end;

function export:f_34_Out()
    self = self._graph;
    self:ObjectiveCleared();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078297902117049879";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetDisabled();
end;

function export:f_76_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#BE997525";
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:In();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Group = "#3E17E227";
    l0.SoundId = "0x0017b06d";
    l0:ForcePlay_Priority();
end;

function export:f_39_BombArmed()
    local l0;
    self = self._graph;
    l0 = self[89];
    l0:In(0);
    l0 = self[40];
    l0.time = 15;
    l0:Show();
end;

function export:f_26_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2074344367838991930";
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:Enable();
end;

function export:f_41_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2078641234601066824";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_27_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#3E17E227";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Group = "#3E17E227";
    l0.SoundId = "0x00194156";
    l0:ForcePlay_Priority();
end;

function export:f_47_Out_0()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_47_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078686974922728971";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_84_Out;
    l0:SetEnabled();
    self:DisableWarningZone();
end;

function export:f_47_Out_2()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_30_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074856451655870829";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_22_Removed;
    l0:Remove();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_50_Out_0;
    l0.Out[1] = self.f_50_Out_1;
    l0.Out[2] = self.f_50_Out_2;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ReinforcementPoint = "2075633315886413407";
    l0.Battlefield = "2072740378414448599";
    l0.IdleBSR = "2072740378414448599";
    l0.AlertBSR = "2072740378414448599";
    l0.CombatBSR = "2072740378414448599";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_14_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[79];
    l0:In();
end;

function export:f_79_Closed()
    self = self._graph;
    self:Out_Prevent_Reinforcement();
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.ReinforcementPoint = "2075633274123728474";
    l0.Battlefield = "2072740378414448599";
    l0.IdleBSR = "2072740378414448599";
    l0.AlertBSR = "2072740378414448599";
    l0.CombatBSR = "2072740378414448599";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_77_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_49_Out_0;
    l0.Out[1] = self.f_49_Out_1;
    l0.Out[2] = self.f_49_Out_2;
    l0:In();
    l0 = self[80];
    l0.seconds = 2.5;
    l0:Start();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075975233000454991";
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:Enable();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078297902117049879";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:SetEnabled();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076488639184950916";
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_19_Added()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.objectiveId = {
        section = "Objectives",
        item = "DEN_040_OBJ_C",
        id = "58242",
    };
    l0.PlayComplete = false;
    l0.FlushPreviousObjectives = true;
    l0:SetMissionObjective();
end;

function export:f_51_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.Entity = "2075812923728485941";
    l0.SoundId = "0x001592DE";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2076901413910223649";
    l0.Battlefield = "2072740378414448599";
    l0.IdleBSR = "2072740378414448599";
    l0.AlertBSR = "2072740378414448599";
    l0.CombatBSR = "2072740378414448599";
    l0:SpawnInRelax();
end;

function export:f_44_Out_0()
    local l0;
    self = self._graph;
    l0 = self[43];
    l0.RegionEntity = "2075728818619837781";
    l0:In();
end;

function export:f_88_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[90];
    l0:In(0);
end;

function export:f_42_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0:In(0);
end;

function export:f_42_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0:In(0);
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074760156704417988";
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:In();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0:In(0);
end;

function export:f_87_Enabled()
    local l0;
    self = self._graph;
    self:en_88();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_87_MemberRemoved()
    local l0;
    self = self._graph;
    self:en_88();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164c1c";
    l0:ForcePlay_Priority();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075643019702318557";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_72_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164c1c";
    l0:ForcePlay_Priority();
end;

function export:f_24_Finished()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.RegionEntity = "2075728818619837781";
    l0:In();
end;

function export:f_24_Started()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0.objectiveId = {
        section = "Objectives",
        item = "DEN_040_OBJ_ESCAPE",
        id = "162034",
    };
    l0:SetMissionObjective();
end;

function export:f_18_Removed()
    local l0;
    self = self._graph;
    l0 = self[76];
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2074856451655870829";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_19_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Group = "#3E17E227";
    l0.SoundId = "0x0017b4fa";
    l0:ForcePlay_Priority();
end;

function export:f_80_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078201571581117588";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_81_Out;
    l0:SetEnabled();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter.lua")];
    l0.StimsEmitter = "2078641234601066824";
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:Enable();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = self[39];
    l0:Start();
end;

function export:f_15_StateStart()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_ACT_Play_LP";
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_85_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075975233000454991";
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:SetDamageable();
end;

function export:f_89_Out_0()
    local l0;
    self = self._graph;
    self:en_87();
    l0 = self[87];
    l0:Enable();
end;

function export:f_22_Removed()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.objectiveId = {
        section = "Objectives",
        item = "DEN_040_OBJ_D",
        id = "83736",
    };
    l0:SetMissionObjective();
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.triggerId = "2078686974922728971";
    l0:Enable();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/PickupState.lua")];
    l0.Pickup = "2075630969777301491";
    l0._graph = self;
    l0.Out = self.f_86_Out;
    l0:SetAsPickable();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074760142540253347";
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0:In();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "27159832186675846";
    l0.missionLayerId = "138289314490153";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_56_Enabled()
    local l0;
    self = self._graph;
    l0 = self[68];
    l0.group = "#3E17E227";
    l0.autoDisable = false;
    l0:Combat();
end;

function export:f_56_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760141560883361";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetDamageable();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760142540253347";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetDamageable();
    self:en_60();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0:SetDamageable();
    l0 = self[67];
    l0:Condition(0);
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760156704417988";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetDamageable();
end;

function export:f_56_Leave()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760141560883361";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760156704417988";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
    l0 = self[67];
    l0:Reset();
    self:en_69();
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0:Deactivate();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2074760142540253347";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
    self:en_60();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0:SetUnDamageable();
end;

function export:f_81_Out()
    local l0;
    self = self._graph;
    l0 = self[82];
    l0.seconds = 1.5;
    l0:Start();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2074344367838991930";
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:SetDamageable();
end;

function export:f_40_ShowOut()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.Entity = "2075812923728485941";
    l0.SoundId = "0x001592DF";
    l0.SoundType = 11;
    l0:Play();
    self:GetOut();
end;

function export:f_40_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_39();
    l0 = self[39];
    l0:DoDetonateBomb();
    l0 = self[85];
    l0.seconds = 0.5;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_47_Out_0;
    l0.Out[1] = self.f_47_Out_1;
    l0.Out[2] = self.f_47_Out_2;
    l0:In();
end;

function export:f_48_Leave()
    self = self._graph;
    self:PlayerLeftArea();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Group = "#3E17E227";
    l0.SoundId = "0x00194151";
    l0:ForcePlay_Priority();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.group = "#3E17E227";
    l0:Combat();
end;

function export:f_32_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0016608b";
    l0:ForcePlay_Priority();
end;

function export:f_59_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075642982813414873";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_18_Removed;
    l0:Remove();
end;

function export:f_49_Out_0()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0.seconds = 1.9;
    l0:Start();
end;

function export:f_49_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075643019702318557";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_26_Removed;
    l0:Remove();
end;

function export:f_49_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077909764246971400";
    l0._graph = self;
    l0.Out = self.f_70_Out;
    l0:In();
end;

function export:f_16_Added()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.objectiveId = {
        section = "Objectives",
        item = "KEB02_OBJ_B",
        id = "41928",
    };
    l0:SetMissionObjective();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.seconds = 4.7;
    l0:Start();
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    self:en_69();
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0:Activate();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077909652806401105";
    l0._graph = self;
    l0.Out = self.f_78_Out;
    l0:In();
end;

function export:en_60()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076488639184950916";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
end;

function export:en_39()
    local l0;
    l0 = self[39];
    l0.bombPos = "2076486416591763440";
    l0.bombCueArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_DynamiteGhost_01";
    l0.bombArchetype = "FC3_Graphics:Singleplayer:Exotic:MissionExplosives:IED_Dynamite_01";
    l0.bombRemoteArchetype = "weapons:FC3/IED_remote.MissionBombRemote";
end;

function export:en_69()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077548625969299093";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_88()
    local l0, l1;
    l0 = self[87];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 7;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_88_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
end;

function export:en_87()
    local l0;
    l0 = self[87];
    l0.group = "#3E17E227";
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
function export:ObjectiveCleared()
    
end;
function export:GetOut()
    
end;
function export:Out_Prevent_Reinforcement()
    
end;
function export:DisableWarningZone()
    
end;
function export:PlayerLeftArea()
    
end;
_compilerVersion = 24;
