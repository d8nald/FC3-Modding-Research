-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b30/sam_015_b30.domino.xml
-- User graph: SAM_015_B30_TriggerRoad
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
        cbox:RegisterBox("Domino/System/AI/AgentLocomotionModifier.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/UI/DisplayHealthBar.lua");
        cbox:RegisterBox("Domino/System/ForceExitVehicle.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Player/IgnoreSignal.lua");
        cbox:RegisterBox("Domino/System/MovementListener.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/AI/PawnSetImpairedState.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntitiesOutRange.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B30/SAM_015_B30.SAM_015_B30_LastReinforcement.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/UsableEntityListener.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleListener_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleSeatModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleUse.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001b367a]], "CSoundResource");
        cbox:LoadResource([[sndres0x001665e0]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b367a.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001665e0.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.PlayerNoLongerInvincible = DummyFunction;
    self.SamGetOff = DummyFunction;
    self.PlayerDontGetInTheTurret = DummyFunction;
    self.ePlayer = nil;
    self[12] = cbox:CreateBox("Domino/System/UsableEntityListener.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnUse = self.f_12_OnUse;
    self[29] = cbox:CreateBox("Domino/System/VehicleUse.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    self[5] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[5];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_5_Out;
    self[44] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Out = self.f_44_Out;
    self[33] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = self.f_33_Out;
    self[31] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    self[1] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_24_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/VehicleListener_v2.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnSit = DummyFunction;
    l0.OnStandUp = self.f_34_OnStandUp;
    l0.OnChangeSeat = DummyFunction;
    self[35] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_35_Stopped;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_35_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_17_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_2_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/MovementListener.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Moving = self.f_8_Moving;
    l0.Idle = self.f_8_Idle;
    l0.x_Changed = DummyFunction;
    l0.y_Changed = DummyFunction;
    l0.z_Changed = DummyFunction;
    l0.pitch_Changed = DummyFunction;
    l0.roll_Changed = DummyFunction;
    l0.yaw_Changed = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_26_Out_0;
    l0.Out[1] = self.f_26_Out_1;
    l0.ResetOut = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    self[15] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_15_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[56] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0.Closed = self.f_56_Closed;
    l0.Opened = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_32_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[28] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/SAM_015/SAM_015_B30/SAM_015_B30.SAM_015_B30_LastReinforcement.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = self.f_28_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0:Open();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074538152613118428";
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#53CE8C9B";
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_12_OnUse()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "interaction";
    l0:In();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#A120F32E";
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.pawn = "2074868928208701670";
    l0.vehicle = "2078294646217262066";
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "change_seat";
    l0.ignore = nil;
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = nil;
    l0.vehicleEntity = "2078294646217262066";
    l0.isLocked = false;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076472494279145887";
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0:In();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.seconds = 18;
    l0:Start();
end;

function export:f_36_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2073884662494659868";
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0:In();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075810928774880524";
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:In();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 1;
    l0.SeatIndex = nil;
    l0.vehicleEntity = "2078294646217262066";
    l0.isLocked = false;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
    l0 = self[15];
    l0:Start();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074624085031152864";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:SetEnabled();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    self:PlayerNoLongerInvincible();
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    l0 = self[57];
    l0:In();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075782909410682665";
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:In();
end;

function export:f_24_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle.lua")];
    l0.vehicle = "2078294646217262066";
    l0.pawn = nil;
    l0.noFail = nil;
    l0._graph = self;
    l0.ForceExitted = DummyFunction;
    l0.TryExitted = self.f_6_TryExitted;
    l0:TryExit();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074939800397290210";
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0:In();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075816084807625000";
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_34_OnStandUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentLocomotionModifier.lua")];
    l0.Group = "2074868928208701670";
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:Default();
    l0 = self[2];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_35_Stopped()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0:Close();
end;

function export:f_35_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0:In(1);
    l0 = self[44];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_ManTurret",
        id = "118765",
    };
    l0.StayOnScreen = true;
    l0.FlushPreviousObjectives = true;
    l0:SetMissionObjective();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayHealthBar.lua")];
    l0.entityId = "2074868928208701670";
    l0.entityName = {
        section = "Characters",
        item = "VICEGUIDE_CHARACTERS_SAM",
        id = "91000",
    };
    l0._graph = self;
    l0.Showned = DummyFunction;
    l0.Hidden = self.f_21_Hidden;
    l0:Hide();
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_ManTurret",
        id = "118765",
    };
    l0:SetMissionObjective();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2078294646217262066";
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:SetExitDisabled();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.SoundId = "0x001b367a";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[1];
    l0.Group = "2074868928208701670";
    l0.TargetEntity = self.ePlayer;
    l0.SoundId = "0x001665e0";
    l0:ForcePlay_Priority();
end;

function export:f_6_TryExitted()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 1;
    l0.SeatIndex = nil;
    l0.vehicleEntity = "2078294646217262066";
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074624085031152864";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:SetDisabled();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075834912027470523";
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076570399094618328";
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:In();
end;

function export:f_8_Idle()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Enable();
end;

function export:f_8_Moving()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Disable();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 3;
    l0.SeatIndex = nil;
    l0.vehicleEntity = "2078294646217262066";
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_21_Hidden()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/PawnSetImpairedState.lua")];
    l0.Group = "2074868928208701670";
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:MinimallyImpaired();
    self:SamGetOff();
    l0 = self[17];
    l0.seconds = 3.5;
    l0:Start();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075975983900400562";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_36_Removed;
    l0:Remove();
end;

function export:f_26_Out_0()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:RenfortIn();
end;

function export:f_26_Out_1()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:RenfortIn();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2074868928208701670";
    l0.ContextualAction = "2076472049940864240";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[31];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_BringSamLastObjective",
        id = "54771",
    };
    l0:SetMissionObjective();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.entityId = "2078294646217262066";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#262C9E10";
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.id = "2078294646217262066";
    l0.autoDisable = false;
    l0.movingThreshold = 2.5;
    l0.angleThreshold = 2.5;
    l0:Enable();
end;

function export:f_15_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0.Range = 45;
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0:Remove();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#EEB6A6EC";
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:In();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2074868928208701670";
    l0.ContextualAction = "2076472049940864240";
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_56_Closed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:In();
end;

function export:f_56_Out()
    self = self._graph;
    self:PlayerDontGetInTheTurret();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#60C0C5B0";
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:PlayerIsIn();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.objectiveId = {
        section = "Objectives",
        item = "SAM_015_OBJ_DefendYourPosition",
        id = "79384",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_37_Added()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:Start();
end;

function export:f_37_Removed()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:Stop();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.Vehicle = "2078294646217262066";
    l0.User = "2074868928208701670";
    l0:Exit();
end;

function export:f_32_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0:In();
end;

function export:f_28_Out()
    self = self._graph;
    self:Out();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#0E950B53";
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:In();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075815508155836528";
    l0._graph = self;
    l0.Out = self.f_50_Out;
    l0:In();
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.triggerId = "2074624085031152864";
    l0.colliderFilterId = "2074868928208701670";
end;

function export:en_35()
    local l0;
    l0 = self[35];
    l0.seconds = 22;
end;

function export:en_37()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076476010710263126";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_37_Added;
    l0.Removed = self.f_37_Removed;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:PlayerNoLongerInvincible()
    
end;
function export:SamGetOff()
    
end;
function export:PlayerDontGetInTheTurret()
    
end;
_compilerVersion = 24;
