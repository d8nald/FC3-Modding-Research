-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/jas_240/jas_240_b40c/jas_240_b40c.domino.xml
-- User graph: JAS_240_B40C
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
        cbox:RegisterBox("Domino/System/Player/ActionMapModifier.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/ChangeSunOrientation.lua");
        cbox:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Coop/Misc/EndGame.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/Player/IgnoreSignal.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.isJapanVersion.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/JAS_240/JAS_240_B30E/JAS_240_B30E.JAS_240_B30E_LightningsRandomizer.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/NoWeaponMode.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/PlayerSpeedModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/ShowTattoo.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundAmbianceOverride.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/TeleportPlayer.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/JAS_240/JAS_240_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[Ex_EndChoiceQTE_Jason]], "CMovementResource");
        cbox:LoadResource([[Ex_EndChoiceQTE_Liza]], "CMovementResource");
        cbox:LoadResource([[QTEGSF]], "CGSFResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.MetaSequenceID = 0;
    self.ePlayer = nil;
    self.pouette = 0;
    self.seq2 = 0;
    self.sequence2 = 0;
    self.Test = false;
    self.bEndCreditsMusicStarted = false;
    self[110] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[110];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "start_fade",
            "Time_1750",
            "Stop_fade",
            "RollCreditsOnFrame",
        },
    };
    l0.Started = self.f_110_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["start_fade"] = self.f_110_SPOut__start_fade_;
    l0.SPOut["Time_1750"] = self.f_110_SPOut__Time_1750_;
    l0.SPOut["Stop_fade"] = self.f_110_SPOut__Stop_fade_;
    l0.SPOut["RollCreditsOnFrame"] = self.f_110_SPOut__RollCreditsOnFrame_;
    self[92] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[92];
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
    l0.Started = self.f_92_Started;
    l0.Stopped = self.f_92_Stopped;
    self[72] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Out = self.f_72_Out;
    self[9] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[7] = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[82] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[82];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_55_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[80] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[80];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPIn = {
            "From_GSF",
        },
        SPOut = {
            "StartFade",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_80_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["StartFade"] = self.f_80_SPOut__StartFade_;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[123] = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
    l0 = self[123];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[17] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.isJapanVersion.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Yes = self.f_17_Yes;
    l0.No = self.f_17_No;
    self[27] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[89] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[89];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_89_Out;
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
    self[77] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[44];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_44_Out_0;
    l0.ResetOut = DummyFunction;
    self[42] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/JAS_240/JAS_240_B30E/JAS_240_B30E.JAS_240_B30E_LightningsRandomizer.lua");
    l0 = self[42];
    l0._graph = self;
    self[97] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[97];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_97_Received;
    self[65] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[65];
    l0._graph = self;
    l0.Out = self.f_65_Out;
    self[87] = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Out = self.f_87_Out;
    self[106] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[106];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "FadeOut",
        },
    };
    l0.Started = self.f_106_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["FadeOut"] = self.f_106_SPOut__FadeOut_;
    self[114] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[114];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_114_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v2.lua");
    l0 = self[37];
    l0._graph = self;
    l0.ForceWalkOut = DummyFunction;
    l0.ApplySpeedFactorOut = DummyFunction;
    l0.Done = DummyFunction;
    self[66] = cbox:CreateBox("Domino/System/ChangeSunOrientation.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Out = self.f_66_Out;
    l0.Reseted = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Acknowledged = self.f_12_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[95] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[95];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_95_Out;
    self[74] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[74];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_74_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[53] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_53_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[56] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Enabled = self.f_56_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_56_Received;
    self[93] = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock.lua");
    l0 = self[93];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[94] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[94];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_94_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[79] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Out = self.f_79_Out;
    self[76] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[76];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "JAS_240_B60C_ALT_FadeOut",
        },
    };
    l0.Started = self.f_76_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_76_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["JAS_240_B60C_ALT_FadeOut"] = self.f_76_SPOut__JAS_240_B60C_ALT_FadeOut_;
    self[98] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[98];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_98_Received;
    self[28] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0.Holstered = DummyFunction;
    self[68] = cbox:CreateBox("Domino/System/SoundAmbianceOverride.lua");
    l0 = self[68];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    self[102] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[102];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_102_Out;
    self[3] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[26] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[100] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[100];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_100_Out;
    self[99] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[99];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_99_Out;
    self[109] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[109];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_109_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[88] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[88];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_88_Loaded;
    l0.Unloaded = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[30];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPIn = {
            "From_GSF",
        },
        SPOut = {
            "JAS_240_HallucinationEnd",
            "Start_GSF",
            "KillLizaLights",
            "StartCrowd",
            "JAS_240_EndCreditMusic",
            "JAS_240_B50E_FadeOut",
        },
    };
    l0.Started = self.f_30_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_30_Finished;
    l0.Stopped = self.f_30_Stopped;
    l0.Skipped = DummyFunction;
    l0.SPOut["JAS_240_HallucinationEnd"] = self.f_30_SPOut__JAS_240_HallucinationEnd_;
    l0.SPOut["Start_GSF"] = self.f_30_SPOut__Start_GSF_;
    l0.SPOut["KillLizaLights"] = self.f_30_SPOut__KillLizaLights_;
    l0.SPOut["StartCrowd"] = self.f_30_SPOut__StartCrowd_;
    l0.SPOut["JAS_240_EndCreditMusic"] = self.f_30_SPOut__JAS_240_EndCreditMusic_;
    l0.SPOut["JAS_240_B50E_FadeOut"] = self.f_30_SPOut__JAS_240_B50E_FadeOut_;
    self[116] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[116];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_116_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:In();
    l0 = self[12];
    l0:Acknowledge();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "JAS_240_B40C started.";
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
    l0:ToAll();
end;

function export:OnLeaveZone()
    
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075508009242467838";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_73_Disabled;
    l0:SetDisabled();
end;

function export:f_119_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_84_Out;
    l0:In();
end;

function export:f_110_SPOut__RollCreditsOnFrame_()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.message = "CreditsFinished";
    l0:Enable();
end;

function export:f_110_SPOut__start_fade_()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Enable();
end;

function export:f_110_SPOut__Stop_fade_()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Disable();
end;

function export:f_110_SPOut__Time_1750_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0.Hour = 17;
    l0.Minute = 50;
    l0._graph = self;
    l0.Out = self.f_112_Out;
    l0:SetTimeOfDay();
end;

function export:f_110_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeinandout2sec";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2074730808993657901";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_20_Disabled;
    l0:SetDisabled();
end;

function export:f_108_Out()
    local l0;
    self = self._graph;
    l0 = self[109];
    l0:Start();
end;

function export:f_92_Started()
    local l0;
    self = self._graph;
    l0 = self[94];
    l0.seconds = 0.1;
    l0:Start();
    l0 = self[97];
    l0.message = "LizaLive";
    l0:Enable();
    l0 = self[98];
    l0.message = "LizaDie";
    l0:Enable();
end;

function export:f_92_Stopped()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:Condition(0);
    self:en_96();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetEnabled();
    l0 = self[100];
    l0:Condition(0);
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "throw_rock";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_86_Out;
    l0:In();
end;

function export:f_29_Disabled()
    local l0;
    self = self._graph;
    l0 = self[123];
    l0.missionBlockId = "138303786822662";
    l0:Disable();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = self[72];
    self.MetaSequenceID = l0.ID;
    l0 = self[76];
    l0.MetaSequenceID = self.MetaSequenceID;
    l0.SceneEntity = "2076983438436482141";
    l0.SequenceFile = "Sequences/fc3_main/jas_240_b60c/JAS_240_B60C_alt.seq";
    l0:Play();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = nil;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:Off();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    self.sequence2 = l0.ID;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_113_Out;
    l0:In();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 5;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = "{400AB1B0-06B0-4199-92CF-EEF384AE7B9D}";
    l0.fog = "{772E6F46-BA91-40E7-98EA-F9173A5FD314}";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = self.f_105_Out;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_55_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.sequence2;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:Stop();
end;

function export:f_80_Finished()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Stop();
    l0 = self[74];
    l0.seconds = 3;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074730808993657901";
    l0._graph = self;
    l0.Out = self.f_90_Out;
    l0:In();
end;

function export:f_80_SPOut__StartFade_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeinandout2sec";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "toggle_monocular";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:In();
end;

function export:f_73_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075424110210454004";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_75_Disabled;
    l0:SetDisabled();
end;

function export:f_103_Out()
    local l0;
    self = self._graph;
    l0 = self[102];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "interaction";
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:In();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_FC3_FinalCredits";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_67_Stopped;
    l0:Stop();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "jump";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:In();
end;

function export:f_91_Out()
    local l0;
    self = self._graph;
    l0 = self[87];
    l0.missionBlockId = "138299244549077";
    l0:Activate();
end;

function export:f_17_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_103_Out;
    l0:NormalMode();
end;

function export:f_17_Yes()
    local l0;
    self = self._graph;
    self:en_118();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0:In();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bEndCreditsMusicStarted;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_51_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/EndGame.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_52_Out;
    l0:Enable();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0.Hour = 3;
    l0.Minute = 0;
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0:SetTimeOfDay();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bEndCreditsMusicStarted = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_FC3_FinalCredits";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_44_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:Disable();
end;

function export:f_21_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075508009242467838";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_22_Disabled;
    l0:SetDisabled();
end;

function export:f_24_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2074921662003811928";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_29_Disabled;
    l0:SetDisabled();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
end;

function export:f_97_Received()
    local l0;
    self = self._graph;
    l0 = self[93];
    l0.missionBlockId = "138303786822662";
    l0:Activate();
    l0 = self[100];
    l0:Condition(1);
end;

function export:f_121_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = nil;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = nil;
    l0.sky = nil;
    l0.stormFactor = 0;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0:Disable();
end;

function export:f_87_Out()
    local l0;
    self = self._graph;
    l0 = self[88];
    l0.entityId = "2076983889515029626";
    l0:Enable();
end;

function export:f_113_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/TeleportPlayer.lua")];
    l0.PlayerEntity = self.ePlayer;
    l0.DestinationEntity = "2078409024612616743";
    l0.LookAt = nil;
    l0._graph = self;
    l0.Out = self.f_108_Out;
    l0:Teleport();
end;

function export:f_106_SPOut__FadeOut_()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.message = "CreditsFinished";
    l0:Enable();
end;

function export:f_106_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeinandout2sec";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_90_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077856773722613984";
    l0._graph = self;
    l0.Out = self.f_91_Out;
    l0:In();
end;

function export:f_105_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "move";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_50_Out;
    l0:In();
end;

function export:f_114_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[110];
    l0.MetaSequenceID = self.sequence2;
    l0.SceneEntity = "2078311140827351642";
    l0.SequenceFile = "Sequences/FC3_Main/End_Credit_PanCam/End_Credit_PanCam.seq";
    l0:Play();
end;

function export:f_11_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:CinematicMode();
end;

function export:f_20_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075508011354299904";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_21_Disabled;
    l0:SetDisabled();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.factor = 1;
    l0.blendTime = 0;
    l0:ApplySpeedFactor();
end;

function export:f_52_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "crouch";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "sprint";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:In();
end;

function export:f_66_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.timeScale = 0;
    l0:SetTimeScale();
end;

function export:f_104_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_JAS240_KillLiza";
    l0._graph = self;
    l0.Started = self.f_119_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_12_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075836792975661765";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_11_Disabled;
    l0:SetDisabled();
end;

function export:f_67_Stopped()
    local l0;
    self = self._graph;
    l0 = self[95];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "Radar";
    l0:In();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    l0 = self[116];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "objective";
    l0:In();
end;

function export:f_31_TattooShown()
    local l0;
    self = self._graph;
    l0 = self[68];
    l0.ambianceId = 41;
    l0:Stop();
end;

function export:f_75_Disabled()
    local l0;
    self = self._graph;
    l0 = self[80];
    l0.MetaSequenceID = Globals.JAS_240_MAIN.MetaID_B30E_B40C;
    l0.SceneEntity = "2076971998923206341";
    l0.SequenceFile = "Sequences/fc3_main/jas_240_b50e/JAS_240_B50E_alt.seq";
    l0:SPIn("From_GSF");
end;

function export:f_74_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[89];
    l0:Condition(0);
end;

function export:f_53_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.sequence2;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:Stop();
end;

function export:f_56_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_FC3_FinalCredits";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/Coop/Misc/EndGame.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_56_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:Enable();
end;

function export:f_51_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_FC3_FinalCredits";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "cinematic_nopausemenu";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Push();
end;

function export:f_112_Out()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0.YawDegree = 309;
    l0:In();
end;

function export:f_23_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075507990300990968";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_24_Disabled;
    l0:SetDisabled();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_94_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_96();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Play();
    self:en_30();
    l0 = self[30];
    l0:Play();
    self:en_82();
    l0 = self[82];
    l0:Play();
end;

function export:f_76_Finished()
    local l0;
    self = self._graph;
    self:en_62();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetaSequenceID;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:Stop();
end;

function export:f_76_SPOut__JAS_240_B60C_ALT_FadeOut_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeinandout2sec";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_76_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeinandout2sec";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
    self:en_62();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0:SetEnabled();
end;

function export:f_98_Received()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:Condition(1);
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "lock_sprint";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:In();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = self[79];
    l0:In();
end;

function export:f_122_Out()
    local l0;
    self = self._graph;
    l0 = self[114];
    l0:Start();
end;

function export:f_102_Out()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_EndChoiceQTE_Jason";
    l0.animation["Optional_QTE_move_file"] = "Ex_EndChoiceQTE_Liza";
    l0.entity["AnchorScene"] = "2078309199195943399";
    l0.entity["Optional_pawn/EntityID"] = "2075507990300990968";
    l0.bool["EnableCameraCloseUp"] = true;
    l0.bool["SetnearZ"] = false;
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
end;

function export:f_22_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075508013524852226";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_23_Disabled;
    l0:SetDisabled();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.sequence2 = l0.ID;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077329150221245251";
    l0._graph = self;
    l0.Out = self.f_122_Out;
    l0:In();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "cinematic_nopausemenu";
    l0._graph = self;
    l0.Out = self.f_121_Out;
    l0:Pop();
end;

function export:f_100_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_101_Out;
    l0:CinematicMode();
end;

function export:f_99_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_104_Out;
    l0:CinematicMode();
end;

function export:f_109_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0.Hour = 14;
    l0.Minute = 0;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetTimeOfDay();
    l0 = self[106];
    l0.MetaSequenceID = self.sequence2;
    l0.SceneEntity = "2078409024612616743";
    l0.SequenceFile = "Sequences/FC3_Main/JAS_240_B40C/JAS_240_B40C_JasonBreathes.seq";
    l0:Play();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[65];
    l0.Destination = "2076664036082066908";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_88_Loaded()
    local l0;
    self = self._graph;
    l0 = self[89];
    l0:Condition(1);
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_118_Started()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:SPIn("From_GSF");
end;

function export:f_101_Out()
    local l0;
    self = self._graph;
    self:en_118();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_30_Finished()
    local l0;
    self = self._graph;
    self:en_77();
    l0 = self[77];
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = Globals.JAS_240_MAIN.MetaID_B30E_B40C;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:Stop();
    self:en_2();
    l0 = self[2];
    l0:Stop();
end;

function export:f_30_SPOut__JAS_240_B50E_FadeOut_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenwithfadeinandout2sec";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_30_SPOut__JAS_240_EndCreditMusic_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:True();
end;

function export:f_30_SPOut__JAS_240_HallucinationEnd_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0._graph = self;
    l0.TattooShown = self.f_31_TattooShown;
    l0.TattooHidden = DummyFunction;
    l0:ShowTattoo();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_JAS240_HardChoices";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_30_SPOut__KillLizaLights_()
    local l0;
    self = self._graph;
    self:en_82();
    l0 = self[82];
    l0:Stop();
end;

function export:f_30_SPOut__Start_GSF_()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:Stop();
end;

function export:f_30_SPOut__StartCrowd_()
    local l0;
    self = self._graph;
    self:en_77();
    l0 = self[77];
    l0:Play();
end;

function export:f_30_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "hallumaster";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
    l0 = self[44];
    l0:In(0);
    l0 = self[27];
    l0:Send();
end;

function export:f_30_Stopped()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In();
end;

function export:f_116_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:en_82()
    local l0;
    l0 = self[82];
    l0.SceneEntity = "2078641013297007474";
    l0.SequenceFile = "Sequences/FC3_Main/JAS_240_B40C/JAS_240_B40C_Lights_Track.seq";
end;

function export:en_111()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_77()
    local l0;
    l0 = self[77];
    l0.SceneEntity = "2075836751116507839";
    l0.SequenceFile = "Sequences/FC3_Main/jas_240_b50e/JAS_240_B50E_warriors_cheer.seq";
end;

function export:en_96()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075836792975661765";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.SceneEntity = "2078353962928483179";
    l0.SequenceFile = "Sequences/FC3_Main/JAS_240_B40C/JAS_240_B40C_FOV_Track.seq";
end;

function export:en_62()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075836792975661765";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_26()
    local l0;
    l0 = self[26];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = true;
    l0.KeepWeaponHolstered = false;
end;

function export:en_118()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_JAS240_SaveLiza";
    l0._graph = self;
    l0.Started = self.f_118_Started;
    l0.Stopped = DummyFunction;
end;

function export:en_30()
    local l0;
    l0 = self[30];
    l0.MetaSequenceID = Globals.JAS_240_MAIN.MetaID_B30E_B40C;
    l0.SceneEntity = "2075836751116507839";
    l0.SequenceFile = "Sequences/fc3_main/JAS_240_B50E/JAS_240_B50E.seq";
end;

-- Empty out anchor definitions
_compilerVersion = 24;
