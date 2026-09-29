-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bng_030/bng_030_b10c/bng_030_b10c.domino.xml
-- User graph: BNG_030_B10C
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/IsMissionQuicklaunched.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BNG_030/BNG_030_B10C/BNG_030_B10C.LightMovements1.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/SendGSFGenericEvent.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/ShowTattoo.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BNG_030/BNG_030_B10C/BNG_030_B10C.globals.lua");
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BNG_030/BNG_030_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[Ex_DancingMachine_Jason]], "CMovementResource");
        cbox:LoadResource([[QTEGSF]], "CGSFResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001928d1.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[Ex_BarFightQTE_Jason]], "CMovementResource");
        cbox:LoadResource([[sndres0x00192a11]], "CSoundResource");
        cbox:LoadResource([[sndres0x001A4F01]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00192a11.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001928d1]], "CSoundResource");
        cbox:LoadResource([[Ex_BarFightQTE_Thug]], "CMovementResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.MetaSequenceID = 0;
    self.MetasequenceID = 0;
    self.Finish = false;
    self[46] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Started = self.f_46_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = self.f_46_Stopped;
    l0.Skipped = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_11_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[57] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Out = self.f_57_Out;
    self[51] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Out = self.f_51_Out;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[53] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[53];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_41_Received;
    self[19] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_19_TimeElapsed;
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
    self[38] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Out = self.f_38_Out;
    self[59] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0.Holstered = DummyFunction;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BNG_030/BNG_030_B10C/BNG_030_B10C.LightMovements1.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[32];
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
            "UseHighQualityShadows",
            "AllowInvertJoysticksInputs",
        },
    };
    l0.Started = self.f_32_Started;
    l0.Stopped = self.f_32_Stopped;
    self[58] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = self.f_58_Out;
    self[12] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[12];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_12_Out;
    self[47] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_47_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    self[23] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_23_Received;
    self[60] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[60];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "StartFade",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_60_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["StartFade"] = self.f_60_SPOut__StartFade_;
    self[26] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_26_Received;
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
    self[52] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Out = self.f_37_Out;
    self[28] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = self.f_28_Out;
    self[30] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    self[14] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
    l0 = self[14];
    l0._graph = self;
    self[48] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_48_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_4_Finished;
    l0.Stopped = self.f_4_Stopped;
    l0.Skipped = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[42];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[25];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 3,
        Out = 3,
    };
    l0.Out[0] = self.f_25_Out_0;
    l0.Out[1] = DummyFunction;
    l0.Out[2] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    self[29] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = self.f_29_Out;
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
    self[45] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[9];
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
            "UseHighQualityShadows",
            "AllowInvertJoysticksInputs",
        },
    };
    l0.Started = self.f_9_Started;
    l0.Stopped = self.f_9_Stopped;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsMissionQuicklaunched.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = nil;
    l0.wind = nil;
    l0.shadow = "{00897471-E07C-47B2-9F04-EDBBEE960ABC}";
    l0.cloud = nil;
    l0.lighting = "{752E76E4-B74A-4191-A4FC-C2CCFA71289F}";
    l0.exposure = "{09EFC257-0BBA-469A-B026-B25935162308}";
    l0.fog = "{07FF748B-7A62-4EF3-A9C8-79953BF359E1}";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = "{3B376954-537B-4B23-AD65-FFC36A8AC1CE}";
    l0.motionBlur = "{0B7EBA66-40BB-4995-8C1D-A46F6EF9EB3E}";
    l0.depthOfField = "{9B59471B-4D01-435C-A940-2476B54E7B88}";
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = self.f_68_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:OnLeaveZone()
    
end;

function export:f_66_Out()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0:In();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Start();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Stop();
end;

function export:f_46_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0:In();
end;

function export:f_46_Stopped()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Play();
    l0 = self[52];
    l0.Entity = "2077440182350522629";
    l0.SoundId = "0x001A4F01";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_11_Out_0()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "radar|HealthBar|reticule";
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 6,
    };
    l0.Out[0] = self.f_15_Out_0;
    l0.Out[1] = self.f_15_Out_1;
    l0.Out[2] = self.f_15_Out_2;
    l0.Out[3] = self.f_15_Out_3;
    l0.Out[4] = self.f_15_Out_4;
    l0.Out[5] = self.f_15_Out_5;
    l0:In();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "radar|HealthBar|reticule";
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetasequenceID;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0:Stop();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_69_Out;
    l0:NormalMode();
end;

function export:f_41_Received()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "QTE0_Success";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_19_TimeElapsed()
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

function export:f_49_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0.Group = "2075701541490136503";
    l0.TargetEntity = "2075701541490136503";
    l0.SoundId = "0x00192a11";
    l0:ForcePlay_Priority();
end;

function export:f_1_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138273340051605";
    l0.missionLayerId = "9145472594792598";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.PawnEntity = "2075701541473359279";
    l0.Destination = "2076099287629968655";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Finish;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_61_A_is_True;
    l0.A_is_False = self.f_61_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_32_Started()
    local l0;
    self = self._graph;
    self:en_46();
    l0 = self[46];
    l0:Stop();
end;

function export:f_32_Stopped()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = self[58];
    self.MetasequenceID = l0.ID;
    self:en_46();
    l0 = self[46];
    l0:Play();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_66_Out;
    l0:In();
end;

function export:f_47_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.Group = "2075701541485942197";
    l0.TargetEntity = "2075701541485942197";
    l0.SoundId = "0x001928d1";
    l0:ForcePlay_Priority();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BNG_030_MAIN.IsReloaded = l0.Target;
    l0 = self[5];
    l0:Complete();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.PawnEntity = "2075701541469164973";
    l0.Destination = "2076099204400297207";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_23_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "QTE3_Success";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[25];
    l0:In(0);
end;

function export:f_60_Finished()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = true;
    l0.KeepWeaponHolstered = false;
    l0:In();
end;

function export:f_60_SPOut__StartFade_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_26_Received()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "QTE2_Success";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_64_Out;
    l0:In();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0.PawnEntity = "2075701541485942197";
    l0.Destination = "2076099217861915915";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.PawnEntity = "2075701541494330809";
    l0.Destination = "2076099212388349183";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.PawnEntity = "2075701541490136503";
    l0.Destination = "2076099215225795847";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_48_Finished()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.seconds = 8;
    l0:Start();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Finish = l0.Target;
end;

function export:f_4_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0:True();
end;

function export:f_4_Stopped()
    local l0;
    self = self._graph;
    self:en_60();
    l0 = self[60];
    l0:Play();
end;

function export:f_13_Out_0()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.PawnEntity = "2075701541477553585";
    l0.Destination = "2076099200591869171";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_13_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:False();
end;

function export:f_15_Out_0()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Hour = 0;
    l0.Minute = 0;
    l0:Start();
end;

function export:f_15_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_BNG030_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_15_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247273676332";
    l0.missionLayerId = "9145446528417324";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_1_Disabled;
    l0:Disable();
end;

function export:f_15_Out_3()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In();
end;

function export:f_15_Out_4()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In(0);
end;

function export:f_15_Out_5()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0._graph = self;
    l0.TattooShown = DummyFunction;
    l0.TattooHidden = self.f_43_TattooHidden;
    l0:HideTattoo();
end;

function export:f_61_A_is_False()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Stop();
end;

function export:f_61_A_is_True()
    local l0;
    self = self._graph;
    self:en_60();
    l0 = self[60];
    l0:Play();
end;

function export:f_68_Enabled()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Acknowledge();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    PersistentGlobals.BNG_030_B10C.Player = l0.LocalPlayer;
    l0 = self[18];
    l0.objectiveId = {
        section = "Objectives",
        item = "BNG030_OBJ_Dance",
        id = "84546",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_43_TattooHidden()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.param[0] = "ShowBangkok";
    l0.param[1] = "1";
    l0:In();
end;

function export:f_25_Out_0()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.seconds = 20;
    l0:Start();
    l0 = self[47];
    l0.seconds = 6;
    l0:Start();
end;

function export:f_3_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0:Send();
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
    self:en_8();
    l0:ToScreen();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.seconds = 0.1;
    l0:Start();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.PawnEntity = "2076597889852776556";
    l0.Destination = "2076099206459700475";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.PawnEntity = "2075701541481747891";
    l0.Destination = "2076099214445655299";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0.entity = nil;
    l0.eventName = "CGSFGENERICEVENT";
    l0.param1 = "QTESETRESULT";
    l0.param2 = "4";
    l0.param3 = "SUCCESS";
    l0.param4 = nil;
    l0.param5 = nil;
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:In();
end;

function export:f_9_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "bloomfadeetowhite";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
    self:en_41();
    l0 = self[41];
    l0:Enable();
    self:en_23();
    l0 = self[23];
    l0:Enable();
    self:en_26();
    l0 = self[26];
    l0:Enable();
end;

function export:f_9_Stopped()
    local l0;
    self = self._graph;
    self:en_41();
    l0 = self[41];
    l0:Disable();
    l0 = self[32];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_BarFightQTE_Jason";
    l0.animation["Optional_QTE_move_file"] = "Ex_BarFightQTE_Thug";
    l0.entity["AnchorScene"] = "2075048896651858915";
    l0.entity["Optional_pawn/EntityID"] = "2076888274334403292";
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
    self:en_23();
    l0 = self[23];
    l0:Disable();
    self:en_26();
    l0 = self[26];
    l0:Disable();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0._graph = self;
    l0.TattooShown = DummyFunction;
    l0.TattooHidden = DummyFunction;
    l0:HideTattoo();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247273676332";
    l0.missionLayerId = "9145446528417324";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:en_46()
    local l0;
    l0 = self[46];
    l0.MetaSequenceID = self.MetasequenceID;
    l0.SceneEntity = "2075586334000420147";
    l0.SequenceFile = "Sequences/fc3_main/bng_030_b10c/BNG_030_B10C_LoopDance.seq";
end;

function export:en_41()
    local l0;
    l0 = self[41];
    l0.message = "QTE0_Success";
end;

function export:en_23()
    local l0;
    l0 = self[23];
    l0.message = "QTE3_Success";
end;

function export:en_60()
    local l0;
    l0 = self[60];
    l0.MetaSequenceID = self.MetasequenceID;
    l0.SceneEntity = "2075586334000420147";
    l0.SequenceFile = "Sequences/fc3_main/bng_030_b10c/BNG_030_B10C_Escape.seq";
end;

function export:en_26()
    local l0;
    l0 = self[26];
    l0.message = "QTE2_Success";
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.MetaSequenceID = self.MetasequenceID;
    l0.SceneEntity = "2075586334000420147";
    l0.SequenceFile = "Sequences/fc3_main/bng_030_b10c/BNG_030_B10C_Pre_Escape.seq";
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "BNG_030_B10C started.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_DancingMachine_Jason";
    l0.entity["AnchorScene"] = "2075048896651858915";
    l0.bool["DefaultUIOverlay"] = false;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
