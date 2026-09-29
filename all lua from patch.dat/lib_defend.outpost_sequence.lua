-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_defend.domino.xml
-- User graph: outpost_sequence
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="ScenePanCam" Type="Nomad|entity{}" />
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
    <DataIn Name="SequencePancam" Type="Nomad|sequence" />
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
        cbox:RegisterBox("Domino/System/Player/ActionMapModifier.lua");
        cbox:RegisterBox("Domino/System/GadgetWieldListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/Player/IsPlayerInQTE.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/library/Narrative/Lib_Narrative.NarrativeSceneSkipListener.lua");
        cbox:RegisterBox("Domino/System/PawnGadgetCheck.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/SafeHouseModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/WeaponVisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/Player/WieldInventory_v3.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0019bf20]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.MetaSequenceId = 0;
    self.eplayer = nil;
    self[4] = cbox:CreateBox("Domino/System/GadgetWieldListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = DummyFunction;
    l0.Drawn = DummyFunction;
    l0.Holstered = self.f_4_Holstered;
    self[19] = cbox:CreateBox("Domino/library/Narrative/Lib_Narrative.NarrativeSceneSkipListener.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.SignalReceived = self.f_19_SignalReceived;
    self[14] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    self[6] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_18_Received;
    self[7] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = self.f_7_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_7_Finished;
    l0.Stopped = self.f_7_Stopped;
    l0.Skipped = self.f_7_Skipped;
    self[24] = cbox:CreateBox("Domino/System/WeaponVisibilityModifier.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    self[23] = cbox:CreateBox("Domino/System/WeaponVisibilityModifier.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_13_True;
    l0.False = self.f_13_False;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = self.f_15_NoDeactivateMBOnUnlockDone;
    l0.DeactivatedMB = DummyFunction;
    l0:NoDeactivateMBOnUnlock();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/WieldInventory_v3.lua")];
    l0.category = "binoculars";
    l0.class = nil;
    l0.name = nil;
    l0.pawn = nil;
    l0.force = true;
    l0._graph = self;
    l0.Drew = DummyFunction;
    l0.Holstered = DummyFunction;
    l0.Error = DummyFunction;
    l0:LuaHolster();
end;

function export:f_4_Holstered()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.pawn = self.eplayer;
    l0:Visible();
end;

function export:f_9_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[6];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x0019bf20";
    l1:ForcePlay_Priority();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact_qte";
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:Pop();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.eplayer = l0.LocalPlayer;
    l0 = self[23];
    l0.pawn = self.eplayer;
    l0:Invisible();
end;

function export:f_19_SignalReceived()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Skip();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    self.MetaSequenceId = l0.ID;
    self:en_7();
    l0 = self[7];
    l0:Play();
end;

function export:f_26_Unfreezed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_13_False()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0:Push();
end;

function export:f_13_True()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.message = "QTE_Done";
    l0:Enable();
end;

function export:f_17_InHands()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.categoryFilter = "binoculars";
    l0:Enable();
end;

function export:f_17_InInventory()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_17_NotFound()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck.lua")];
    l0.pawn = nil;
    l0.categoryName = "binoculars";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.InHands = self.f_17_InHands;
    l0.InInventory = self.f_17_InInventory;
    l0.NotFound = self.f_17_NotFound;
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_18_Received()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0:Push();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = self.f_2_DeactivatedMB;
    l0:DeactivateMB();
end;

function export:f_2_DeactivatedMB()
    self = self._graph;
    self:Out();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:Disable();
end;

function export:f_7_Finished()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
    l0 = self[19];
    l0:Disable();
end;

function export:f_7_Skipped()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
end;

function export:f_7_Started()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:CinematicMode();
end;

function export:f_7_Stopped()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
end;

function export:f_5_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = false;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:Enable();
end;

function export:f_15_NoDeactivateMBOnUnlockDone()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = self.f_26_Unfreezed;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unfreeze();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = self.eplayer;
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = self.eplayer;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_5_Disabled;
    l0:SetDisabled();
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetaSequenceId;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
end;

function export:en_11()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
end;

function export:en_16()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact_qte";
    l0._graph = self;
    l0.Out = self.f_16_Out;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.MetaSequenceID = self.MetaSequenceId;
    l0.SceneEntity = self.ScenePanCam;
    l0.SequenceFile = self.SequencePancam;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
