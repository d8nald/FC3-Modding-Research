-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: WantedSideQuestGiver
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="QuestName" Type="Core|string" />
    <DataIn Name="MarkerID" Type="Nomad|entity{}" />
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
        cbox:LoadResource([[sndres0x0018ebea]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018ebea.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018eb93]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018ec69]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018ec69.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018877a]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018877a.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018eb93.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Giver = nil;
    self.MoneyReward = "";
    self.XPReward = "";
    self.WantedDescription = {
        section = "",
        item = "",
        id = "",
    };
    self[1] = cbox:CreateBox("Domino/System/UI/CreateModalDialogBox.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Showed = DummyFunction;
    l0.Accept = self.f_1_Accept;
    l0.Cancel = DummyFunction;
    l0.Closed = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self[10];
    l0._graph = self;
    l0._DynamicAnchors = {
        Probability = 3,
        Output = 3,
    };
    l0.Out = DummyFunction;
    l0.None = DummyFunction;
    l0.Output[0] = self.f_10_Output_0;
    l0.Output[1] = self.f_10_Output_1;
    l0.Output[2] = self.f_10_Output_2;
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
    self[2] = cbox:CreateBox("Domino/System/UsableEntityListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnUse = self.f_2_OnUse;
    self[49] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
    l0 = self[49];
    l0._graph = self;
    l0.None_Completed = self.f_49_None_Completed;
    l0.One_Completed = self.f_49_One_Completed;
    self[16] = cbox:CreateBox("Domino/System/GetScriptEntity.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    self[30] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Started = self.f_30_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = self.f_9_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[16];
    l0:In();
end;

function export:f_100_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/GetMissionRewards.lua")];
    l0.MissionName = self.QuestName;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_18_Out()
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

function export:f_4_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = self.Giver;
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:SetAsUnusable();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/GetMissionRewards.lua")];
    self._sld_xpReward_13 = l0.xpReward;
    self._sld_moneyReward_13 = l0.moneyReward;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = nil;
    l0.Integer = self._sld_moneyReward_13;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:FromInteger();
end;

function export:f_1_Accept()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_101_Out_0;
    l0.Out[1] = self.f_101_Out_1;
    l0:In();
    self:en_2();
    l0 = self[2];
    l0:Disable();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:Disable();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_87_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_C6_Objective",
        id = "166400",
    };
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:FromOasis();
end;

function export:f_87_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C6B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_83_A_eq_B;
    l0.A_neq_B = self.f_83_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_96_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_55_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_D5_Objective",
        id = "166464",
    };
    l0._graph = self;
    l0.Out = self.f_86_Out;
    l0:FromOasis();
end;

function export:f_55_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_D6_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_52_A_eq_B;
    l0.A_neq_B = self.f_52_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_85_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_F5_Objective",
        id = "166468",
    };
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0:FromOasis();
end;

function export:f_85_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_G2_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_61_A_eq_B;
    l0.A_neq_B = self.f_61_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_10_Output_0()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.SoundId = "0x0018ec69";
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_1()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.SoundId = "0x0018ebea";
    l0:ForcePlay_Priority();
end;

function export:f_10_Output_2()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.SoundId = "0x0018eb93";
    l0:ForcePlay_Priority();
end;

function export:f_12_Started()
    self = self._graph;
    self:Out();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C3_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_74_A_eq_B;
    l0.A_neq_B = self.f_74_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_94_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_C4_Objective",
        id = "166387",
    };
    l0._graph = self;
    l0.Out = self.f_77_Out;
    l0:FromOasis();
end;

function export:f_94_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C4B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_64_A_eq_B;
    l0.A_neq_B = self.f_64_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_11_Started()
    self = self._graph;
    self:Out();
end;

function export:f_48_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_C7_Objective",
        id = "166405",
    };
    l0._graph = self;
    l0.Out = self.f_95_Out;
    l0:FromOasis();
end;

function export:f_48_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_D3_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_93_A_eq_B;
    l0.A_neq_B = self.f_93_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_73_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SCQ_C3B_Objective",
        id = "166193",
    };
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0:FromOasis();
end;

function export:f_73_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C4_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_94_A_eq_B;
    l0.A_neq_B = self.f_94_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_2_OnUse()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.packageName = "UI\\Singleplayer\\Hud\\Message\\SideQuestBox.feu";
    l0.title = {
        section = "POIs SideQuest Acknowledge",
        item = "POI_SQ_WANTED_HEADER",
        id = "142498",
    };
    l0.message = self.WantedDescription;
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

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.MoneyReward = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = nil;
    l0.Integer = self._sld_xpReward_13;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:FromInteger();
end;

function export:f_99_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_E6_Objective",
        id = "166467",
    };
    l0._graph = self;
    l0.Out = self.f_98_Out;
    l0:FromOasis();
end;

function export:f_99_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_F2_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_53_A_eq_B;
    l0.A_neq_B = self.f_53_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_71_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_C4C_Objective",
        id = "166397",
    };
    l0._graph = self;
    l0.Out = self.f_90_Out;
    l0:FromOasis();
end;

function export:f_71_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C5_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_91_A_eq_B;
    l0.A_neq_B = self.f_91_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_49_None_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:In();
end;

function export:f_49_One_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_17_Completed()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_17_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:Enable();
end;

function export:f_17_Running()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_57_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_F4_Objective",
        id = "166469",
    };
    l0._graph = self;
    l0.Out = self.f_81_Out;
    l0:FromOasis();
end;

function export:f_57_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_F5_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_85_A_eq_B;
    l0.A_neq_B = self.f_85_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_58_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_G4B_Objective",
        id = "166473",
    };
    l0._graph = self;
    l0.Out = self.f_78_Out;
    l0:FromOasis();
end;

function export:f_58_A_neq_B()
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

function export:f_20_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = self.Giver;
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:SetAsUnusable();
end;

function export:f_93_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_D3_Objective",
        id = "166406",
    };
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:FromOasis();
end;

function export:f_93_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_D4_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_69_A_eq_B;
    l0.A_neq_B = self.f_69_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_77_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_59_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_F3_Objective",
        id = "166470",
    };
    l0._graph = self;
    l0.Out = self.f_89_Out;
    l0:FromOasis();
end;

function export:f_59_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_F4_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_57_A_eq_B;
    l0.A_neq_B = self.f_57_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_98_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_53_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_F2_Objective",
        id = "166471",
    };
    l0._graph = self;
    l0.Out = self.f_92_Out;
    l0:FromOasis();
end;

function export:f_53_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_F3_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_59_A_eq_B;
    l0.A_neq_B = self.f_59_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.XPReward = l0.Target;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_88_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_70_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_69_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_D4_Objective",
        id = "166410",
    };
    l0._graph = self;
    l0.Out = self.f_62_Out;
    l0:FromOasis();
end;

function export:f_69_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_D4B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_56_A_eq_B;
    l0.A_neq_B = self.f_56_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_8_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[12];
    l1.Group = l0.LocalPlayer;
    l1 = self[11];
    l1.Group = l0.LocalPlayer;
    l1 = self[9];
    l1.Group = l0.LocalPlayer;
    l0 = self[10];
    l0:In();
end;

function export:f_90_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_91_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_C5_Objective",
        id = "166398",
    };
    l0._graph = self;
    l0.Out = self.f_84_Out;
    l0:FromOasis();
end;

function export:f_91_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C6_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_87_A_eq_B;
    l0.A_neq_B = self.f_87_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0:SQW();
end;

function export:f_29_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[30];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x0018877a";
    l1:ForcePlay_Priority();
end;

function export:f_81_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_52_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_D6_objective",
        id = "166465",
    };
    l0._graph = self;
    l0.Out = self.f_72_Out;
    l0:FromOasis();
end;

function export:f_52_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_D7_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_97_A_eq_B;
    l0.A_neq_B = self.f_97_A_neq_B;
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
        item = "SQW_D7_Objective",
        id = "166466",
    };
    l0._graph = self;
    l0.Out = self.f_96_Out;
    l0:FromOasis();
end;

function export:f_97_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_E6_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_99_A_eq_B;
    l0.A_neq_B = self.f_99_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    self.Giver = l0.Entity;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.QuestName;
    l0._graph = self;
    l0.Locked = self.f_17_Locked;
    l0.Running = self.f_17_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_17_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_61_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_G2_Objective",
        id = "166475",
    };
    l0._graph = self;
    l0.Out = self.f_68_Out;
    l0:FromOasis();
end;

function export:f_61_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_G3_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_82_A_eq_B;
    l0.A_neq_B = self.f_82_A_neq_B;
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
        item = "SQW_C6B_Objective",
        id = "166401",
    };
    l0._graph = self;
    l0.Out = self.f_79_Out;
    l0:FromOasis();
end;

function export:f_83_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C7_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_48_A_eq_B;
    l0.A_neq_B = self.f_48_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_101_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HACK_CampaignPrimarySoftSave.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Save();
end;

function export:f_101_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = self.QuestName;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_30_Started()
    self = self._graph;
    self:Out();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_Started()
    self = self._graph;
    self:Out();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_4_Removed;
    l0:Remove();
end;

function export:f_64_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_C4B_Objective",
        id = "166396",
    };
    l0._graph = self;
    l0.Out = self.f_80_Out;
    l0:FromOasis();
end;

function export:f_64_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C4C_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_71_A_eq_B;
    l0.A_neq_B = self.f_71_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_82_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_G3_Objective",
        id = "166474",
    };
    l0._graph = self;
    l0.Out = self.f_67_Out;
    l0:FromOasis();
end;

function export:f_82_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_G4_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_75_A_eq_B;
    l0.A_neq_B = self.f_75_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_80_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_56_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_D4B_Objective",
        id = "166411",
    };
    l0._graph = self;
    l0.Out = self.f_70_Out;
    l0:FromOasis();
end;

function export:f_56_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_D5_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_55_A_eq_B;
    l0.A_neq_B = self.f_55_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_75_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_G4_Objective",
        id = "166472",
    };
    l0._graph = self;
    l0.Out = self.f_65_Out;
    l0:FromOasis();
end;

function export:f_75_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_G4B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_58_A_eq_B;
    l0.A_neq_B = self.f_58_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_62_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.WantedDescription = l0.Target;
    self:en_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_74_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Description",
        item = "SQW_C3_Objective",
        id = "166192",
    };
    l0._graph = self;
    l0.Out = self.f_88_Out;
    l0:FromOasis();
end;

function export:f_74_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.QuestName;
    l0.B = "SQW_C3B_MAIN";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_73_A_eq_B;
    l0.A_neq_B = self.f_73_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:en_100()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_100_Out;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.entityId = self.Giver;
    l0.autoDisable = false;
end;

function export:en_20()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_20_Removed;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
