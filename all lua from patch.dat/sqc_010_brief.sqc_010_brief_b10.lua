-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_hubandchainquests/sqc_010/sqc_010_brief.domino.xml
-- User graph: SQC_010_BRIEF_B10
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestPawnInteractionListener.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[15] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    self[2] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.Finished = self.f_2_Finished;
    self[13] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_13_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestPawnInteractionListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.PlayerInteracted = self.f_3_PlayerInteracted;
    self[7] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Acknowledged = self.f_9_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[12] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_12_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_10_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[10];
    l0.entityId = "2075783308892975953";
    l0:Enable();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.SceneEntity = "2076193834833820188";
    l0.SequenceFile = "Sequences/FC3_Main/LIBRARYDB/LIBRARYDB_C3_SQC_010_BRIEF.seq";
    l0.Black_Length = 0.2;
    l0.Is_skippable = true;
    l0.IsThereALoopDuringFadeIn = false;
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0.bNoWeaponMode = false;
    l0:Start();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2075783308892975953";
    l0.ContextualAction = "2075783330116154194";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = self.f_6_UseCalled;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Send();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Start();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075895445135045996";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_4_Removed;
    l0:Remove();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:Disable();
end;

function export:f_6_UseCalled()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_3_PlayerInteracted()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Acknowledge();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeoutfx";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_9_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:Enable();
end;

function export:f_1_UseCalled()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Pawn = "2075783308892975953";
    l0.IgnoreOrientation = false;
    l0:Enable();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Start();
end;

function export:f_4_Removed()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:In();
end;

function export:f_10_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2075783308892975953";
    l0.ContextualAction = "2075783330116154194";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = self.f_1_UseCalled;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
