-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/hoy_010/hoy_010_b35/hoy_010_b35.domino.xml
-- User graph: HOY_010_B35
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
        cbox:RegisterBox("Domino/System/Player/ActionMapModifier.lua");
        cbox:RegisterBox("Domino/System/AI/Scripted/AIScriptControlModifier.lua");
        cbox:RegisterBox("Domino/System/AI/Companions/CompanionBehaviorModifier.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetEntity.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/HOY_010/HOY_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017c2fa.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0017c2fa]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Sam = nil;
    self.Player = nil;
    self.Wave4_AssaultersA = 0;
    self.Wave4_AssaultersB = 0;
    self.Last_Stand = 0;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[1];
    l0._graph = self;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Added = self.f_7_Added;
    self[12] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[43] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Out = self.f_43_Out;
    self[27] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_27_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[19];
    l0._graph = self;
    self[11] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    self[14] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_14_Near;
    l0.Far = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_22_Loaded;
    l0.Unloaded = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[28];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_28_Out;
    self[26] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_26_Loaded;
    l0.Unloaded = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_18_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_2_Loaded;
    l0.Unloaded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
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

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:In();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[1];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "HOY_010_Mission_Failed_Exit_Zone",
        id = "86665",
    };
    l0:Fail();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    self.Sam = l0.Target;
    l0 = self[7];
    l0.Marker = "2075436576147556611";
    l0:In();
    self:en_27();
    l0 = self[27];
    l0:Idle_RelaxCautious();
end;

function export:f_6_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Acknowledge();
end;

function export:f_6_A_is_True()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = self[22];
    l0:Enable();
end;

function export:f_7_Added()
    local l0;
    self = self._graph;
    l0 = self[43];
    l0.objectiveId = {
        section = "Objectives",
        item = "HOY_010_OBJ_05_Talk",
        id = "98348",
    };
    l0:SetMissionObjective();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    l0.Entity = "2075626578582184651";
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:FromEntity();
end;

function export:f_16_Out_0()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:Enable();
end;

function export:f_16_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.HOY_010_MAIN.HOY_010_MAIN_IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_6_A_is_True;
    l0.A_is_False = self.f_6_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/Companions/CompanionBehaviorModifier.lua")];
    l0.Companion = self.Sam;
    l0.Path = nil;
    l0.LeadDistance = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_25_Success;
    l0.Failure = DummyFunction;
    l0:Wait();
end;

function export:f_27_StateStart()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:Condition(0);
    self:en_27();
    l0 = self[27];
    l0:Disable();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/Scripted/AIScriptControlModifier.lua")];
    l0.targets = "2075626578582184651";
    l0._graph = self;
    l0.TryAcquireOut = DummyFunction;
    l0.TryReleaseOut = self.f_21_TryReleaseOut;
    l0.Error = DummyFunction;
    l0:TryRelease();
end;

function export:f_25_Success()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.Out[1] = self.f_9_Out_1;
    l0.Out[2] = self.f_9_Out_2;
    l0:In();
end;

function export:f_14_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact_qte";
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:Push();
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Disable();
end;

function export:f_22_Loaded()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.PawnEntity = "2075626578582184651";
    l0.Destination = "2075531854986879393";
    l0:In();
    self:en_22();
    l0 = self[22];
    l0:Disable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.HOY_010_MAIN.HOY_010_MAIN_IsReloaded = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.HOY_010_MAIN.bIsSamDead;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_20_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:Condition(1);
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:False();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.Player = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_16_Out_0;
    l0.Out[1] = self.f_16_Out_1;
    l0:In();
end;

function export:f_26_Loaded()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:Disable();
    l0 = self[18];
    l0.pawns = "2075626578582184651";
    l0:Enable();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.HOY_010_MAIN.bIsSamDead = l0.Target;
    l0 = self[19];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "HOY_010_Mission_Failed_Sam_Died",
        id = "98349",
    };
    l0:Fail();
end;

function export:f_18_Killed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:True();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Entities = self.Player;
    l0.id2 = "2077078426268745887";
    l0.nearZone = 5;
    l0:Enable();
end;

function export:f_9_Out_1()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.entityId = "2077078426268745887";
    l0:Enable();
end;

function export:f_9_Out_2()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Start();
end;

function export:f_2_Loaded()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_21_TryReleaseOut()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Acknowledge();
end;

function export:f_10_Disabled()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Stop();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Use();
end;

function export:f_3_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Send();
end;

function export:f_20_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Group = self.Sam;
    l0.SoundId = "0x0017c2fa";
    l0:ForcePlay_Priority();
end;

function export:en_27()
    local l0;
    l0 = self[27];
    l0.group = self.Sam;
    l0.autoDisable = false;
end;

function export:en_22()
    local l0;
    l0 = self[22];
    l0.entityId = "2075626578582184651";
    l0.autoDisable = false;
end;

function export:en_26()
    local l0;
    l0 = self[26];
    l0.entityId = "2075626578582184651";
    l0.autoDisable = false;
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = self.Sam;
    l0.ContextualAction = "2077078426268745887";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = self.f_10_Disabled;
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.seconds = 2;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
