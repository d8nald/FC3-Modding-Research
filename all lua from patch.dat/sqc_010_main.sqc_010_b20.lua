-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_hubandchainquests/sqc_010/sqc_010_main.domino.xml
-- User graph: SQC_010_B20
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
        cbox:RegisterBox("Domino/System/IsPawnAlive.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PawnInteractionListener_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Player = nil;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[8] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[8];
    l0._graph = self;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[2];
    l0._graph = self;
    self[12] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[3] = cbox:CreateBox("Domino/System/PawnInteractionListener_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PlayerInteracted = self.f_3_PlayerInteracted;
    self[4] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = self.f_4_Finished;
    self[7] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = self.f_7_Finished;
    self[9] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Acknowledged = self.f_13_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[13];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[2];
    l0:Fail();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076115173329922901";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_5_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_5_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2075783308892975953";
    l0.ContextualAction = "2075783330116154194";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.objectiveId = {
        section = "Objectives",
        item = "SQC_010_OBJ_50",
        id = "119318",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_10_False()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.SceneEntity = "2078405329709730669";
    l0.SequenceFile = "Sequences/FC3_Main/LIBRARYDB/LIBRARYDB_C3_SQC_010_OBJ2.seq";
    l0.Black_Length = 0.2;
    l0.Is_skippable = true;
    l0.IsThereALoopDuringFadeIn = false;
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0.bNoWeaponMode = false;
    l0:Start();
end;

function export:f_10_True()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.SceneEntity = "2077038910459882969";
    l0.SequenceFile = "Sequences/FC3_Main/librarydb/LIBRARYDB_C3_SQC_010_OBJ2B.seq";
    l0.Black_Length = 0.2;
    l0.Is_skippable = true;
    l0.IsThereALoopDuringFadeIn = false;
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0.bNoWeaponMode = false;
    l0:Start();
end;

function export:f_3_PlayerInteracted()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076115173329922901";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_1_Removed;
    l0:Remove();
end;

function export:f_4_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In(0);
end;

function export:f_21_Enabled()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Complete();
end;

function export:f_20_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2078534526138598971";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_21_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_7_Finished()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In(0);
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = nil;
    l0.ContextualAction = "2075783330116154194";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_20_Disabled;
    l0:Disable();
end;

function export:f_1_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0.Pawn = "2076097198411512699";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_10_True;
    l0.False = self.f_10_False;
    l0:In();
end;

function export:f_13_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Send();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Pawn = "2075783308892975953";
    l0:Enable();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
