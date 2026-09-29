-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_160/jas_160_b10e/jas_160_b10e.domino.xml
-- User graph: JAS_160_B10E
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
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GosmStateModifier.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_B10E/JAS_160_B10E.JAS_160_B10E_Grunts.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_B10E/JAS_160_B10E.JAS_160_B10E_Music.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/NearzModifier.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleState.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/SendGSFGenericEvent.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001c5649]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b84ce]], "CSoundResource");
        cbox:LoadResource([[Ex_MassGraveQTE_Jason]], "CMovementResource");
        cbox:LoadResource([[sndres0x001b84cd]], "CSoundResource");
        cbox:LoadResource([[sndres0x001C560C]], "CSoundResource");
        cbox:LoadResource([[JAS_170_MassGrave]], "CGSFResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b84ce.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001C563D]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ePlayer = nil;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[1];
    l0._graph = self;
    self[25] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[8] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    self[46] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_46_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_39_Received;
    self[41] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Acknowledged = self.f_6_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_28_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[4];
    l0._graph = self;
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
    self[19] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_B10E/JAS_160_B10E.JAS_160_B10E_Music.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    self[12] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_B10E/JAS_160_B10E.JAS_160_B10E_Music.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[47] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_40_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = self.f_23_Started;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_23_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_45_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[36];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_36_Out;
    self[33] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_33_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[13] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_B10E/JAS_160_B10E.JAS_160_B10E_Music.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[18] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_B10E/JAS_160_B10E.JAS_160_B10E_Grunts.lua");
    l0 = self[18];
    l0._graph = self;
    self[50] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[50];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_50_Out;
    self[48] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_48_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[21] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_160/JAS_160_B10E/JAS_160_B10E.JAS_160_B10E_Music.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    self[2] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0._DynamicAnchors = {
        animation = {
            "QTE_move_file",
        },
        entity = {
            "AnchorScene",
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
            "UseHighQualityShadows",
            "AllowInvertJoysticksInputs",
        },
    };
    l0.Started = self.f_2_Started;
    l0.Stopped = DummyFunction;
    self[43] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0.Hour = 22;
    l0.Minute = 12;
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:SetTimeOfDay();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[12];
    l0:In_LeaveMissionZone();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:Disable();
end;

function export:f_38_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:False();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.Entity = "2078742372671310496";
    l0.SoundId = "0x001C560C";
    l0.SoundType = 12;
    l0:Play();
    l0 = self[21];
    l0:In_Escape();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreennowfx";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075449382028712112";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_38_Removed;
    l0:Remove();
end;

function export:f_17_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GosmStateModifier.lua")];
    l0.target = self.ePlayer;
    l0.restoreSignal = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:RestoreGOSM();
end;

function export:f_46_Finished()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:Enable();
end;

function export:f_39_Received()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "interaction";
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:In();
end;

function export:f_6_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.objectiveId = {
        section = "Objectives",
        item = "Get out of the Mass Grave",
        id = "103800",
    };
    l0:SetMissionObjective();
end;

function export:f_28_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0.entity = nil;
    l0.eventName = "CGSFGenericEvent";
    l0.param1 = "qtesetresult";
    l0.param2 = "0";
    l0.param3 = "Failure";
    l0.param4 = "-1";
    l0.param5 = nil;
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:In();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:In_Complete();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = self.ePlayer;
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetEnabled();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NearzModifier.lua")];
    l0.target = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:On();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077369337886324909";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_16_Disabled;
    l0:SetDisabled();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077369337886324909";
    l0._graph = self;
    l0.Enabled = self.f_22_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Reload = true;
    l0:Fail();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "Ammo|Radar|Reticule";
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[7];
    l0:Start();
    l0 = self[47];
    l0.SoundId = "0x001c5649";
    l0.SoundType = 20;
    l0:Play();
end;

function export:f_40_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "massgravedrowning";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "e3drowning";
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:Disable();
end;

function export:f_15_Disabled()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.PawnEntity = "2077520085685118075";
    l0.Destination = "2077369490550602773";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Acknowledge();
end;

function export:f_23_Started()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001b84cd";
    l0:SafetyReflex_Priority();
    l0 = self[39];
    l0.message = "PlayerWin";
    l0:Enable();
end;

function export:f_23_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Send();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0.entity = nil;
    l0.eventName = "CGSFGenericEvent";
    l0.param1 = "qtesetresult";
    l0.param2 = "1";
    l0.param3 = "Failure";
    l0.param4 = "-1";
    l0.param5 = nil;
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:In();
end;

function export:f_45_Finished()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001b84ce";
    l0:SafetyReflex_Priority();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.GSFName = "JAS_170_MassGrave";
    l0.animation["QTE_move_file"] = "Ex_MassGraveQTE_Jason";
    l0.entity["AnchorScene"] = "2075437470029194236";
    l0.float["Camera_BlendIn_FOV_Timer"] = 2;
    l0.float["Camera_Near_StartFOV"] = 65;
    l0.float["Camera_Far_StartFOV"] = 65;
    l0.bool["Debug"] = true;
    l0.bool["EnableCameraCloseUp"] = true;
    l0.bool["SetnearZ"] = false;
    l0.bool["doNotReenablePlayerAtEnd"] = true;
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:SetInvincible();
end;

function export:f_33_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:In_LeaveMissionZone();
    self:en_43();
    l0 = self[43];
    l0:Play();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0:Start();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "fadetowhite";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:Enable();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Reload = true;
    l0.failedCondition = {
        section = "Objectives",
        item = "you missed oxygen",
        id = "150507",
    };
    l0:Fail();
end;

function export:f_22_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077369337886324909";
    l0._graph = self;
    l0.Enabled = self.f_17_Enabled;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetEnabled();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "massgravedrowning";
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:Disable();
end;

function export:f_16_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077369337886324909";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_15_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_48_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = self[43];
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "PlayerClimbOut";
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:In();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:Enable();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:NormalMode();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.seconds = 15;
    l0:Start();
    l0 = self[23];
    l0.seconds = 0.5;
    l0:Start();
    l0 = self[28];
    l0.seconds = 57;
    l0:Start();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.JAS_160_MAIN.bIsMissionReloaded = l0.Target;
    l0 = self[48];
    l0:Start();
end;

function export:en_44()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
end;

function export:en_43()
    local l0;
    l0 = self[43];
    l0.Entity = "2078742372671310496";
    l0.SoundId = "0x001C563D";
    l0.SoundType = 12;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
