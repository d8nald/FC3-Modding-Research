-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_questgivers/bam_055/bam_055_brief_b10/bam_055_brief_b10.domino.xml
-- User graph: BAM_055_BRIEF_B10
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
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Player_Vehicule = {
    };
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.Finished = self.f_4_Finished;
    self[19] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    self[21] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_21_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    self[22] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_22_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = self.f_10_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = self.f_10_Stopped;
    l0.Skipped = DummyFunction;
    self[15] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeHideVehicles.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Hidden = self.f_15_Hidden;
    l0.Unhidden = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Acknowledged = self.f_9_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[14] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeGetVehiclesInTrigger.lua");
    l0 = self[14];
    l0._graph = self;
    self[11] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_11_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:In();
end;

function export:f_4_Finished()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Unhide();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076001959696939880";
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077094839106687841";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
    self:en_14();
    l0 = self[14];
    l0:Disable();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Hide();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.SceneEntity = "2076262322080334482";
    l0.SequenceFile = "Sequences/FC3_Main/BAM_055_BRIEF/BAM_055_BRIEF.seq";
    l0.Black_Length = 0.2;
    l0.Is_skippable = true;
    l0.LOOP_SceneEntity = "2076262322080334482";
    l0.LOOP_SequenceFile = "Sequences/fc3_main/bam_055_brief/BAM_055_BRIEF_BuckLoop.seq";
    l0.IsThereALoopDuringFadeIn = true;
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0.bNoWeaponMode = false;
    l0:Start();
end;

function export:f_21_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_CIN_BAM_055_BuckIntro";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_22_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0:In();
end;

function export:f_10_Started()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Enable();
    l0 = self[23];
    l0:Close();
end;

function export:f_10_Stopped()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:In();
end;

function export:f_15_Hidden()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Send();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2077576545855157560";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:SetDisabled();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Acknowledge();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.entityId = "2076262322080334482";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:In();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Enable();
end;

function export:f_9_Acknowledged()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Stop();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_11_Loaded()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Play();
    l0 = self[22];
    l0.seconds = 2;
    l0:Start();
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.SceneEntity = "2076262322080334482";
    l0.SequenceFile = "Sequences/fc3_main/bam_055_brief/BAM_055_BRIEF_BuckLoop.seq";
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.Vehicles = self.Player_Vehicule;
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.triggerId = "2077576545855157560";
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.Trigger = "2078005971560453970";
    l0.Vehicles = self.Player_Vehicule;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
