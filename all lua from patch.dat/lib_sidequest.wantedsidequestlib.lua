-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: WantedSideQuestLib
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="QuestObjectiveMarker" Type="Nomad|entity{}" />
    <DataIn Name="MissionAckZone" Type="Nomad|entity{}" />
    <DataIn Name="TargetToKill_0" Type="Nomad|entity{}" />
    <DataIn Name="TargetToKill_1" Type="Nomad|entity{}" />
    <DataIn Name="RestrictedAreaMB" Type="Nomad|missionblock" />
    <DataIn Name="RestrictedAreaLayer" Type="Nomad|missionblocklayer" />
    <DataIn Name="bSouthIsland" Type="Core|bool" />
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
        cbox:RegisterBox("Domino/System/Coop/Group/AddToGroup.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/UI/CreateTutorialMsgBox_v2.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/IsPawnAlive.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SetOasis.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetSessionGlobal.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.WantedSQDeathCheck.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Acknowledged = DummyFunction;
    self.TakedownFail = DummyFunction;
    self.WantedTargets = nil;
    self[7] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Added = self.f_55_Added;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_4_Enter;
    l0.Leave = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_18_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[24] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.WantedSQDeathCheck.lua");
    l0 = self[24];
    l0._graph = self;
    l0.KilledSuccess = self.f_24_KilledSuccess;
    l0.KilledFail = self.f_24_KilledFail;
    self[42] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.WantedSQDeathCheck.lua");
    l0 = self[42];
    l0._graph = self;
    l0.KilledSuccess = self.f_42_KilledSuccess;
    l0.KilledFail = self.f_42_KilledFail;
    self[8] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_8_Out_0;
    l0.ResetOut = DummyFunction;
    self[54] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
    l0 = self[54];
    l0._graph = self;
    l0.None_Completed = self.f_54_None_Completed;
    l0.One_Completed = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out = self.f_50_Out;
    self[34] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[34];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_34_Out;
    self[17] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    self[11] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_11_MemberRemoved;
    self[23] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_23_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Acknowledged = self.f_5_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bSouthIsland;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_12_A_is_True;
    l0.A_is_False = self.f_12_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_16_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_16_Out_1()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.triggerId = self.MissionAckZone;
    l0:Enable();
end;

function export:f_55_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_56_Out_0;
    l0.Out[1] = self.f_56_Out_1;
    l0:In();
end;

function export:f_25_No()
    local l0;
    self = self._graph;
    self:en_23();
    l0 = self[23];
    l0:Disable();
    self:en_18();
    l0 = self[18];
    l0:Disable();
end;

function export:f_25_Yes()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:Disable();
end;

function export:f_49_No()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.objectiveId = {
        section = "Common",
        item = "SQW_CommonPluralCommanders",
        id = "166840",
    };
    l0:SetMissionObjective();
end;

function export:f_49_Yes()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.objectiveId = {
        section = "Common",
        item = "SQW_CommonSingleCommander",
        id = "166839",
    };
    l0:SetMissionObjective();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_31_Out_0;
    l0.Out[1] = self.f_31_Out_1;
    l0:In();
end;

function export:f_18_Killed()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:FromOasis();
end;

function export:f_2_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "Fail_Need_Knife",
        id = "166793",
    };
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:FromOasis();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:Condition(1);
    self:en_24();
    l0 = self[24];
    l0:Enable();
end;

function export:f_24_KilledFail()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_24_KilledSuccess()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:Condition(0);
end;

function export:f_21_No()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0.Pawn = self.TargetToKill_1;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_28_True;
    l0.False = self.f_28_False;
    l0:In();
end;

function export:f_21_Yes()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0:In();
end;

function export:f_28_False()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:FromOasis();
end;

function export:f_28_True()
    local l0;
    self = self._graph;
    self:en_23();
    l0 = self[23];
    l0:Enable();
end;

function export:f_12_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
end;

function export:f_12_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_190_MAIN";
    l0._graph = self;
    l0.Locked = self.f_6_Locked;
    l0.Running = self.f_6_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_6_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = self.f_6_Hidden;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.TargetToKill_1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_21_Yes;
    l0.No = self.f_21_No;
    l0:Entity();
end;

function export:f_42_KilledFail()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_42_KilledSuccess()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:Condition(1);
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:TakedownFail();
end;

function export:f_8_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_16_Out_0;
    l0.Out[1] = self.f_16_Out_1;
    l0:In();
end;

function export:f_56_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.TargetToKill_1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_49_Yes;
    l0.No = self.f_49_No;
    l0:Entity();
end;

function export:f_56_Out_1()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0:SQW();
end;

function export:f_54_None_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/CreateTutorialMsgBox_v2.lua")];
    l0.packageName = nil;
    l0.prompt = nil;
    l0.title = {
        section = "Tutorials",
        item = "WIKI_TUTO_SYSTEMS_TAGGING",
        id = "110845",
    };
    l0.message = {
        section = "Tutorials",
        item = "WIKI_TUTO_SYSTEMS_TAGGING_DESC",
        id = "110924",
    };
    l0.highPriority = true;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.TargetToKill_0;
    l0.Group = self.WantedTargets;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
    self:en_24();
    l0 = self[24];
    l0:Enable();
end;

function export:f_9_Completed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
end;

function export:f_9_Hidden()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_9_Locked()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_9_Running()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:Activate();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_SideQuest_Wanted";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_33_Stopped;
    l0:Stop();
end;

function export:f_53_Started()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.Marker = self.QuestObjectiveMarker;
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_SideQuest_Wanted";
    l0._graph = self;
    l0.Started = self.f_53_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
    self:Acknowledged();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Send();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.target = self.TargetToKill_1;
    l0:Enable();
    l0 = self[11];
    l0.group = self.WantedTargets;
    l0:Enable();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.TargetToKill_1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_25_Yes;
    l0.No = self.f_25_No;
    l0:Entity();
end;

function export:f_11_MemberRemoved()
    local l0, l1;
    self = self._graph;
    l0 = self[11];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 1;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = DummyFunction;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = self.f_1_A_ge_B;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.TargetToKill_1;
    l0.Group = self.WantedTargets;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:f_23_Killed()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:FromOasis();
end;

function export:f_3_Activated()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:TakedownFail();
end;

function export:f_33_Stopped()
    local l0;
    self = self._graph;
    self:Out();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_31_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:In();
end;

function export:f_31_Out_1()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Acknowledge();
end;

function export:f_5_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0.Value = true;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_27_False()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0:FromOasis();
end;

function export:f_27_True()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:Enable();
end;

function export:f_6_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_220_MAIN";
    l0._graph = self;
    l0.Locked = self.f_9_Locked;
    l0.Running = self.f_9_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_9_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = self.f_9_Hidden;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_6_Hidden()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
end;

function export:f_6_Locked()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
end;

function export:f_6_Running()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
end;

function export:f_1_A_ge_B()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.objectiveId = {
        section = "Common",
        item = "SQW_CommonPluralCommanders",
        id = "166840",
    };
    l0.FlushPreviousObjectives = true;
    l0:SetMissionObjective();
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.pawns = self.TargetToKill_0;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_SideQuest_Wanted";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_2_Stopped;
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.target = self.TargetToKill_0;
end;

function export:en_23()
    local l0;
    l0 = self[23];
    l0.pawns = self.TargetToKill_1;
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.RestrictedAreaMB;
    l0.missionLayerId = self.RestrictedAreaLayer;
    l0._graph = self;
    l0.Activated = self.f_3_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "Fail_Need_Knife",
        id = "166793",
    };
    l0._graph = self;
    l0.Out = self.f_13_Out;
end;

function export:en_27()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l0.Pawn = self.TargetToKill_0;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_27_True;
    l0.False = self.f_27_False;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Acknowledged()
    
end;
function export:TakedownFail()
    
end;
_compilerVersion = 24;
