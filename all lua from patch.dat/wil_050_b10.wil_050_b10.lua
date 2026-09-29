-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: WIL_050_B10
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.EVENT_AnimatedChopperArrival.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.EVENT_ConvoyArrival.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.LOG_LockBinocular.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.LOG_UpdateMinimapObjective.lua");
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.OBJ_ClearTheArea.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.OBJ_IdentifyOliver.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.OBJ_RaceConvoyLPK.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.OBJ_ReachTheSniperPoint.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.SpawnBuffalo.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.SpawnKomodo.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.SpawnPlayerBoat.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.SpawnSniperNestCrew.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001665c2]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00165810.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0016176e]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001665c2.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00165810]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.RaceTimeOut = DummyFunction;
    self.MissionIsInPlaytrough = DummyFunction;
    self.MissionIsRestarted = DummyFunction;
    self.StartMetaSequence = DummyFunction;
    self[19] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_19_Finished;
    self[34] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[34];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_34_Out_0;
    l0.ResetOut = DummyFunction;
    self[50] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.SpawnKomodo.lua");
    l0 = self[50];
    l0._graph = self;
    self[12] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.LOG_UpdateMinimapObjective.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[5] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[24] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.SpawnPlayerBoat.lua");
    l0 = self[24];
    l0._graph = self;
    l0.BoatIsDestroy = self.f_24_BoatIsDestroy;
    self[52] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Acknowledged = self.f_52_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.OBJ_RaceConvoyLPK.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0.RaceTimeOut = self.f_9_RaceTimeOut;
    l0.SpawnSniperNestCrew = self.f_9_SpawnSniperNestCrew;
    l0.SpawnPlayerBoat = self.f_9_SpawnPlayerBoat;
    l0.RaceTimeStart = DummyFunction;
    self[51] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Out = self.f_51_Out;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Acknowledged = self.f_1_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[26] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.OBJ_ReachTheSniperPoint.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[4];
    l0._graph = self;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.SpawnSniperNestCrew.lua");
    l0 = self[6];
    l0._graph = self;
    l0.AIAlertOrInCombat = self.f_6_AIAlertOrInCombat;
    self[29] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[29];
    l0._graph = self;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.OBJ_IdentifyOliver.lua");
    l0 = self[11];
    l0._graph = self;
    self[48] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_48_Finished;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[3];
    l0._graph = self;
    self[35] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.EVENT_AnimatedChopperArrival.lua");
    l0 = self[35];
    l0._graph = self;
    l0.UnhideChopper = DummyFunction;
    l0.LandingAnimationStarted = DummyFunction;
    self[42] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.SpawnBuffalo.lua");
    l0 = self[42];
    l0._graph = self;
    self[46] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_46_Finished;
    self[45] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Out = self.f_45_Out;
    self[31] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[31];
    l0._graph = self;
    self[18] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.OBJ_ClearTheArea.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[37] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Acknowledged = self.f_37_Acknowledged;
    l0.NotAcknowledged = self.f_37_NotAcknowledged;
    self[16] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.LOG_LockBinocular.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    self[49] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_49_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[20] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B10/WIL_050_B10.EVENT_ConvoyArrival.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0.KeyTargetIsSet = self.f_20_KeyTargetIsSet;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[37];
    l0:IsAcknowledged();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[5];
    l0.initStateOpen = false;
    l0:In();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "WIL050_FAIL_OliverBoatDestroyed",
        id = "103797",
    };
    l0:Fail();
    self:en_47();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
    l0 = self[29];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "WIL050_FAIL_Observe",
        id = "103798",
    };
    l0:Fail();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:RemoveLKPMarker();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT2_PRO_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_56_Stopped;
    l0:Stop();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:ObjectiveCompleteStopTimer();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Acknowledge();
end;

function export:f_19_Finished()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.SoundID = "0x00165810";
    l0.IsIncomingCall = true;
    l0.EndOfChain = true;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_34_Out_0()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0:Send();
end;

function export:f_22_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_21_Out_0;
    l0.Out[1] = self.f_21_Out_1;
    l0:In();
end;

function export:f_22_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Fail();
end;

function export:f_24_BoatIsDestroy()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:In();
end;

function export:f_52_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.SoundID = "0x0016176e";
    l0.CallerID = {
        section = "Characters",
        item = "VICEGUIDE_CHARACTERS_WILLIS",
        id = "90992",
    };
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = true;
    l0:Start();
end;

function export:f_56_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT2_DEF_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:In(0);
end;

function export:f_9_RaceTimeOut()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:In();
end;

function export:f_9_SpawnPlayerBoat()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0:In();
end;

function export:f_9_SpawnSniperNestCrew()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_38_Out_0;
    l0.Out[1] = self.f_38_Out_1;
    l0:In();
end;

function export:f_27_Out_0()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In();
end;

function export:f_27_Out_1()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_1_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ackwnoledge";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 50;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_13_Out_0;
    l0.Out[1] = self.f_13_Out_1;
    l0:In();
end;

function export:f_28_Out_0()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In();
end;

function export:f_28_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0:In();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077152902327077728";
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:In();
end;

function export:f_21_Out_0()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:In();
end;

function export:f_21_Out_1()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0:In();
end;

function export:f_6_AIAlertOrInCombat()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:In(0);
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077152905061763938";
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0:In();
end;

function export:f_13_Out_0()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:In();
end;

function export:f_13_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:In();
end;

function export:f_48_Finished()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Acknowledge();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.WIL_050_MAIN.WIL_050_MainIsReloaded = l0.Target;
    l0 = self[4];
    l0:Complete();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "b01Done";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 50;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_46_Finished()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.SoundID = "0x001665c2";
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_27_Out_0;
    l0.Out[1] = self.f_27_Out_1;
    l0:In();
end;

function export:f_38_Out_0()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In();
end;

function export:f_38_Out_1()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_28_Out_0;
    l0.Out[1] = self.f_28_Out_1;
    l0:In();
end;

function export:f_37_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077152905527331684";
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:In();
end;

function export:f_37_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0:In();
    l0 = self[49];
    l0.triggerId = "2078198793492251259";
    l0:Enable();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_22_Out_0;
    l0.Out[1] = self.f_22_Out_1;
    l0:In();
end;

function export:f_49_EnterFOV()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0:Acknowledge();
end;

function export:f_20_KeyTargetIsSet()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:KeyTargetIsSet();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:False();
end;

function export:en_47()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT2_PRO_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
end;

-- Empty out anchor definitions
function export:RaceTimeOut()
    
end;
function export:MissionIsInPlaytrough()
    
end;
function export:MissionIsRestarted()
    
end;
function export:StartMetaSequence()
    
end;
_compilerVersion = 24;
