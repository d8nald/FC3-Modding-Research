-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/cit_020/cit_020_b30/cit_020_b30.domino.xml
-- User graph: CIT_020_B30
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_MusicManager.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_RebelsSetup.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B20/CIT_020_B20.CIT_020_B20_FuelTruckBurning.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_ChaseVehicleSetup.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_ConvoyEscape.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_FailCondition.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_OBJ_ConvoyInteraction.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_OBJ_EliminatePrivateers.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_OBJ_GetInVehicle.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_OBJ_ReachConvoy.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_FuelTruckFailCondition.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/AI/SetIdleSubState.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0019540c.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0019540c]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[33] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_FuelTruckFailCondition.lua");
    l0 = self[33];
    l0._graph = self;
    l0.MissionFailed = DummyFunction;
    l0.Disabled = self.f_33_Disabled;
    self[24] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_RebelsSetup.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Finished = self.f_24_Finished;
    self[15] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_MusicManager.lua");
    l0 = self[9];
    l0._graph = self;
    self[20] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener.lua");
    l0 = self[20];
    l0._graph = self;
    l0.WarningZoneEntered = DummyFunction;
    l0.FailingZoneEntered = self.f_20_FailingZoneEntered;
    self[28] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_MusicManager.lua");
    l0 = self[28];
    l0._graph = self;
    self[16] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_ChaseVehicleSetup.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Completed = self.f_16_Completed;
    self[32] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B20/CIT_020_B20.CIT_020_B20_FuelTruckBurning.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Finished = self.f_32_Finished;
    self[39] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[4];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_OBJ_ReachConvoy.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Completed = self.f_7_Completed;
    self[12] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_FailCondition.lua");
    l0 = self[12];
    l0._graph = self;
    l0.MissionFail = self.f_12_MissionFail;
    self[13] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_MusicManager.lua");
    l0 = self[13];
    l0._graph = self;
    self[34] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[34];
    l0._graph = self;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_ConvoyEscape.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Teleported = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Initialized = DummyFunction;
    l0.Enabled = self.f_37_Enabled;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Acknowledged = self.f_1_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_OBJ_ConvoyInteraction.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Completed = self.f_6_Completed;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_OBJ_GetInVehicle.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Completed = self.f_11_Completed;
    l0.MissionFailed = self.f_11_MissionFailed;
    self[30] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B10/CIT_020_B10.CIT_020_B10_MusicManager.lua");
    l0 = self[30];
    l0._graph = self;
    self[29] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[29];
    l0._graph = self;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/CIT_020/CIT_020_B30/CIT_020_B30.CIT_020_B30_OBJ_EliminatePrivateers.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Completed = self.f_14_Completed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    
end;

function export:f_31_Out()
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

function export:f_33_Disabled()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:Start();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.missionBlockId = "138244209100860";
    l0:Enable();
    l0 = self[12];
    l0:Enable();
    l0 = self[8];
    l0:Start();
    l0 = self[11];
    l0:Initialize();
    l0 = self[13];
    l0:ConvoyLeaving();
end;

function export:f_24_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetIdleSubState.lua")];
    l0.Group = "#FD799AB3";
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:SetCautious();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.CIT_020_MAIN.bIsReloaded = l0.Target;
    l0 = self[4];
    l0.Save = false;
    l0:Complete();
end;

function export:f_20_FailingZoneEntered()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_35_Out_0;
    l0.Out[1] = self.f_35_Out_1;
    l0:In();
end;

function export:f_16_Completed()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0:Disable_ForceExplosion();
end;

function export:f_32_Finished()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0:ForceExtraRebelsRemoval();
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:Initialize();
    l0 = self[12];
    l0:Disable();
end;

function export:f_2_Activated()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:Start_B30();
end;

function export:f_12_MissionFail()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_22_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Send();
end;

function export:f_22_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_27_Out_0()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:MissionFail();
end;

function export:f_27_Out_1()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Fail",
        item = "CIT_020_OBJ_FAIL_G",
        id = "150502",
    };
    l0:Fail();
end;

function export:f_37_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138244209100860";
    l0.missionLayerId = "18152642718582853";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_35_Out_0()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0:LeaveMissionZone();
end;

function export:f_35_Out_1()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.Reload = true;
    l0:Fail();
end;

function export:f_1_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.CIT_020_MAIN.bIsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_22_A_is_True;
    l0.A_is_False = self.f_22_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = self[20];
    l0.WarningZoneTrigger = "2077053305191682191";
    l0.FailingZoneTrigger = "2077053362381017234";
    l0:Enable();
end;

function export:f_6_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:False();
end;

function export:f_11_Completed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Initialize();
end;

function export:f_11_MissionFailed()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Send();
end;

function export:f_14_Completed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:MissionComplete();
    l0 = self[6];
    l0:Initialize();
    l0 = self[39];
    l0.Group = Globals.CIT_020_MAIN.ePlayer;
    l0.TargetEntity = Globals.CIT_020_MAIN.ePlayer;
    l0.SoundId = "0x0019540c";
    l0:ForcePlay_Priority();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138273048301927";
    l0.missionLayerId = "9145472303042920";
    l0._graph = self;
    l0.Activated = self.f_2_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:en_31()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
