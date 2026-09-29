-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_170/jas_170_b05/jas_170_b05.domino.xml
-- User graph: JAS_170_B05
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
        cbox:RegisterBox("Domino/System/Bind_v2.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/UI/CreateTutorialMsgBox_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_B05/JAS_170_B05.JAS_170_Wingsuit_Woohoo.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_B05/JAS_170_B05.LandingEncounterSpawner.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_B05/JAS_170_B05.LandingListener.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/NoWeaponMode.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleState.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/StanceListener.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001c4aad.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00165584.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00165584]], "CSoundResource");
        cbox:LoadResource([[sndres0x001c4aad]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ePlayer = nil;
    self.Wingsuit_Landing_Group = 0;
    self.IsBypassed = true;
    self[15] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    self[53] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_53_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Acknowledged = self.f_2_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_14_Near;
    l0.Far = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_52_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Enabled = self.f_33_Enabled;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_33_Near;
    l0.Far = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Enabled = self.f_48_Enabled;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_48_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_7_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[46];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_46_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Enabled = self.f_28_Enabled;
    l0.Disabled = DummyFunction;
    l0.OnSit = DummyFunction;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = self.f_28_OnChangeSeat;
    self[64] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[64];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_64_Out;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[1];
    l0._graph = self;
    self[43] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Out = self.f_43_Out;
    self[22] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Started = self.f_22_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Enabled = self.f_36_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_36_MemberAdded;
    l0.MemberRemoved = self.f_36_MemberRemoved;
    self[40] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[40];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_40_Out;
    self[11] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[11];
    l0._graph = self;
    self[16] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[3];
    l0._graph = self;
    self[10] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_10_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[34] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_B05/JAS_170_B05.LandingEncounterSpawner.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = self.f_34_Out;
    self[61] = cbox:CreateBox("Domino/System/StanceListener.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Stand = DummyFunction;
    l0.Crouch = DummyFunction;
    l0.Swim = self.f_61_Swim;
    self[42] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener.lua");
    l0 = self[42];
    l0._graph = self;
    l0.WarningZoneEntered = DummyFunction;
    l0.FailingZoneEntered = self.f_42_FailingZoneEntered;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_B05/JAS_170_B05.LandingListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Succeeded = self.f_4_Succeeded;
    l0.Failed = self.f_4_Failed;
    self[54] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_B05/JAS_170_B05.JAS_170_Wingsuit_Woohoo.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = self.f_54_Out;
    self[45] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_45_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[2];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[40];
    l0:Condition(0);
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Fail();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0:Condition(0);
    l0 = self[42];
    l0.WarningZoneTrigger = "2078685193062856259";
    l0.FailingZoneTrigger = "2078685154399761985";
    l0:Enable();
    l0 = self[40];
    l0:Condition(1);
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsBypassed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_59_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0:In();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:False();
end;

function export:f_53_Finished()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_17_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2077851711768113370";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_47_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = nil;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:On();
end;

function export:f_24_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0:In(0);
end;

function export:f_24_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.Destination = "2074548483632666923";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.vehicle = "2076870560488367763";
    l0:Enable();
end;

function export:f_2_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.JAS_170_MAIN.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_24_A_is_True;
    l0.A_is_False = self.f_24_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_47_Added()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.objectiveId = {
        section = "Objectives",
        item = "JAS170_OBJ_Truck",
        id = "163683",
    };
    l0:SetMissionObjective();
end;

function export:f_14_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:UnsetInvincible();
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = nil;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Off();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[43];
    l0:Send();
end;

function export:f_63_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = nil;
    l0.useAnims = true;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Off();
end;

function export:f_20_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "JAS_170_B05_LogicZone layer disabled.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
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

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.IsBypassed = l0.Target;
end;

function export:f_52_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00165584";
    l0:ForcePlay_Priority();
end;

function export:f_37_A_le_B()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = self[36];
    l0:Disable();
    l0 = self[64];
    l0:Condition(1);
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_JAS170_WingSuit_Dive_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Stop();
end;

function export:f_33_Enabled()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Entities = self.ePlayer;
    l0.id2 = "2076487434073286279";
    l0.nearZone = 80;
    l0:Enable();
end;

function export:f_33_Near()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:In();
end;

function export:f_48_Enabled()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_48_OnSit()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0:In();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0.seconds = 3;
    l0:Start();
    l0 = self[4];
    l0:Enable();
    l0 = self[33];
    l0.Entities = self.ePlayer;
    l0.id2 = "2076487434073286279";
    l0.nearZone = 300;
    l0:Enable();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2077851711768113370";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_49_Removed;
    l0:Remove();
    l0 = self[60];
    l0:Close();
end;

function export:f_46_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:f_28_Enabled()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_28_OnChangeSeat()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/CreateTutorialMsgBox_v2.lua")];
    l0.packageName = nil;
    l0.prompt = nil;
    l0.title = {
        section = "Tutorials",
        item = "WIKI_TUTO_NAV_PARACHUTECTRL",
        id = "150373",
    };
    l0.message = {
        section = "Tutorials",
        item = "WIKI_TUTO_NAV_PARACHUTECTRL_DESC",
        id = "150374",
    };
    l0.highPriority = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:In();
end;

function export:f_9_Started()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.objectiveId = {
        section = "Objectives",
        item = "JAS170_OBJ_SearchTheCache",
        id = "71362",
    };
    l0:SetMissionObjective();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0:In(0);
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075807978161708078";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_19_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_22_Started()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0:In();
    self:en_61();
    l0 = self[61];
    l0:Enable();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_61();
    l0 = self[61];
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Far Radius Entry";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "Blue";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[4];
    l0:Disable();
end;

function export:f_36_Enabled()
    local l0;
    self = self._graph;
    l0 = self[36];
    self.Wingsuit_Landing_Group = l0.memberCount;
end;

function export:f_36_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[36];
    self.Wingsuit_Landing_Group = l0.memberCount;
end;

function export:f_36_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[36];
    self.Wingsuit_Landing_Group = l0.memberCount;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.Wingsuit_Landing_Group;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_37_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_19_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/CreateTutorialMsgBox_v2.lua")];
    l0.packageName = nil;
    l0.prompt = nil;
    l0.title = {
        section = "Tutorials",
        item = "WIKI_TUTO_NAV_WINGSUITCTRL",
        id = "150385",
    };
    l0.message = {
        section = "Tutorials",
        item = "WIKI_TUTO_NAV_WINGSUITCTRL_DESC",
        id = "150386",
    };
    l0.highPriority = true;
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Fail();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = "2076870560488367763";
    l0.EntityB = "2077851711768113370";
    l0.BoneName = nil;
    l0.RemoveOffset = nil;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:Bind();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:False();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.JAS_170_MAIN.IsReloaded = l0.Target;
    l0 = self[3];
    l0:Complete();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001c4aad";
    l0:ForcePlay_Priority();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    self:en_36();
    l0 = self[36];
    l0:Enable();
end;

function export:f_49_Removed()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.objectiveId = {
        section = "Objectives",
        item = "JAS170_OBJ_FindTheBar",
        id = "118806",
    };
    l0:SetMissionObjective();
end;

function export:f_61_Swim()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Fail();
end;

function export:f_42_FailingZoneEntered()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
end;

function export:f_4_Failed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_JAS170_WingSuit_Dive_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_21_Stopped;
    l0:Stop();
end;

function export:f_4_Succeeded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075807978161708078";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_17_Removed;
    l0:Remove();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138221911310007";
    l0.missionLayerId = "138303950603711";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_20_Disabled;
    l0:Disable();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.vehicle = nil;
    l0:Enable();
end;

function export:f_59_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075807978161708078";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_63_Removed;
    l0:Remove();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2076870560488367763";
    l0._graph = self;
    l0.Out = self.f_50_Out;
    l0:SetAsIndestructable();
end;

function export:f_45_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269721668155";
    l0.missionLayerId = "18152668231150147";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.SceneEntity = "2075807267709527997";
    l0.SequenceFile = "Sequences/fc3_main/jas_170_b05c/JAS_170_B05C_planecrash.seq";
    l0:Play();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_JAS170_WingSuit_Dive_LP";
    l0._graph = self;
    l0.Started = self.f_9_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_21_Stopped()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Fail();
end;

function export:en_36()
    local l0;
    l0 = self[36];
    l0.group = "#9A96F50B";
    l0.autoDisable = false;
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "WIL_060_FAIL_LandedFarAway",
        id = "150744",
    };
end;

function export:en_61()
    local l0;
    l0 = self[61];
    l0.pawn = self.ePlayer;
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
