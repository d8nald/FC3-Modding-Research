-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_020/sam_020_b40c/sam_020_b40c.domino.xml
-- User graph: SAM_020_B40C
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
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSkipListener.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleToCollisionsState.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/SAM_020/SAM_020_B30/SAM_020_B30.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0016dd29]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.MetaSequenceID = 0;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[1];
    l0._graph = self;
    self[15] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSkipListener.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.SignalReceived = self.f_15_SignalReceived;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[14] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    self[24] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[24];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_24_Out;
    self[19] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    self[9] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[12] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[20] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0.Holstered = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = self.f_10_Started;
    l0.Finished = self.f_10_Finished;
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
    self[17] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = self.f_17_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_17_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = self.f_17_Skipped;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[1];
    l0:Fail();
end;

function export:f_15_SignalReceived()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:Skip();
end;

function export:f_23_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_22_Stopped;
    l0:Stop();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    self.MetaSequenceID = l0.ID;
    self:en_17();
    l0 = self[17];
    l0:Play();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Play();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = true;
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:In();
end;

function export:f_11_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2078157246897858630";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_3_Acknowledged()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
    self:en_8();
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleToCollisionsState.lua")];
    l0.Pawn = Globals.SAM_020_B30.ePlayer;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:UnsetInvincible();
end;

function export:f_2_Stopped()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "reticule";
    l0:In();
end;

function export:f_22_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT3_DEF_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_2_Stopped;
    l0:Stop();
end;

function export:f_10_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT3_ACT_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_23_Stopped;
    l0:Stop();
end;

function export:f_10_Started()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Stop();
end;

function export:f_7_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078157246897858630";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_11_Disabled;
    l0:SetDisabled();
end;

function export:f_17_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2078157246897858630";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_7_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
    l0 = self[15];
    l0:Disable();
end;

function export:f_17_Skipped()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
end;

function export:f_17_Started()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Enable();
    l0 = self[12];
    l0:Send();
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetaSequenceID;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "SAM_020_B40C started.";
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
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.Entity = "2077256855318447866";
    l0.SoundId = "0x0016dd29";
    l0.SoundType = 13;
    l0.StopFadeOut = 3;
end;

function export:en_17()
    local l0;
    l0 = self[17];
    l0.MetaSequenceID = self.MetaSequenceID;
    l0.SceneEntity = "2078157254804121673";
    l0.SequenceFile = "Sequences/fc3_main/SAM_020_B30D/SAM_020_B30D.seq";
end;

-- Empty out anchor definitions
_compilerVersion = 24;
