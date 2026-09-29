-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b40/sam_015_b40.domino.xml
-- User graph: SAM_015_B40_Escape
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/Player/IgnoreSignal.lua");
        cbox:RegisterBox("Domino/System/IsPawnAlive.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleState.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleToCollisionsState.lua");
        cbox:RegisterBox("Domino/System/AI/PawnSetImpairedState.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/VehicleFollowPath_v4.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001b3693]], "CSoundResource");
        cbox:LoadResource([[sndres0x00165c2b]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00165cd4.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001663d8.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0017178b]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b361b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00165cd4]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b3634.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001663d8]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017178b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00116251]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b3634]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b3693.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00165c2b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b361b]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.StartExplosion = DummyFunction;
    self.ePlayer = nil;
    self[29] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_29_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[47] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[7] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = self.f_7_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_7_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = self.f_16_Out;
    self[11] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
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
    self[12] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_8_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_42_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_52_Loaded;
    l0.Unloaded = self.f_52_Unloaded;
    self[28] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Started = self.f_22_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_4_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[58];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_58_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[34] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_34_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[61];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_61_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[55];
    l0._graph = self;
    self[60] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_60_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    self[15] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = self.f_15_Out;
    self[20] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_20_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[56] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_56_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_26_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_41_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_44_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_ACT_Epic";
    l0._graph = self;
    l0.Started = self.f_43_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_29_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.triggerId = "2076469997571415769";
    l0:Enable();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Enable();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetEngineDisabled();
    self:en_35();
    l0:SetEngineBroken();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Enable();
end;

function export:f_7_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2078294646217262066";
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:SetAsDestructable();
end;

function export:f_7_Started()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0:In(1);
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074623588628975017";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:SetEnabled();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.SoundId = "0x001b3693";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_43_Started()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.entityId = "2074868928208701670";
    l0.autoDisable = false;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/AI/PawnSetImpairedState.lua")];
    l0.Group = "2074868928208701670";
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:NotImpaired();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.ReinforcementPoint = "2075813131367491633";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2072833315655652252";
    l0.CombatBSR = "2072833315655652252";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076842614285417295";
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:In();
end;

function export:f_14_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783395020908403";
    l0._graph = self;
    l0.Started = self.f_13_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 0;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_53_False()
    local l0;
    self = self._graph;
    self:en_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_53_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = "2074868928208701670";
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:SetInvincible();
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    self:en_55();
    l0 = self[55];
    l0:Fail();
end;

function export:f_8_Enter()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x00165cd4";
    l0:ForcePlay_Priority();
    l0 = self[11];
    l0.ReinforcementPoint = "2074623943899112701";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2072833315655652252";
    l0.CombatBSR = "2072833315655652252";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074623588628975017";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:SetDisabled();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2078294646217262066";
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:SetAsIndestructable();
end;

function export:f_42_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x0017178b";
    l0:ForcePlay_Priority();
    l0 = self[48];
    l0.SoundId = "0x0017178b";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_52_Loaded()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0:In(0);
end;

function export:f_52_Unloaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:In();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.PawnEntity = "2074624299972461647";
    l0.Destination = "2076842584004639562";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.seconds = 6;
    l0:Start();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:In(0);
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:SetInvincible();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:UnsetInvincible();
end;

function export:f_22_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "change_seat";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:In();
    l0 = self[9];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_Escape",
        id = "54772",
    };
    l0.FlushPreviousObjectives = true;
    l0:SetMissionObjective();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#D971BDC2";
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_4_OnSit()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.seconds = 20;
    l0:Start();
    l0 = self[22];
    l0.Vehicle = "2078294646217262066";
    l0.Path = "2076469952977575638";
    l0.Speed = 12;
    l0:Start();
    l0 = self[12];
    l0:Close();
    l0 = self[42];
    l0.seconds = 0.7;
    l0:Start();
end;

function export:f_58_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0.Pawn = "2074868928208701670";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_53_True;
    l0.False = self.f_53_False;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076469997571415769";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:SetEnabled();
    l0 = self[14];
    l0.seconds = 6;
    l0:Start();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    self:en_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x001663d8";
    l0:ForcePlay_Priority();
    l0 = self[49];
    l0.SoundId = "0x001b361b";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0:UnsetInvincible();
end;

function export:f_61_Out_0()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.SceneEntity = "2074910567562220286";
    l0.SequenceFile = "Sequences/FC3_Main/sam_015/sam_015.seq";
    l0:Play();
end;

function export:f_60_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:ForcePlay_Priority();
    l0 = self[61];
    l0:In(0);
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#E6134818";
    l0.Battlefield = "2072833315655652252";
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:SetAll();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.SoundId = "0x001b3634";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.Entity = "2076459334568518597";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_20_Enter()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:ForcePlay_Priority();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076469997571415769";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:SetDisabled();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0.SeatIndex = 0;
    l0:TakeSeat();
end;

function export:f_56_Killed()
    local l0;
    self = self._graph;
    self:en_55();
    l0 = self[55];
    l0:Fail();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.triggerId = "2074623588628975017";
    l0:Enable();
end;

function export:f_26_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.ReinforcementPoint = "2075975120918164986";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2072833315655652252";
    l0.CombatBSR = "2072833315655652252";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.pawns = "2074868928208701670";
    l0:Enable();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0:In(0);
end;

function export:f_41_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = "#D971BDC2";
    l0.origin = nil;
    l0.value = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.ReinforcementPoint = "2075975192953239048";
    l0.Battlefield = "2072833315655652252";
    l0.IdleBSR = "2072833315655652252";
    l0.AlertBSR = "2072833315655652252";
    l0.CombatBSR = "2072833315655652252";
    l0.RespectBudget = true;
    l0:SpawnInCautious();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:StartExplosion();
    l0 = self[24];
    l0.Vehicle = "2078294646217262066";
    l0.Path = "2076469952977575638";
    l0.Speed = 12;
    l0:Stop();
end;

function export:f_44_TimeElapsed()
    self = self._graph;
    self:Out();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:SetInvincible();
    l0 = self[34];
    l0.seconds = 4;
    l0:Start();
    l0 = self[29];
    l0.seconds = 12;
    l0:Start();
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.Group = "2074868928208701670";
    l0.SoundId = "0x00165c2b";
end;

function export:en_59()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_59_Out;
end;

function export:en_35()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2078294646217262066";
    l0._graph = self;
    l0.Out = self.f_35_Out;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
end;

function export:en_55()
    local l0;
    l0 = self[55];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Failed Conditions",
        item = "SAM_015_FAILS_TruckDestroyed",
        id = "71310",
    };
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:StartExplosion()
    
end;
_compilerVersion = 24;
