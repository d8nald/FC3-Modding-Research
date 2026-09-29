-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_130/jas_130_b43c/jas_130_b43c.domino.xml
-- User graph: JAS_130_B43C
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_B50/JAS_130_B50.JAS_130_B50.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/AI/Scripted/AIScriptControlListener_v3.lua");
        cbox:RegisterBox("Domino/System/AI/Scripted/AIScriptControlModifier.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_B43C/JAS_130_B43C.CIN_Rescue_Liza.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/ExoticCarChase.lua");
        cbox:RegisterBox("Domino/System/Player/ForceInVehicle.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/Player/IgnoreSignal.lua");
        cbox:RegisterBox("Domino/System/Player/ManageInventory_v4.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SendGSFGenericEvent.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundMixing.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleFollowPath_v4.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleSeatModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_B43C/JAS_130_B43C.globals.lua");
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_B50/JAS_130_B50.globals.lua");
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0016DECA]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0019415b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0016DEC9]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0019416f.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0019416f]], "CSoundResource");
        cbox:LoadResource([[sndres0x0019415b]], "CSoundResource");
        cbox:LoadResource([[QTEGSF]], "CGSFResource");
        cbox:LoadResource([[sndres0x0016DECB]], "CSoundResource");
        cbox:LoadResource([[Ex_PushTruckQTE_Jason]], "CMovementResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.MetaSequenceID = 0;
    self.ePlayer = nil;
    self[51] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_51_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_49_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[1];
    l0._graph = self;
    self[33] = cbox:CreateBox("Domino/System/VehicleFollowPath_v4.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Started = self.f_33_Started;
    l0.SpeedUpdated = DummyFunction;
    l0.Stoped = DummyFunction;
    l0.Finished = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[23] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[23];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_23_Out;
    self[38] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_38_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Finished = self.f_12_Finished;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[4];
    l0._graph = self;
    self[17] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    self[44] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_44_Stopped;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_44_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[22];
    l0._graph = self;
    l0._DynamicAnchors = {
        animation = {
            "QTE_move_file",
            "Optional_QTE_move_file",
        },
        entity = {
            "AnchorScene",
            "Optional_pawn/EntityID",
        },
        string = {
            "AnchorName",
            "PlaceHolderTutorialText",
        },
        float = {
            "Camera_BlendIn_FOV_Timer",
            "Camera_BlendOut_FOV_Timer",
            "Camera_Near_StartFOV",
            "Camera_Far_StartFOV",
        },
        bool = {
            "Debug",
            "IsQtePlaceHolder",
            "EnableCameraCloseUp",
            "SetnearZ",
            "EnableLookAround",
            "DisableHUD",
            "forceRestorePlayerAtEnd",
            "doNotReenablePlayerAtEnd",
            "DefaultUIOverlay",
        },
    };
    l0.Started = self.f_22_Started;
    l0.Stopped = self.f_22_Stopped;
    self[60] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Initialized = DummyFunction;
    l0.Enabled = self.f_45_Enabled;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_61_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Started = self.f_39_Started;
    l0.Finished = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Out = self.f_43_Out;
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
    self[65] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[65];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_65_Out_0;
    l0.ResetOut = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = self.f_20_OnSit;
    l0.OnStandUp = DummyFunction;
    l0.OnChangeSeat = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_21_Received;
    self[19] = cbox:CreateBox("Domino/System/AI/Scripted/AIScriptControlListener_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.AllAcquired = DummyFunction;
    l0.AllReleased = DummyFunction;
    l0.PawnAcquired = DummyFunction;
    l0.PawnReleased = self.f_19_PawnReleased;
    self[40] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[58] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_B43C/JAS_130_B43C.CIN_Rescue_Liza.lua");
    l0 = self[58];
    l0._graph = self;
    l0.End = self.f_58_End;
    self[29] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    self[59] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_59_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_JAS130_Rescue_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_42_Stopped;
    l0:Stop();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:Stop();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "WIL050_FAIL_TimeElapsed",
        id = "103798",
    };
    l0:Fail();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = self[44];
    l0:Stop();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = 2;
    l0.vehicleEntity = Globals.JAS_130_B50.eVehicleRideB50;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_51_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138282976274479";
    l0.missionLayerId = "9145482231015472";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_50_Disabled;
    l0:Disable();
end;

function export:f_49_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0.missionBlockId = "138243649908146";
    l0.missionScript = "Domino/user/fc3/FC3_MainMissions/JAS_130/JAS_130_B50/JAS_130_B50.JAS_130_B50.lua";
    l0:Enable();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = 2;
    l0.vehicleEntity = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_33_Started()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.seconds = 1.5;
    l0:Start();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:False();
end;

function export:f_18_TryReleaseOut()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.targets = Globals.JAS_130_B43C.eLizaB43C;
    l0:Enable();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ForceInVehicle.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = 1;
    l0.vehicleEntity = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:In();
end;

function export:f_7_Activated()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0:Start();
    l0 = self[51];
    l0.seconds = 18;
    l0:Start();
    l0 = self[49];
    l0.seconds = 6;
    l0:Start();
end;

function export:f_10_Disabled()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0:Condition(1);
end;

function export:f_38_Finished()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_12_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:SetAsUsable();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "open_inventory";
    l0.ignore = nil;
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0:In();
end;

function export:f_47_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Preloaded next beat.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[12];
    l0.pawn = "2074841292063381024";
    l0:RemoveAllWeapon();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138282976274479";
    l0.missionLayerId = "138304874290722";
    l0._graph = self;
    l0.Activated = self.f_7_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_JAS130_Rescue_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.objectiveId = {
        section = "Objectives",
        item = "JAS130_OBJ_PushTruck",
        id = "71193",
    };
    l0:SetMissionObjective();
    l0 = self[22];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_PushTruckQTE_Jason";
    l0.entity["AnchorScene"] = "2075047997040758520";
    l0.bool["Debug"] = true;
    l0.bool["SetnearZ"] = false;
    l0:Start();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.pawn = Globals.JAS_130_B43C.eLizaB43C;
    l0.vehicle = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0:Enable();
end;

function export:f_44_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Timer for push truck interaction stopped.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_44_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Player ran out of time.";
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
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:In();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0:Condition(0);
end;

function export:f_62_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:SetExitDisabled();
end;

function export:f_22_Started()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = self[44];
    l0:Start();
    l0 = self[59];
    l0.seconds = 4;
    l0:Start();
    l0 = self[21];
    l0.message = "QTE0_Success";
    l0:Enable();
    l0 = self[11];
    l0.Entity = "2076873286672721710";
    l0.SoundId = "0x0016DEC9";
    l0.SoundType = 13;
    l0:Play();
end;

function export:f_22_Stopped()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.Entity = "2076873286672721710";
    l0.SoundId = "0x0016DECB";
    l0.SoundType = 13;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/ExoticCarChase.lua")];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:PreEnterBackSeat();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = 1;
    l0.vehicleEntity = Globals.JAS_130_B50.eVehicleRideB50;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Success GSF event sent.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_50_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Removed BASE_D5_Hotel_Before layer.";
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

function export:f_45_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138243649908146";
    l0.missionLayerId = "18152642159390137";
    l0._graph = self;
    l0.Activated = self.f_46_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_61_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0019415b";
    l0:ForcePlay_Priority();
end;

function export:f_39_Started()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.Entity = "2076873286672721710";
    l0.SoundId = "0x0016DECA";
    l0.SoundType = 13;
    l0:Play();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "JAS_130_B43C started.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:In();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "select_last_weapon";
    l0.ignore = nil;
    l0._graph = self;
    l0.Out = self.f_62_Out;
    l0:In();
end;

function export:f_42_Stopped()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Fail();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0.entity = self.ePlayer;
    l0.eventName = "CGSFGenericEvent";
    l0.param1 = "QteSetResult";
    l0.param2 = "2";
    l0.param3 = "success";
    l0.param4 = nil;
    l0.param5 = nil;
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
end;

function export:f_65_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/Scripted/AIScriptControlModifier.lua")];
    l0.targets = Globals.JAS_130_B43C.eLizaB43C;
    l0._graph = self;
    l0.TryAcquireOut = DummyFunction;
    l0.TryReleaseOut = self.f_18_TryReleaseOut;
    l0.Error = DummyFunction;
    l0:TryRelease();
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = true;
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "heat_distortion";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:Start();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = 1;
    l0.vehicleEntity = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = self.ePlayer;
    l0.signal = "change_seat";
    l0.ignore = nil;
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_20_OnSit()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138282976274479";
    l0.missionLayerId = "138285276732445";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_10_Disabled;
    l0:Disable();
end;

function export:f_46_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138243649908146";
    l0.missionLayerId = "138284485537899";
    l0._graph = self;
    l0.Activated = self.f_47_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_64_Activated()
    local l0;
    self = self._graph;
    l0 = self[65];
    l0:In(0);
end;

function export:f_3_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[43];
    l0:Send();
end;

function export:f_21_Received()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.Vehicle = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0.Path = Globals.JAS_130_B43C.eVehiclePathB43C;
    l0.Speed = 0.4;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.JAS_130_MAIN.isJAS130Reloaded = l0.Target;
    l0 = self[5];
    l0:Complete();
end;

function export:f_19_PawnReleased()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Vehicle = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0.User = Globals.JAS_130_B43C.eLizaB43C;
    l0.SeatIndex = 0;
    l0.SkipEntryAnimation = true;
    l0:TakeSeat();
end;

function export:f_58_End()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138282976274479";
    l0.missionLayerId = "18152681485916705";
    l0._graph = self;
    l0.Activated = self.f_64_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = 0;
    l0.vehicleEntity = Globals.JAS_130_B50.eVehicleRideB50;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = 0;
    l0.vehicleEntity = Globals.JAS_130_B43C.eVehicleRideB43C;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:f_59_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0019416f";
    l0:ForcePlay_Priority();
end;

function export:en_44()
    local l0;
    l0 = self[44];
    l0.seconds = 60;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0.SoundMixing = "Compatible/Mission_JAS_130_Jeep_MuteQTE";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
