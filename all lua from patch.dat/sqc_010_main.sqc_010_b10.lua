-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_hubandchainquests/sqc_010/sqc_010_main.domino.xml
-- User graph: SQC_010_B10
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
        cbox:RegisterBox("Domino/System/AI/Scripted/AIScriptControlModifier.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PawnInteractionListener_v2.lua");
        cbox:RegisterBox("Domino/System/AI/PawnRelationshipModifier.lua");
        cbox:RegisterBox("Domino/System/AI/PawnSetImpairedState.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetIdleSubState.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00171710.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00171710]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Player = nil;
    self[31] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_31_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_17_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/PawnInteractionListener_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PlayerInteracted = self.f_4_PlayerInteracted;
    self[32] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[32];
    l0._graph = self;
    self[12] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_12_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[6];
    l0._graph = self;
    self[25] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[25];
    l0._graph = self;
    self[19] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    self[24] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[2];
    l0._graph = self;
    self[29] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_29_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[35];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_35_Out_0;
    l0.ResetOut = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Acknowledged = self.f_9_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_11_Damaged;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_11_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_20_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[7] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = self.f_7_Finished;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[9];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[2];
    l0:Fail();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Open();
    l0 = self[33];
    l0:Close();
    l0 = self[5];
    l0:Close();
end;

function export:f_10_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2075783308892975953";
    l0.ContextualAction = "2075783330116154194";
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_13_Enabled()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Use();
end;

function export:f_13_UseCalled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/Scripted/AIScriptControlModifier.lua")];
    l0.targets = "#3EB4AECD";
    l0._graph = self;
    l0.TryAcquireOut = DummyFunction;
    l0.TryReleaseOut = self.f_36_TryReleaseOut;
    l0.Error = DummyFunction;
    l0:TryRelease();
end;

function export:f_31_Killed()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.Player = l0.LocalPlayer;
    l0 = self[31];
    l0.pawns = "#67B635AE";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2078463697444947257";
    l0.ContextualAction = "2078227415416449724";
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076800961805845464";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_10_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2078463698480940350";
    l0.ContextualAction = "2078227401531206325";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_17_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076800961805845464";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_18_Removed;
    l0:Remove();
end;

function export:f_4_PlayerInteracted()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.SceneEntity = "2076193969473075742";
    l0.SequenceFile = "Sequences/FC3_Main/LIBRARYDB/LIBRARYDB_C3_SQC_010_OBJ1.seq";
    l0.Black_Length = 0.2;
    l0.Is_skippable = true;
    l0.IsThereALoopDuringFadeIn = false;
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0.bNoWeaponMode = false;
    l0:Start();
end;

function export:f_36_TryReleaseOut()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetIdleSubState.lua")];
    l0.Group = "#3EB4AECD";
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:SetCautious();
end;

function export:f_12_Out_0()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.Save = false;
    l0:Complete();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = self[20];
    l0:Combat();
    l0 = self[29];
    l0.group = "2076097198411512699";
    l0:Dead();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_19();
    l0 = self[19];
    l0:SetMissionObjective();
    l0 = Boxes[GetPathID("Domino/System/AI/PawnSetImpairedState.lua")];
    l0.Group = "2076097198411512699";
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:NotImpaired();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = self[19];
    l0:SetMissionObjective();
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076800961805845464";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_3_Removed;
    l0:Remove();
end;

function export:f_29_StateStart()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/PawnRelationshipModifier.lua")];
    l0.AI = "#67B635AE";
    l0.Blue = nil;
    l0.Red = nil;
    l0.Green = nil;
    l0.Grey = true;
    l0.Neutral = nil;
    l0.Yellow = nil;
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:SetHostile();
end;

function export:f_35_Out_0()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Group = "2076097198411512699";
    l0.SoundId = "0x00171710";
    l0:ForcePlay_Priority();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_9_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Send();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.pawns = "2076097198411512699";
    l0:Enable();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2076097198411512699";
    l0.ContextualAction = "2078308036218201156";
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.failedCondition = {
        section = "Objectives",
        item = "SQC_010_OBJ_FAIL_far",
        id = "155619",
    };
    l0:Fail();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:In();
end;

function export:f_11_Damaged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = "2076097198411512699";
    l0.origin = nil;
    l0.value = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:Damage();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Pawn = "2076097198411512699";
    l0.IgnoreOrientation = true;
    l0:Enable();
end;

function export:f_11_Killed()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:In();
    l0 = self[5];
    l0:In();
end;

function export:f_20_StateStart()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = self[20];
    l0:Disable();
    l0 = self[35];
    l0:In(0);
end;

function export:f_18_Removed()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In(0);
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/PawnRelationshipModifier.lua")];
    l0.AI = "#67B635AE";
    l0.Blue = nil;
    l0.Red = nil;
    l0.Green = nil;
    l0.Grey = true;
    l0.Neutral = nil;
    l0.Yellow = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ClearAllied();
end;

function export:f_3_Removed()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In(0);
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:Fail();
end;

function export:f_7_Finished()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:en_26()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_26_Out;
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2076097198411512699";
    l0.ContextualAction = "2076788331584204937";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = self.f_13_UseCalled;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_13_Enabled;
    l0.Disabled = DummyFunction;
end;

function export:en_19()
    local l0;
    l0 = self[19];
    l0.objectiveId = {
        section = "Objectives",
        item = "SQC_010_OBJ_30",
        id = "126394",
    };
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.initStateOpen = false;
end;

function export:en_20()
    local l0;
    l0 = self[20];
    l0.group = "2076097198411512699";
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
