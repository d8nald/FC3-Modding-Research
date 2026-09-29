-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b15/ulc_010_b15.domino.xml
-- User graph: Power_Puzzle
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
        cbox:RegisterBox("Domino/System/DiplayTextModifier.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PickupListener_v2.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/ShimmerModifier.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001875ee]], "CSoundResource");
        cbox:LoadResource([[sndres0x001875e9]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018f258]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018f158]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f158.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f258.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.PowerPuzzleComplete = DummyFunction;
    self.Meta1 = 0;
    self.Meta2 = 0;
    self[20] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_20_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_5_Out_0;
    l0.ResetOut = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Out = self.f_42_Out;
    self[41] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_41_Out_0;
    l0.ResetOut = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_11_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[15] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0.Holstered = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_49_PickedUp;
    self[14] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[14];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "LightChange",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_14_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["LightChange"] = self.f_14_SPOut__LightChange_;
    self[34] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = self.f_34_Out;
    self[8] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = DummyFunction;
    l0.Use = self.f_8_Use;
    self[46] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Out = self.f_46_Out;
    self[17] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_17_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_16_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Started = self.f_22_Started;
    l0.Finished = DummyFunction;
    self[19] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = DummyFunction;
    l0.Use = self.f_1_Use;
    self[39] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = self.f_39_Out;
    self[7] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = self.f_12_Completed;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
    self[54] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = self.f_54_Out;
    self[248] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[248];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "ChangeLight",
        },
    };
    l0.Started = self.f_248_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_248_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["ChangeLight"] = self.f_248_SPOut__ChangeLight_;
    self[23] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Started = self.f_23_Started;
    l0.Finished = DummyFunction;
    self[53] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_53_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[39];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_ControlRoom",
        id = "167050",
    };
    l0:SetMissionObjective();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_20_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f158";
    l0:ForcePlay_Priority();
end;

function export:f_5_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078199959066272618";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_48_Removed;
    l0:Remove();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_25_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077999987767124864";
    l0._graph = self;
    l0.Enabled = self.f_31_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_41_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075734151985633628";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078199581532771026";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_40_Removed;
    l0:Remove();
end;

function export:f_40_Removed()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_Power",
        id = "167051",
    };
    l0:SetMissionObjective();
end;

function export:f_11_Enter()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.textId = {
        section = "Hints",
        item = "ULC_010_HINT_NoPower",
        id = "124651",
    };
    l0.displaySlotId = 1;
    l0.displayTimer = 4;
    l0:DisplayText();
    l0 = self[41];
    l0:In(0);
end;

function export:f_48_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078200595426088363";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_50_Out;
    l0:SetEnabled();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.SceneEntity = "2076301244321786028";
    l0.SequenceFile = "Sequences/fc3_main/ULC_010/OpenDoor_GeneratorRoom.seq";
    l0:Play();
end;

function export:f_45_Added()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_ControlRoom",
        id = "167050",
    };
    l0:SetMissionObjective();
end;

function export:f_49_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2078200398788723996";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:Disable();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Enable();
end;

function export:f_31_Enabled()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.Entity = "2076894870980534534";
    l0.SoundId = "0x001875e9";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[20];
    l0.seconds = 1.5;
    l0:Start();
end;

function export:f_14_Finished()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0:In();
end;

function export:f_14_SPOut__LightChange_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077999987767124864";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_3_Disabled;
    l0:SetDisabled();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.triggerId = "2078200595426088363";
    l0:Enable();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    self.Meta1 = l0.ID;
    self:en_248();
    l0 = self[248];
    l0:Play();
end;

function export:f_8_Use()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2078040878330447029";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
    l0 = self[5];
    l0:In(0);
    l0 = self[15];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.triggerId = "2075734151985633628";
    l0:Enable();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.triggerId = "2076701752647753740";
    l0:Enable();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076701752647753740";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:SetEnabled();
end;

function export:f_17_Finished()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0:Enable();
end;

function export:f_16_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Reset Elevator";
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
    l0:ToScreen();
    l0 = self[17];
    l0.SceneEntity = "2076301244321786028";
    l0.SequenceFile = "Sequences/fc3_main/ULC_010/ULC_010_B11_C02_Up.seq";
    l0:Play();
end;

function export:f_55_Added()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.pickupId = "2078200398788723996";
    l0:Enable();
end;

function export:f_35_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078153300783409193";
    l0._graph = self;
    l0.Enabled = self.f_32_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_22_Started()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.Entity = "2076894899464053000";
    l0.SoundId = "0x001875ee";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077999987767124864";
    l0._graph = self;
    l0.Enabled = self.f_28_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078200663375910321";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_56_Removed;
    l0:Remove();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:In();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0:Enable();
end;

function export:f_1_Use()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2075734151985633628";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:SetDisabled();
end;

function export:f_36_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078154193157239219";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_28_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077999987769222020";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_27_Disabled;
    l0:SetDisabled();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078199959066272618";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_45_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078199581532771026";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_38_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_27_Disabled()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.triggerId = "2076770077813786648";
    l0:Enable();
end;

function export:f_47_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076701568599597254";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:SetDisabled();
end;

function export:f_56_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_52_Out_0;
    l0.Out[1] = self.f_52_Out_1;
    l0:In();
end;

function export:f_12_Completed()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Enable();
end;

function export:f_52_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Door contriol switch activated.";
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
    l0:ToScreen();
end;

function export:f_52_Out_1()
    self = self._graph;
    self:Out();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078200663375910321";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_55_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0:Enable();
end;

function export:f_32_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078154175037845935";
    l0._graph = self;
    l0.Enabled = self.f_36_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077350701494726795";
    l0._graph = self;
    l0.Enabled = self.f_25_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_248_Finished()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0:Disable();
    self:PowerPuzzleComplete();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.Meta1;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:Stop();
    self:en_248();
    l0 = self[248];
    l0:Stop();
end;

function export:f_248_SPOut__ChangeLight_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078153300781312037";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_35_Disabled;
    l0:SetDisabled();
end;

function export:f_248_Started()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f258";
    l0:ForcePlay_Priority();
end;

function export:f_23_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076283946315820966";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_47_Disabled;
    l0:SetDisabled();
end;

function export:f_3_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077999987769222020";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_53_Enter()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_BlastDoor",
        id = "167052",
    };
    l0:SetMissionObjective();
end;

function export:f_38_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076701752647753740";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:SetDisabled();
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2078151590411255471";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.triggerId = "2076701568599597254";
end;

function export:en_43()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078199650526974678";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

function export:en_29()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2078040878330447029";
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = 0.5;
    l0._graph = self;
    l0.Out = self.f_29_Out;
end;

function export:en_248()
    local l0;
    l0 = self[248];
    l0.MetaSequenceID = self.Meta1;
    l0.SceneEntity = "2076467234781285777";
    l0.SequenceFile = "Sequences/fc3_main/ULC_010/ULC_010_B30_C02.seq";
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:PowerPuzzleComplete()
    
end;
_compilerVersion = 24;
