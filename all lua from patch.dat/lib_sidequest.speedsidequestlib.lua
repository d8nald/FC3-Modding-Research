-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: SpeedSideQuestLib
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Timer" Type="Core|float" />
    <DataIn Name="Trigger" Type="Nomad|entity{}" />
    <DataIn Name="Target" Type="Nomad|entity{}" />
    <DataIn Name="BagID" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare1" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare2" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare3" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare4" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare5" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare6" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlaresMB" Type="Nomad|missionblock" />
    <DataIn Name="ExtraFlaresLayer" Type="Nomad|missionblocklayer" />
    <DataIn Name="ExtraMarker1" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker2" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker3" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker4" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker5" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker6" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare7" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare8" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare9" Type="Nomad|entity{}" />
    <DataIn Name="ExtraFlare10" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker7" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker8" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker9" Type="Nomad|entity{}" />
    <DataIn Name="ExtraMarker10" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/UI/CreateModalDialogBox.lua");
        cbox:RegisterBox("Domino/System/UI/CreateTutorialMsgBox_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAbandon.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ObjectiveTimer_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetSessionGlobal.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
        cbox:RegisterBox("Domino/System/VehicleDamageListener.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Complete = DummyFunction;
    self.Fail = DummyFunction;
    self.FailRetry = DummyFunction;
    self.ePlayer = nil;
    self.Vehicle = nil;
    self.vehicleType = "";
    self.FlareList = {
    };
    self[37] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_37_Disabled;
    l0.ProximityReach = self.f_37_ProximityReach;
    self[41] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_41_Disabled;
    l0.ProximityReach = self.f_41_ProximityReach;
    self[51] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.ProximityReach = self.f_51_ProximityReach;
    self[57] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_57_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[40] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_40_Disabled;
    l0.ProximityReach = self.f_40_ProximityReach;
    self[32] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    self[15] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_15_Out_0;
    l0.ResetOut = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Acknowledged = self.f_12_Acknowledged;
    l0.NotAcknowledged = self.f_12_NotAcknowledged;
    self[9] = cbox:CreateBox("Domino/System/VehicleDamageListener.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0.StateChange = DummyFunction;
    l0.Destroyed = self.f_9_Destroyed;
    l0.OnFire = self.f_9_OnFire;
    l0.Broken = self.f_9_Broken;
    l0.MajorDamage = DummyFunction;
    l0.MinorDamage = DummyFunction;
    l0.Mint = DummyFunction;
    l0.Disabled = self.f_9_Disabled;
    self[62] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
    l0 = self[62];
    l0._graph = self;
    l0.None_Completed = self.f_62_None_Completed;
    l0.One_Completed = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_16_Disabled;
    l0.Near = self.f_16_Near;
    l0.Far = self.f_16_Far;
    self[6] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_6_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[8] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_8_Disabled;
    l0.ProximityReach = self.f_8_ProximityReach;
    self[58] = cbox:CreateBox("Domino/System/UI/CreateModalDialogBox.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Showed = DummyFunction;
    l0.Accept = self.f_58_Accept;
    l0.Cancel = self.f_58_Cancel;
    l0.Closed = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_13_Received;
    self[7] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.ShowOut = self.f_7_ShowOut;
    l0.HideOut = DummyFunction;
    l0.PauseOut = DummyFunction;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_7_TimeElapsed;
    self[30] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_30_Disabled;
    l0.ProximityReach = self.f_30_ProximityReach;
    self[11] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Acknowledged = self.f_11_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[45] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_45_Disabled;
    l0.ProximityReach = self.f_45_ProximityReach;
    self[26] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_26_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    self[47] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_47_Disabled;
    l0.ProximityReach = self.f_47_ProximityReach;
    self[49] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_49_Disabled;
    l0.ProximityReach = self.f_49_ProximityReach;
    self[36] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SpeedSQFlaresManager.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_36_Disabled;
    l0.ProximityReach = self.f_36_ProximityReach;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[32];
    l0.objectiveId = {
        section = "Common",
        item = "SQS_CommonObjectif",
        id = "145647",
    };
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_2_Out_0;
    l0.Out[1] = self.f_2_Out_1;
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:ShutDown();
    self:en_30();
    l0 = self[30];
    l0:Disable();
    self:en_7();
    l0 = self[7];
    l0:Hide();
end;

function export:f_37_Disabled()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:Disable();
end;

function export:f_37_ProximityReach()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:SetMarker();
end;

function export:f_41_Disabled()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = self[36];
    l0:Disable();
end;

function export:f_41_ProximityReach()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:SetMarker();
end;

function export:f_51_ProximityReach()
    local l0;
    self = self._graph;
    self:en_49();
    l0 = self[49];
    l0:SetMarker();
end;

function export:f_52_No()
    local l0;
    self = self._graph;
    self:en_51();
    l0 = self[51];
    l0:SetMarker();
    self:en_51();
    l0:Enable();
end;

function export:f_52_Yes()
    local l0;
    self = self._graph;
    self:en_49();
    l0 = self[49];
    l0:SetMarker();
end;

function export:f_57_OnSit()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_3_Out_0;
    l0.Out[1] = self.f_3_Out_1;
    l0.Out[2] = self.f_3_Out_2;
    l0:In();
end;

function export:f_46_No()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = self[45];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare8;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_48_Yes;
    l0.No = self.f_48_No;
    l0:Entity();
end;

function export:f_46_Yes()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = self[36];
    l0:SetMarker();
end;

function export:f_40_Disabled()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = self[41];
    l0:Disable();
end;

function export:f_40_ProximityReach()
    local l0;
    self = self._graph;
    self:en_37();
    l0 = self[37];
    l0:SetMarker();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:In();
end;

function export:f_3_Out_0()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_3_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.Trigger;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Remove();
end;

function export:f_3_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_43_Yes;
    l0.No = self.f_43_No;
    l0:Entity();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT2_PRO_Play_LP";
    l0._graph = self;
    l0.Started = self.f_28_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:IsAcknowledged();
end;

function export:f_42_No()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare5;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_34_Yes;
    l0.No = self.f_34_No;
    l0:Entity();
end;

function export:f_42_Yes()
    local l0;
    self = self._graph;
    self:en_37();
    l0 = self[37];
    l0:SetMarker();
end;

function export:f_15_Out_0()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.Entities = self.Vehicle;
    l0.id2 = self.Target;
    l0.nearZone = 7;
    l0.farZone = 7;
    l0.use2d = true;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_12_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.message = "SpeedQuest_PlayerInVehicle";
    l0:Enable();
end;

function export:f_12_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:Acknowledge();
end;

function export:f_48_No()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = self[47];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare9;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_50_Yes;
    l0.No = self.f_50_No;
    l0:Entity();
end;

function export:f_48_Yes()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = self[45];
    l0:SetMarker();
end;

function export:f_33_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.ExtraFlaresMB;
    l0.missionLayerId = self.ExtraFlaresLayer;
    l0._graph = self;
    l0.Activated = self.f_29_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = self[15];
    l0:In(0);
end;

function export:f_33_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.Trigger;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_35_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_27_Stopped()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0.packageName = "UI\\Singleplayer\\Hud\\Message\\MessageBox.feu";
    l0.title = {
        section = "Common",
        item = "SQS_QUEST_FAILED",
        id = "167682",
    };
    l0.message = {
        section = "Common",
        item = "SQS_QUEST_FAILED2",
        id = "167683",
    };
    l0:ShowMessage();
end;

function export:f_9_Broken()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_9_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_9_Disabled()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_9_OnFire()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:Send();
end;

function export:f_62_None_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/CreateTutorialMsgBox_v2.lua")];
    l0.packageName = nil;
    l0.prompt = nil;
    l0.title = {
        section = "Tutorials",
        item = "WIKI_TUTO_OPENWORLD_SUPPLY",
        id = "160316",
    };
    l0.message = {
        section = "Tutorials",
        item = "WIKI_TUTO_OPENWORLD_SUPPLY_DESC",
        id = "160317",
    };
    l0.highPriority = true;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_1_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "SQS_SUCCESS";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT2_PRO_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_24_Stopped;
    l0:Stop();
end;

function export:f_16_Disabled()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = self[57];
    l0:Disable();
end;

function export:f_16_Far()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = self[57];
    l0:Disable();
end;

function export:f_16_Near()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = self[57];
    l0:Enable();
end;

function export:f_23_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT2_PRO_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_27_Stopped;
    l0:Stop();
end;

function export:f_39_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare4;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_42_Yes;
    l0.No = self.f_42_No;
    l0:Entity();
    self:en_37();
    l0 = self[37];
    l0:Enable();
end;

function export:f_39_Yes()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:SetMarker();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_43_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = self.ExtraFlaresMB;
    l0.missionLayerId = self.ExtraFlaresLayer;
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_44_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_43_Yes()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_8_Disabled()
    local l0;
    self = self._graph;
    self:en_37();
    l0 = self[37];
    l0:Disable();
end;

function export:f_8_ProximityReach()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:SetMarker();
end;

function export:f_58_Accept()
    self = self._graph;
    self:Fail();
end;

function export:f_58_Cancel()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionAbandon.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_13_Received()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:In();
end;

function export:f_44_Deactivated()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0:Stop();
end;

function export:f_2_Out_0()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_2_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.Target;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_23_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_7_ShowOut()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_33_Yes;
    l0.No = self.f_33_No;
    l0:Entity();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_34_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare6;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_5_Yes;
    l0.No = self.f_5_No;
    l0:Entity();
    self:en_41();
    l0 = self[41];
    l0:Enable();
end;

function export:f_34_Yes()
    local l0;
    self = self._graph;
    self:en_40();
    l0 = self[40];
    l0:SetMarker();
end;

function export:f_28_Started()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Enable();
end;

function export:f_30_Disabled()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Disable();
end;

function export:f_30_ProximityReach()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.Trigger;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_11_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0.Value = true;
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0:In();
end;

function export:f_45_Disabled()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = self[47];
    l0:Disable();
end;

function export:f_45_ProximityReach()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = self[36];
    l0:SetMarker();
end;

function export:f_26_Out_0()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[6];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_24_Stopped()
    self = self._graph;
    self:Complete();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Show();
    l0 = self[62];
    l0:SQS();
end;

function export:f_50_No()
    local l0;
    self = self._graph;
    self:en_49();
    l0 = self[49];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare10;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_52_Yes;
    l0.No = self.f_52_No;
    l0:Entity();
end;

function export:f_50_Yes()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = self[47];
    l0:SetMarker();
end;

function export:f_47_Disabled()
    local l0;
    self = self._graph;
    self:en_49();
    l0 = self[49];
    l0:Disable();
end;

function export:f_47_ProximityReach()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = self[45];
    l0:SetMarker();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.Vehicle = l0.vehicle;
    self.vehicleType = l0.vehicleType;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.Vehicle;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:SetExitEnabled();
end;

function export:f_29_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare2;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_31_Yes;
    l0.No = self.f_31_No;
    l0:Entity();
    self:en_30();
    l0 = self[30];
    l0:Enable();
end;

function export:f_49_Disabled()
    local l0;
    self = self._graph;
    self:en_51();
    l0 = self[51];
    l0:Disable();
end;

function export:f_49_ProximityReach()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = self[47];
    l0:SetMarker();
end;

function export:f_5_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare7;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_46_Yes;
    l0.No = self.f_46_No;
    l0:Entity();
    self:en_36();
    l0 = self[36];
    l0:Enable();
end;

function export:f_5_Yes()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = self[41];
    l0:SetMarker();
end;

function export:f_36_Disabled()
    local l0;
    self = self._graph;
    self:en_45();
    l0 = self[45];
    l0:Disable();
end;

function export:f_36_ProximityReach()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = self[41];
    l0:SetMarker();
end;

function export:f_35_Added()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:In(0);
end;

function export:f_31_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.ExtraFlare3;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_39_Yes;
    l0.No = self.f_39_No;
    l0:Entity();
    self:en_8();
    l0 = self[8];
    l0:Enable();
end;

function export:f_31_Yes()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:SetMarker();
end;

function export:en_25()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_25_Out;
end;

function export:en_22()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
end;

function export:en_37()
    local l0;
    l0 = self[37];
    l0.Flare = self.ExtraFlare3;
    l0.Marker = self.ExtraMarker3;
    l0.Vehicle = self.Vehicle;
end;

function export:en_41()
    local l0;
    l0 = self[41];
    l0.Flare = self.ExtraFlare5;
    l0.Marker = self.ExtraMarker5;
    l0.Vehicle = self.Vehicle;
end;

function export:en_51()
    local l0;
    l0 = self[51];
    l0.Flare = self.ExtraFlare10;
    l0.Marker = self.ExtraMarker10;
    l0.Vehicle = self.Vehicle;
end;

function export:en_57()
    local l0;
    l0 = self[57];
    l0.vehicle = self.Vehicle;
    l0.autoDisable = false;
end;

function export:en_40()
    local l0;
    l0 = self[40];
    l0.Flare = self.ExtraFlare4;
    l0.Marker = self.ExtraMarker4;
    l0.Vehicle = self.Vehicle;
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.Vehicle = self.Vehicle;
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.Target;
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_1_Stopped;
    l0.Cleaned = DummyFunction;
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.Flare = self.ExtraFlare2;
    l0.Marker = self.ExtraMarker2;
    l0.Vehicle = self.Vehicle;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.time = self.Timer;
end;

function export:en_30()
    local l0;
    l0 = self[30];
    l0.Flare = self.ExtraFlare1;
    l0.Marker = self.ExtraMarker1;
    l0.Vehicle = self.Vehicle;
end;

function export:en_45()
    local l0;
    l0 = self[45];
    l0.Flare = self.ExtraFlare7;
    l0.Marker = self.ExtraMarker7;
    l0.Vehicle = self.Vehicle;
end;

function export:en_47()
    local l0;
    l0 = self[47];
    l0.Flare = self.ExtraFlare8;
    l0.Marker = self.ExtraMarker8;
    l0.Vehicle = self.Vehicle;
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
end;

function export:en_49()
    local l0;
    l0 = self[49];
    l0.Flare = self.ExtraFlare9;
    l0.Marker = self.ExtraMarker9;
    l0.Vehicle = self.Vehicle;
end;

function export:en_36()
    local l0;
    l0 = self[36];
    l0.Flare = self.ExtraFlare6;
    l0.Marker = self.ExtraMarker6;
    l0.Vehicle = self.Vehicle;
end;

-- Empty out anchor definitions
function export:Complete()
    
end;
function export:Fail()
    
end;
function export:FailRetry()
    
end;
_compilerVersion = 24;
