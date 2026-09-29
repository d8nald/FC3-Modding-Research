-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: AnimalSideQuestGiver
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="QuestName" Type="Core|string" />
    <DataIn Name="MarkerID" Type="Nomad|entity{}" />
    <DataIn Name="AnimalType_String" Type="Core|string" />
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
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/UI/CreateModalDialogBox.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/GetMissionRewards.lua");
        cbox:RegisterBox("Domino/System/GetScriptEntity.lua");
        cbox:RegisterBox("Domino/System/HACK_CampaignPrimarySoftSave.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/Random.lua");
        cbox:RegisterBox("Domino/System/SetString.lua");
        cbox:RegisterBox("Domino/System/SetOasis.lua");
        cbox:RegisterBox("Domino/System/ShimmerModifier.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/UsableEntityListener.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018ebef.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018eba0]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018eba0.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018ebef]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018885b]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018eb6f]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018eb6f.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018885b.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Giver = nil;
    self.Player = nil;
    self.AnimalType = {
        section = "POIs SideQuest Acknowledge",
        item = "POI_SQ_ANIMAL_DESC",
        id = "146284",
    };
    self.HuntDescription = {
        section = "",
        item = "",
        id = "",
    };
    self.MoneyReward = "";
    self.XPReward = "";
    self[1] = cbox:CreateBox("Domino/System/UI/CreateModalDialogBox.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Showed = DummyFunction;
    l0.Accept = self.f_1_Accept;
    l0.Cancel = DummyFunction;
    l0.Closed = self.f_1_Closed;
    self[9] = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self[9];
    l0._graph = self;
    l0._DynamicAnchors = {
        Probability = 3,
        Output = 3,
    };
    l0.Out = DummyFunction;
    l0.None = DummyFunction;
    l0.Output[0] = self.f_9_Output_0;
    l0.Output[1] = self.f_9_Output_1;
    l0.Output[2] = self.f_9_Output_2;
    self[10] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = self.f_10_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/UsableEntityListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnUse = self.f_3_OnUse;
    self[130] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
    l0 = self[130];
    l0._graph = self;
    l0.None_Completed = self.f_130_None_Completed;
    l0.One_Completed = self.f_130_One_Completed;
    self[4] = cbox:CreateBox("Domino/System/GetScriptEntity.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[77] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Started = self.f_77_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = self.f_12_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = self.f_11_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[131] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[131];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_131_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[4];
    l0:In();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/GetMissionRewards.lua")];
    l0.MissionName = self.QuestName;
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0:In();
end;

function export:f_112_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_G3_Objective",
        id = "160203",
    };
    l0._graph = self;
    l0.Out = self.f_114_Out;
    l0:FromOasis();
end;

function export:f_112_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_G4_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_127_A_eq_B;
    l0.A_neq_B = self.f_127_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_1_Accept()
    local l0;
    self = self._graph;
    l0 = self[131];
    l0:Condition(0);
    self:en_3();
    l0 = self[3];
    l0:Disable();
end;

function export:f_1_Closed()
    local l0;
    self = self._graph;
    l0 = self[131];
    l0:Condition(1);
end;

function export:f_8_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[10];
    l1.Group = l0.LocalPlayer;
    l1 = self[11];
    l1.Group = l0.LocalPlayer;
    l1 = self[12];
    l1.Group = l0.LocalPlayer;
    l0 = self[9];
    l0:In();
end;

function export:f_9_Output_0()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.SoundId = "0x0018eba0";
    l0:ForcePlay_Priority();
end;

function export:f_9_Output_1()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.SoundId = "0x0018eb6f";
    l0:ForcePlay_Priority();
end;

function export:f_9_Output_2()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.SoundId = "0x0018ebef";
    l0:ForcePlay_Priority();
end;

function export:f_99_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_85_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_127_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_G4_Objective",
        id = "160204",
    };
    l0._graph = self;
    l0.Out = self.f_113_Out;
    l0:FromOasis();
end;

function export:f_127_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_G4B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_118_A_eq_B;
    l0.A_neq_B = self.f_118_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_97_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_D3_Objective",
        id = "160191",
    };
    l0._graph = self;
    l0.Out = self.f_99_Out;
    l0:FromOasis();
end;

function export:f_97_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_D4_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_101_A_eq_B;
    l0.A_neq_B = self.f_101_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_111_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_F4_Objective",
        id = "160200",
    };
    l0._graph = self;
    l0.Out = self.f_126_Out;
    l0:FromOasis();
end;

function export:f_111_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_F5_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_124_A_eq_B;
    l0.A_neq_B = self.f_124_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_89_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_C5_Objective",
        id = "160187",
    };
    l0._graph = self;
    l0.Out = self.f_90_Out;
    l0:FromOasis();
end;

function export:f_89_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_C6_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_91_A_eq_B;
    l0.A_neq_B = self.f_91_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_10_Started()
    self = self._graph;
    self:Out();
end;

function export:f_93_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_C6B_Objective",
        id = "160189",
    };
    l0._graph = self;
    l0.Out = self.f_94_Out;
    l0:FromOasis();
end;

function export:f_93_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_C7_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_95_A_eq_B;
    l0.A_neq_B = self.f_95_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.MoneyReward = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = nil;
    l0.Integer = self._sld_xpReward_47;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:FromInteger();
end;

function export:f_135_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HACK_CampaignPrimarySoftSave.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Save();
end;

function export:f_135_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = self.QuestName;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.XPReward = l0.Target;
    self:en_3();
    l0 = self[3];
    l0:Enable();
end;

function export:f_98_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_E6_Objective",
        id = "160197",
    };
    l0._graph = self;
    l0.Out = self.f_108_Out;
    l0:FromOasis();
end;

function export:f_98_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_F2_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_122_A_eq_B;
    l0.A_neq_B = self.f_122_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_105_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_D6_Objective",
        id = "160194",
    };
    l0._graph = self;
    l0.Out = self.f_104_Out;
    l0:FromOasis();
end;

function export:f_105_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_D6B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_107_A_eq_B;
    l0.A_neq_B = self.f_107_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_104_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_96_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_120_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_119_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_100_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_121_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_F3_Objective",
        id = "160199",
    };
    l0._graph = self;
    l0.Out = self.f_120_Out;
    l0:FromOasis();
end;

function export:f_121_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_F4_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_111_A_eq_B;
    l0.A_neq_B = self.f_111_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_110_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_D7_Objective",
        id = "160196",
    };
    l0._graph = self;
    l0.Out = self.f_109_Out;
    l0:FromOasis();
end;

function export:f_110_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_E6_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_98_A_eq_B;
    l0.A_neq_B = self.f_98_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_95_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_C7_Objective",
        id = "160190",
    };
    l0._graph = self;
    l0.Out = self.f_96_Out;
    l0:FromOasis();
end;

function export:f_95_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_D3_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_97_A_eq_B;
    l0.A_neq_B = self.f_97_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_86_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_C4B_Objective",
        id = "160186",
    };
    l0._graph = self;
    l0.Out = self.f_85_Out;
    l0:FromOasis();
end;

function export:f_86_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_C5_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_89_A_eq_B;
    l0.A_neq_B = self.f_89_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_C3_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_83_A_eq_B;
    l0.A_neq_B = self.f_83_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_83_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_C3_Objective",
        id = "160161",
    };
    l0._graph = self;
    l0.Out = self.f_84_Out;
    l0:FromOasis();
end;

function export:f_83_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_C4_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_88_A_eq_B;
    l0.A_neq_B = self.f_88_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_117_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_107_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_D6B_Objective",
        id = "160195",
    };
    l0._graph = self;
    l0.Out = self.f_106_Out;
    l0:FromOasis();
end;

function export:f_107_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_D7_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_110_A_eq_B;
    l0.A_neq_B = self.f_110_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_102_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = self.Giver;
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetAsUnusable();
end;

function export:f_94_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_90_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_3_OnUse()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.packageName = "UI\\Singleplayer\\Hud\\Message\\SideQuestBox.feu";
    l0.title = {
        section = "POIs SideQuest Acknowledge",
        item = "POI_SQ_ANIMAL_HEADER",
        id = "142496",
    };
    l0.message = self.HuntDescription;
    l0.footer = {
        section = "POIs SideQuest Acknowledge",
        item = "POI_SQ_REWARD",
        id = "146205",
    };
    l0.param1 = self.MoneyReward;
    l0.param2 = self.XPReward;
    l0.formatParam1 = {
        section = "HUD Popups",
        item = "HUDPOPUP_HUD_REWARD_MONEY",
        id = "159999",
    };
    l0.formatParam2 = {
        section = "HUD Popups",
        item = "HUDPOPUP_HUD_REWARD_XP",
        id = "159998",
    };
    l0:ShowMessage();
end;

function export:f_129_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_G4C_Objective",
        id = "160206",
    };
    l0._graph = self;
    l0.Out = self.f_119_Out;
    l0:FromOasis();
end;

function export:f_129_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "QuestName don't exist";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_73_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[77];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x0018885b";
    l1:ForcePlay_Priority();
end;

function export:f_130_None_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_73_Out;
    l0:In();
end;

function export:f_130_One_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_88_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_C4_Objective",
        id = "160185",
    };
    l0._graph = self;
    l0.Out = self.f_87_Out;
    l0:FromOasis();
end;

function export:f_88_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_C4B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_86_A_eq_B;
    l0.A_neq_B = self.f_86_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/GetMissionRewards.lua")];
    self._sld_xpReward_47 = l0.xpReward;
    self._sld_moneyReward_47 = l0.moneyReward;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = nil;
    l0.Integer = self._sld_moneyReward_47;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:FromInteger();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    self.Giver = l0.Entity;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.QuestName;
    l0._graph = self;
    l0.Locked = self.f_50_Locked;
    l0.Running = self.f_50_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_50_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_125_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:Disable();
end;

function export:f_114_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_113_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_77_Started()
    self = self._graph;
    self:Out();
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_124_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_F5_Objective",
        id = "160201",
    };
    l0._graph = self;
    l0.Out = self.f_128_Out;
    l0:FromOasis();
end;

function export:f_124_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_G2_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_116_A_eq_B;
    l0.A_neq_B = self.f_116_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_12_Started()
    self = self._graph;
    self:Out();
end;

function export:f_128_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_108_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_91_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_C6_Objective",
        id = "160188",
    };
    l0._graph = self;
    l0.Out = self.f_92_Out;
    l0:FromOasis();
end;

function export:f_91_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_C6B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_93_A_eq_B;
    l0.A_neq_B = self.f_93_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_115_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_7_Removed;
    l0:Remove();
end;

function export:f_50_Completed()
    local l0;
    self = self._graph;
    self:en_51();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_50_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:Enable();
end;

function export:f_50_Running()
    local l0;
    self = self._graph;
    self:en_51();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_106_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_116_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_G2_Objective",
        id = "160202",
    };
    l0._graph = self;
    l0.Out = self.f_117_Out;
    l0:FromOasis();
end;

function export:f_116_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_G3_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_112_A_eq_B;
    l0.A_neq_B = self.f_112_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_11_Started()
    self = self._graph;
    self:Out();
end;

function export:f_131_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_135_Out_0;
    l0.Out[1] = self.f_135_Out_1;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[130];
    l0:SQA();
end;

function export:f_122_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_F2_Objective",
        id = "160198",
    };
    l0._graph = self;
    l0.Out = self.f_125_Out;
    l0:FromOasis();
end;

function export:f_122_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_F3_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_121_A_eq_B;
    l0.A_neq_B = self.f_121_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_118_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_G4B_Objective",
        id = "160205",
    };
    l0._graph = self;
    l0.Out = self.f_115_Out;
    l0:FromOasis();
end;

function export:f_118_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_G4C_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_129_A_eq_B;
    l0.A_neq_B = self.f_129_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_101_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_D4_Objective",
        id = "160192",
    };
    l0._graph = self;
    l0.Out = self.f_100_Out;
    l0:FromOasis();
end;

function export:f_101_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_D5_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_103_A_eq_B;
    l0.A_neq_B = self.f_103_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_51_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = self.Giver;
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:SetAsUnusable();
end;

function export:f_103_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQA_D5_Objective",
        id = "160193",
    };
    l0._graph = self;
    l0.Out = self.f_102_Out;
    l0:FromOasis();
end;

function export:f_103_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQA_D6_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_105_A_eq_B;
    l0.A_neq_B = self.f_105_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_87_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_126_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.HuntDescription = l0.Target;
    self:en_46();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:en_46()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_46_Out;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.entityId = self.Giver;
    l0.autoDisable = false;
end;

function export:en_51()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_51_Removed;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
