-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: SpeedSideQuestGiver
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="QuestName" Type="Core|string" />
    <DataIn Name="MarkerID" Type="Nomad|entity{}" />
    <DataIn Name="MobileMarkerID" Type="Nomad|entity{}" />
    <DataIn Name="BagID" Type="Nomad|entity{}" />
    <DataIn Name="BagTypeId" Type="Core|int" />
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
        cbox:RegisterBox("Domino/System/Bind_v2.lua");
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/UI/CreateModalDialogBox.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DiplayTextModifier.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/ForceExitVehicle.lua");
        cbox:RegisterBox("Domino/System/Player/ForceInVehicle.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/GetMissionRewards.lua");
        cbox:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cbox:RegisterBox("Domino/System/GetScriptEntity.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Random.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetString.lua");
        cbox:RegisterBox("Domino/System/ShimmerModifier.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Spawner_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleLockPosition.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleSeatModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c03c9.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001c03b5]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c03a6.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001c03c4]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c03b5.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c03c4.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001c03c9]], "CSoundResource");
        cbox:LoadResource([[sndres0x001c03bf]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c03bf.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001c03a6]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Giver = nil;
    self.Vehicle = nil;
    self.VehicleType = "";
    self.MoneyReward = "";
    self.XPReward = "";
    self.bIsCancelingMission = false;
    self.Bag = nil;
    self[6] = cbox:CreateBox("Domino/System/GetScriptEntity.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[85] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[85];
    l0._graph = self;
    l0.Enabled = self.f_85_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_85_Received;
    self[2] = cbox:CreateBox("Domino/System/UI/CreateModalDialogBox.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Showed = DummyFunction;
    l0.Accept = self.f_2_Accept;
    l0.Cancel = self.f_2_Cancel;
    l0.Closed = DummyFunction;
    self[63] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_63_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Started = self.f_25_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[86] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[86];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_86_Loaded;
    l0.Unloaded = DummyFunction;
    self[82] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[82];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Started = self.f_28_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[84] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[84];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_84_Loaded;
    l0.Unloaded = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self[27];
    l0._graph = self;
    l0._DynamicAnchors = {
        Probability = 4,
        Output = 4,
    };
    l0.Out = DummyFunction;
    l0.None = DummyFunction;
    l0.Output[0] = self.f_27_Output_0;
    l0.Output[1] = self.f_27_Output_1;
    l0.Output[2] = self.f_27_Output_2;
    l0.Output[3] = self.f_27_Output_3;
    self[16] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_16_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Started = self.f_24_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_13_OnSit;
    l0.OnStandUp = self.f_13_OnStandUp;
    l0.OnChangeSeat = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Started = self.f_57_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[94] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[94];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_94_Out_0;
    l0.ResetOut = DummyFunction;
    self[97] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[97];
    l0._graph = self;
    l0.Started = self.f_97_Started;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[60] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestComplete.lua");
    l0 = self[60];
    l0._graph = self;
    l0.None_Completed = self.f_60_None_Completed;
    l0.One_Completed = self.f_60_One_Completed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[6];
    l0:In();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.MoneyReward = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = nil;
    l0.Integer = self._sld_xpReward_29;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:FromInteger();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.Giver = l0.Entity;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.QuestName;
    l0._graph = self;
    l0.Locked = self.f_32_Locked;
    l0.Running = self.f_32_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_32_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_93_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = "FC3_Vehicles:Attachments/DeliveryBag_03";
    l0.target = self.Giver;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_95_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_93_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = "FC3_Vehicles:Attachments/DeliveryBag_01";
    l0.target = self.Giver;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_90_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_56_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[57];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x001c03b5";
    l1:ForcePlay_Priority();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/GetMissionRewards.lua")];
    self._sld_xpReward_29 = l0.xpReward;
    self._sld_moneyReward_29 = l0.moneyReward;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = nil;
    l0.Integer = self._sld_moneyReward_29;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:FromInteger();
end;

function export:f_85_Enabled()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0:SQS();
end;

function export:f_85_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = self.Bag;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_70_A_is_False()
    local l0;
    self = self._graph;
    self:en_82();
    l0 = self[82];
    l0:DisplayText();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MobileMarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_23_Locked()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0:Enable();
end;

function export:f_23_Running()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0:Enable();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.Giver;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Remove();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Enable();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.BagTypeId;
    l0.B = 2;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_74_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_74_A_ne_B;
    l0:In();
    l0 = self[84];
    l0.entityId = self.MobileMarkerID;
    l0:Enable();
end;

function export:f_2_Accept()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = self.QuestName;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.Giver;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_2_Cancel()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.Giver;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Remove();
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_69_Out;
    l0:True();
end;

function export:f_80_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Bag = l0.spawned;
    l0 = self[94];
    l0:In(0);
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

function export:f_63_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_65();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:In();
end;

function export:f_32_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MobileMarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_34_Removed;
    l0:Remove();
end;

function export:f_32_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/GetMissionRewards.lua")];
    l0.MissionName = self.QuestName;
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:In();
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_32_Running()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.Giver;
    l0._graph = self;
    l0.Out = self.f_64_Out;
    l0:SetExitDisabled();
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_90_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Bag = l0.spawned;
    l0 = self[94];
    l0:In(0);
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[85];
    l0.message = "SQS_SUCCESS";
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Bag;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_89_Out;
    l0:Enable();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bIsCancelingMission;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_70_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_74_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = "FC3_Vehicles:Attachments/DeliveryBag_02";
    l0.target = self.Giver;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_80_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_74_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.BagTypeId;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_93_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_93_A_ne_B;
    l0:In();
end;

function export:f_26_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[24];
    l1.Group = l0.LocalPlayer;
    l1 = self[28];
    l1.Group = l0.LocalPlayer;
    l1 = self[25];
    l1.Group = l0.LocalPlayer;
    l1 = self[97];
    l1.Group = l0.LocalPlayer;
    l0 = self[27];
    l0:In();
end;

function export:f_81_Completed()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_81_Hidden()
    local l0;
    self = self._graph;
    self:en_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_81_Locked()
    local l0;
    self = self._graph;
    self:en_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_81_Running()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_25_Started()
    self = self._graph;
    self:Out();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bIsCancelingMission = l0.Target;
    self:en_13();
    l0 = self[13];
    l0:Enable();
end;

function export:f_86_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = self.Giver;
    l0.EntityB = self.Bag;
    l0.BoneName = "DeliveryBone";
    l0.RemoveOffset = true;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Bind();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.VehicleType = l0.vehicleType;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.VehicleType;
    l0.B = "NoVehicle";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_12_A_eq_B;
    l0.A_neq_B = self.f_12_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Bag;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_73_Out;
    l0:Disable();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 2;
    l0.SeatIndex = nil;
    l0.vehicleEntity = self.Giver;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0.seconds = 2;
    l0.loop = true;
    l0.nbLoop = 10;
    l0:Start();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:In();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle.lua")];
    l0.SeatType = nil;
    l0.SeatIndex = nil;
    l0.vehicleEntity = self.Giver;
    l0._graph = self;
    l0.Out = self.f_62_Out;
    l0:In();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.Giver;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:SetAsDestructable();
end;

function export:f_4_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleLockPosition.lua")];
    l0.Vehicle = self.Giver;
    l0.Locked = false;
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:Set();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleLockPosition.lua")];
    l0.Vehicle = self.Giver;
    l0.Locked = true;
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:Set();
end;

function export:f_28_Started()
    self = self._graph;
    self:Out();
end;

function export:f_34_Removed()
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
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Bag;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_84_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = self.Giver;
    l0.EntityB = self.MobileMarkerID;
    l0.BoneName = "DeliveryBone";
    l0.RemoveOffset = true;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Bind();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = nil;
    l0.vehicleEntity = self.Giver;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_3_Locked()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.packageName = "UI\\Singleplayer\\Hud\\Message\\SideQuestBox.feu";
    l0.title = {
        section = "POIs SideQuest Acknowledge",
        item = "POI_SQ_SPEED_HEADER",
        id = "141434",
    };
    l0.message = {
        section = "POIs SideQuest Acknowledge",
        item = "POI_SQ_SPEED_DESC",
        id = "146204",
    };
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

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.Giver;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:SetAsIndestructable();
end;

function export:f_27_Output_0()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.SoundId = "0x001c03c9";
    l0:ForcePlay_Priority();
end;

function export:f_27_Output_1()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.SoundId = "0x001c03a6";
    l0:ForcePlay_Priority();
end;

function export:f_27_Output_2()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.SoundId = "0x001c03bf";
    l0:ForcePlay_Priority();
end;

function export:f_27_Output_3()
    local l0;
    self = self._graph;
    l0 = self[97];
    l0.SoundId = "0x001c03c4";
    l0:ForcePlay_Priority();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:In();
end;

function export:f_12_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.Giver;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:SetAsUsable();
end;

function export:f_12_A_neq_B()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.seconds = 0.1;
    l0:Start();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    self:en_82();
    l0 = self[82];
    l0:ClearText();
end;

function export:f_24_Started()
    self = self._graph;
    self:Out();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle.lua")];
    l0.vehicle = self.Giver;
    l0.pawn = nil;
    l0.noFail = nil;
    l0._graph = self;
    l0.ForceExitted = DummyFunction;
    l0.TryExitted = self.f_17_TryExitted;
    l0:TryExit();
end;

function export:f_13_OnSit()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.QuestName;
    l0._graph = self;
    l0.Locked = self.f_3_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_13_OnStandUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = self.QuestName;
    l0._graph = self;
    l0.Locked = self.f_23_Locked;
    l0.Running = self.f_23_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_57_Started()
    self = self._graph;
    self:Out();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bIsCancelingMission = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.Giver;
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:SetExitEnabled();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetExitDisabled();
end;

function export:f_62_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Remove();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MobileMarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_67_Removed;
    l0:Remove();
end;

function export:f_79_Completed()
    local l0;
    self = self._graph;
    self:en_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_79_Hidden()
    local l0;
    self = self._graph;
    self:en_61();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_79_Locked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_150_MAIN";
    l0._graph = self;
    l0.Locked = self.f_81_Locked;
    l0.Running = self.f_81_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_81_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = self.f_81_Hidden;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_79_Running()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_15_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:Disable();
end;

function export:f_66_Out()
    local l0;
    self = self._graph;
    self:en_65();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:In();
    self:en_21();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0:SetExitDisabled();
end;

function export:f_94_Out_0()
    local l0;
    self = self._graph;
    l0 = self[86];
    l0.entityId = self.Bag;
    l0:Enable();
end;

function export:f_67_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Bag;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_66_Out;
    l0:Disable();
end;

function export:f_97_Started()
    self = self._graph;
    self:Out();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Bag = l0.spawned;
    l0 = self[94];
    l0:In(0);
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.XPReward = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.BagID;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:Enable();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_71_Out;
    l0:False();
end;

function export:f_17_TryExitted()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.Giver;
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:SetAsUnusable();
end;

function export:f_60_None_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:In();
end;

function export:f_60_One_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:In();
end;

function export:en_21()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.Giver;
    l0._graph = self;
    l0.Out = self.f_21_Out;
end;

function export:en_61()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_61_Out;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = self.Giver;
    l0.R = nil;
    l0.G = nil;
    l0.B = nil;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
end;

function export:en_82()
    local l0;
    l0 = self[82];
    l0.textId = {
        section = "Common",
        item = "SQS_CommonVehicle",
        id = "166477",
    };
    l0.priority = 3;
    l0.displaySlotId = 1;
    l0.displayTimer = 500;
end;

function export:en_65()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "SpeedQuest_PlayerInVehicle";
    l0._graph = self;
    l0.Out = self.f_65_Out;
end;

function export:en_98()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.vehicle = self.Giver;
    l0.autoDisable = false;
end;

function export:en_79()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_160_MAIN";
    l0._graph = self;
    l0.Locked = self.f_79_Locked;
    l0.Running = self.f_79_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_79_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = self.f_79_Hidden;
    l0.Invalid = DummyFunction;
end;

function export:en_15()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.MobileMarkerID;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_15_Removed;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
