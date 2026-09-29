-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b21/ulc_010_b21.domino.xml
-- User graph: B21_Objective
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
        cbox:RegisterBox("Domino/System/CollectibleListener.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/UI/CreateBlockingMsgBox.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ada57.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018f15e]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ada61.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001ada66]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018f15e.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001ada61]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ada48.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001ada66.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001ada57]], "CSoundResource");
        cbox:LoadResource([[sndres0x001ada48]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ObjectiveComplete = DummyFunction;
    self.Out = DummyFunction;
    self.Int_Treasure_Collected = 0;
    self.Meta = 0;
    self[22] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_22_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_27_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/UI/CreateBlockingMsgBox.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Showed = DummyFunction;
    l0.Closed = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = DummyFunction;
    l0.Use = self.f_17_Use;
    self[35] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_35_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    self[25] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[25];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "Press1",
            "Press2",
            "Press3",
            "Press4",
            "Press5",
            "Press6",
            "Press7",
            "TurnOn_GreenLight",
            "Output",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["Press1"] = self.f_25_SPOut__Press1_;
    l0.SPOut["Press2"] = self.f_25_SPOut__Press2_;
    l0.SPOut["Press3"] = self.f_25_SPOut__Press3_;
    l0.SPOut["Press4"] = self.f_25_SPOut__Press4_;
    l0.SPOut["Press5"] = self.f_25_SPOut__Press5_;
    l0.SPOut["Press6"] = self.f_25_SPOut__Press6_;
    l0.SPOut["Press7"] = self.f_25_SPOut__Press7_;
    l0.SPOut["TurnOn_GreenLight"] = self.f_25_SPOut__TurnOn_GreenLight_;
    l0.SPOut["Output"] = self.f_25_SPOut__Output_;
    self[26] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[42] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_43_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = self.f_6_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_6_Collected;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[7] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = self.f_7_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_7_Collected;
    self[20] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    self[8] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_8_Collected;
    self[21] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
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
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:Add();
end;

function export:f_22_Finished()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.title = {
        section = "Japanese Letters",
        item = "ULC_Header",
        id = "155250",
    };
    l0.message = {
        section = "Japanese Letters",
        item = "ULC_Letter",
        id = "155249",
    };
    l0:ShowMessage();
    l0 = self[15];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_TakeElevator",
        id = "119562",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_29_Out()
    self = self._graph;
    self:ObjectiveComplete();
end;

function export:f_14_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x001ada66";
    l0:ForcePlay_Priority();
end;

function export:f_27_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.Meta;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:Stop();
end;

function export:f_1_Added()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_10_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_CollectTreasures_21",
        id = "111835",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_17_Use()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:CinematicMode();
end;

function export:f_35_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078193703878402378";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In();
end;

function export:f_40_Disabled()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.seconds = 0.2;
    l0:Start();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x001ada57";
    l0:ForcePlay_Priority();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "test";
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

function export:f_31_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077669216938402725";
    l0._graph = self;
    l0.Enabled = self.f_30_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_38_Disabled()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.seconds = 0.2;
    l0:Start();
end;

function export:f_25_SPOut__Output_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:Enable();
end;

function export:f_25_SPOut__Press1_()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
end;

function export:f_25_SPOut__Press2_()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
end;

function export:f_25_SPOut__Press3_()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
end;

function export:f_25_SPOut__Press4_()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
end;

function export:f_25_SPOut__Press5_()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
end;

function export:f_25_SPOut__Press6_()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x001ada48";
    l0:ForcePlay_Priority();
    self:en_40();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
end;

function export:f_25_SPOut__Press7_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078193243597578549";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_25_SPOut__TurnOn_GreenLight_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077669180819153821";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_31_Disabled;
    l0:SetDisabled();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:Start();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    self.Meta = l0.ID;
    l0 = self[25];
    l0.MetaSequenceID = self.Meta;
    l0.SceneEntity = "2077559605052842384";
    l0.SequenceFile = "Sequences/ULC_010_transition.seq";
    l0:Play();
end;

function export:f_43_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x001ada61";
    l0:ForcePlay_Priority();
end;

function export:f_6_Collected()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_6_Enabled()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.collectibleId = "2076755724618178471";
    l0:Enable();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    self.Int_Treasure_Collected = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 2;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_12_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_10_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Int_Treasure_Collected;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_14_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_2_Added()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_7_Collected()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_7_Enabled()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.collectibleId = "2076755736106377128";
    l0:Enable();
end;

function export:f_12_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_CollectTreasures_22",
        id = "111834",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.triggerId = "2076410576715657500";
    l0:Enable();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076410576715657500";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:SetEnabled();
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.collectibleId = "2076755716187627430";
    l0:Enable();
    l0 = self[3];
    l0.objectiveId = {
        section = "Objectives",
        item = "ULC_010_OBJ_CollectTreasures_20",
        id = "111836",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
    self:Out();
end;

function export:f_8_Collected()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.Group = Globals.ULC_010_MAIN.Player;
    l0.SoundId = "0x0018f15e";
    l0:ForcePlay_Priority();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078193706493550923";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_30_Enabled()
    local l0;
    self = self._graph;
    l0 = self[43];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:en_19()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076522347503821104";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_1_Added;
    l0.Removed = DummyFunction;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076547857971683727";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

function export:en_40()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078193706493550923";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_40_Disabled;
end;

function export:en_38()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078193703878402378";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_38_Disabled;
end;

function export:en_16()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075898609343143676";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076547849696321931";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_2_Added;
    l0.Removed = DummyFunction;
end;

-- Empty out anchor definitions
function export:ObjectiveComplete()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
