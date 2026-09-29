-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/hoy_040/hoy_040_b15e/hoy_040_b15e.domino.xml
-- User graph: HOY_040_B15E
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
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Player/SwitchPawnPlayer.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/HOY_040/HOY_040_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[Ex_HoytFightQTE_Part1_Hoyt]], "CMovementResource");
        cbox:LoadResource([[Ex_HoytFightQTE_Part3_Hoyt]], "CMovementResource");
        cbox:LoadResource([[Ex_HoytFightQTE_Part2_Hoyt]], "CMovementResource");
        cbox:LoadResource([[Ex_HoytFightQTE_Part3_Jason]], "CMovementResource");
        cbox:LoadResource([[Ex_HoytFightQTE_Insert_Hoyt]], "CMovementResource");
        cbox:LoadResource([[Ex_HoytFightQTE_Part2_Jason]], "CMovementResource");
        cbox:LoadResource([[Ex_HoytFightQTE_Part1_Jason]], "CMovementResource");
        cbox:LoadResource([[QTEGSF]], "CGSFResource");
        cbox:LoadResource([[Ex_HoytFightQTE_Insert_Jason]], "CMovementResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ePlayer = nil;
    self[19] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[19];
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
    l0.Started = self.f_19_Started;
    l0.Stopped = self.f_19_Stopped;
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
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[4];
    l0._graph = self;
    self[118] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[118];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_118_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[115] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[115];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_115_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[116] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[116];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_116_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[113] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[113];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_113_Received;
    self[12] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_12_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[41];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_41_Out;
    self[40] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[40];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_40_Out;
    self[25] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_25_Received;
    self[103] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[103];
    l0._graph = self;
    l0.Out = self.f_103_Out;
    self[99] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[99];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_99_Out;
    self[7] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_7_Received;
    self[17] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[17];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = DummyFunction;
    self[38] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[38];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_38_Out_0;
    l0.Out[1] = self.f_38_Out_1;
    l0.ResetOut = DummyFunction;
    self[100] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[100];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_100_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_48_Received;
    self[49] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_49_Received;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[3];
    l0._graph = self;
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
            "UseHighQualityShadows",
            "AllowInvertJoysticksInputs",
        },
    };
    l0.Started = self.f_22_Started;
    l0.Stopped = self.f_22_Stopped;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[6] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[6];
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
    l0.Started = self.f_6_Started;
    l0.Stopped = self.f_6_Stopped;
    self[20] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_20_Received;
    self[47] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[47];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_47_Out;
    self[101] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[101];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_101_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_26_Received;
    self[108] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[108];
    l0._graph = self;
    l0.Out = self.f_108_Out;
    self[10] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[52] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[52];
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
    l0.Started = self.f_52_Started;
    l0.Stopped = self.f_52_Stopped;
    self[56] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Started = self.f_56_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_56_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[50];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_50_Out_0;
    l0.Out[1] = self.f_50_Out_1;
    l0.ResetOut = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[34];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_34_Out_0;
    l0.Out[1] = self.f_34_Out_1;
    l0.ResetOut = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Acknowledged = self.f_2_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[24];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_24_Out_0;
    l0.Out[1] = self.f_24_Out_1;
    l0.ResetOut = DummyFunction;
    self[98] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[98];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_98_Out;
    self[105] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[105];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_105_Received;
    self[39] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[39];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = DummyFunction;
    self[117] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[117];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_117_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/Player/SwitchPawnPlayer.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Out = self.f_46_Out;
    self[8] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_8_Received;
    self[102] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[102];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_102_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.HOY_040_MAIN.bIsMissionReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_13_A_is_True;
    l0.A_is_False = self.f_13_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "B10 TEST";
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

function export:OnLeaveZone()
    local l0;
    self:en_109();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:Enable();
end;

function export:f_19_Started()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.message = "QTE2_Success";
    l0:Enable();
    l0 = self[20];
    l0.message = "PlayerDie";
    l0:Enable();
end;

function export:f_19_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:In();
end;

function export:f_55_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_HOY040_DeathCue";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_110_Stopped;
    l0:Stop();
end;

function export:f_72_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076595564025237012";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138272104334243";
    l0.missionLayerId = "9145471359075236";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_14_Disabled;
    l0:Disable();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0:Condition(1);
end;

function export:f_79_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076595564025237012";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_18_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138284196018411";
    l0.missionLayerId = "9145483450759404";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_58_Disabled;
    l0:Disable();
    self:en_109();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_118_Out_0()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_HoytFightQTE_Part3_Jason";
    l0.animation["Optional_QTE_move_file"] = "Ex_HoytFightQTE_Part3_Hoyt";
    l0.entity["AnchorScene"] = "2076115354613991467";
    l0.entity["Optional_pawn/EntityID"] = "2074673963564316232";
    l0.float["Camera_BlendIn_FOV_Timer"] = 0;
    l0.float["Camera_Near_StartFOV"] = 65;
    l0.float["Camera_Far_StartFOV"] = 65;
    l0.bool["EnableCameraCloseUp"] = true;
    l0.bool["SetnearZ"] = false;
    l0.bool["UseHighQualityShadows"] = true;
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
end;

function export:f_51_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_HOY040_DeathCue";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_115_Out_0()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_HoytFightQTE_Part1_Jason";
    l0.animation["Optional_QTE_move_file"] = "Ex_HoytFightQTE_Part1_Hoyt";
    l0.entity["AnchorScene"] = "2076115354613991467";
    l0.entity["Optional_pawn/EntityID"] = "2074673963564316232";
    l0.float["Camera_BlendIn_FOV_Timer"] = 0;
    l0.float["Camera_Near_StartFOV"] = 65;
    l0.float["Camera_Far_StartFOV"] = 65;
    l0.bool["EnableCameraCloseUp"] = true;
    l0.bool["SetnearZ"] = false;
    l0.bool["UseHighQualityShadows"] = true;
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
end;

function export:f_109_Started()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Acknowledge();
end;

function export:f_109_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_HOY040_DeathCue";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_42_Stopped;
    l0:Stop();
end;

function export:f_77_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076801593107305483";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_116_Out_0()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_HoytFightQTE_Insert_Jason";
    l0.animation["Optional_QTE_move_file"] = "Ex_HoytFightQTE_Insert_Hoyt";
    l0.entity["AnchorScene"] = "2076115354613991467";
    l0.entity["Optional_pawn/EntityID"] = "2074673963564316232";
    l0.float["Camera_BlendIn_FOV_Timer"] = 0;
    l0.float["Camera_Near_StartFOV"] = 65;
    l0.float["Camera_Far_StartFOV"] = 65;
    l0.bool["EnableCameraCloseUp"] = true;
    l0.bool["SetnearZ"] = false;
    l0.bool["UseHighQualityShadows"] = true;
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
end;

function export:f_59_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "bloomfadeetowhite";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_59_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreennowfx";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075547924340681141";
    l0._graph = self;
    l0.Out = self.f_89_Out;
    l0:In();
end;

function export:f_110_Stopped()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Reload = true;
    l0:Fail();
end;

function export:f_113_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_HOY040_KnifeFight";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_51_Stopped;
    l0:Stop();
end;

function export:f_70_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076595564025237012";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_13_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Acknowledge();
end;

function export:f_13_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "Ammo|Inventory|Objectiveindicator|Reload|Stealth|Radar|StealthIndicator|Reticule|Objective";
    l0:In();
end;

function export:f_81_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076801593107305483";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Destination = "2074674155873154636";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.HOY_040_MAIN.bIsMissionReloaded = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:CinematicMode();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = self[102];
    l0.SceneEntity = "2076871513136452045";
    l0.SequenceFile = "Sequences/fc3_main/HOY_040_B15_Hoyt_Fight/HOY_040_B15_Fight_03.seq";
    l0:Play();
end;

function export:f_74_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076801593107305483";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = self[100];
    l0.SceneEntity = "2076871513136452045";
    l0.SequenceFile = "Sequences/fc3_main/HOY_040_B15_Hoyt_Fight/HOY_040_B15_Fight_01.seq";
    l0:Play();
end;

function export:f_25_Received()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0:In(1);
end;

function export:f_103_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.HOY_040_MAIN.bIsMissionReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_59_A_is_True;
    l0.A_is_False = self.f_59_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_99_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreennowfx";
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0:Enable();
end;

function export:f_7_Received()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0:In(1);
end;

function export:f_42_Stopped()
    local l0;
    self = self._graph;
    l0 = self[98];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "Ammo|Inventory|Objectiveindicator|Reload|Stealth|Radar|StealthIndicator|Reticule";
    l0:In();
end;

function export:f_38_Out_0()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_38_Out_1()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0:Condition(0);
end;

function export:f_100_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076801593107305483";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_74_Disabled;
    l0:SetDisabled();
    l0 = self[116];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076595564025237012";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_72_Disabled;
    l0:SetDisabled();
end;

function export:f_48_Received()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0:In(1);
end;

function export:f_49_Received()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0:In(0);
end;

function export:f_22_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:In();
end;

function export:f_22_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:In();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138284196018411";
    l0.missionLayerId = "18152682706382731";
    l0._graph = self;
    l0.Activated = self.f_63_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_58_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138284196018411";
    l0.missionLayerId = "18152682706382731";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_16_Stopped()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_75_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076595564025237012";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_63_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_HOY040";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_16_Stopped;
    l0:Stop();
end;

function export:f_111_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Start();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.message = "PlayerDie";
    l0:Enable();
    l0 = self[7];
    l0.message = "QTE3_Success";
    l0:Enable();
end;

function export:f_6_Stopped()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Condition(1);
    l0 = self[40];
    l0:Condition(1);
end;

function export:f_20_Received()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0:In(0);
end;

function export:f_68_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076801593107305483";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0.SceneEntity = "2076871513136452045";
    l0.SequenceFile = "Sequences/fc3_main/HOY_040_B15_Hoyt_Fight/HOY_040_B15_Fight_02.seq";
    l0:Play();
end;

function export:f_101_Finished()
    local l0;
    self = self._graph;
    l0 = self[117];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076801593107305483";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_77_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076595564025237012";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_75_Disabled;
    l0:SetDisabled();
end;

function export:f_26_Received()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0:In(0);
end;

function export:f_108_Out()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.SceneEntity = "2076871513136452045";
    l0.SequenceFile = "Sequences/fc3_main/hoy_040_poker_complete/HOY_040_B10C_04_Part2.seq";
    l0:Play();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:False();
end;

function export:f_52_Started()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.message = "PlayerDie";
    l0:Enable();
    l0 = self[48];
    l0.message = "QTE1_Success";
    l0:Enable();
end;

function export:f_52_Stopped()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0:Condition(1);
end;

function export:f_65_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076967229768879701";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_56_Finished()
    local l0;
    self = self._graph;
    l0 = self[115];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076967229768879701";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_65_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076801593107305483";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_68_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076595564025237012";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_70_Disabled;
    l0:SetDisabled();
end;

function export:f_56_Started()
    local l0;
    self = self._graph;
    l0 = self[103];
    l0:Send();
end;

function export:f_50_Out_0()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_50_Out_1()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0:Condition(0);
end;

function export:f_34_Out_0()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_34_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = self.f_111_Out;
    l0:Enable();
end;

function export:f_2_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0.str = "player:MainCharacter/PawnPlayer.PawnPlayer_Privateer_MissingFinger";
    l0:FromString();
end;

function export:f_24_Out_0()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_24_Out_1()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0:Condition(0);
end;

function export:f_98_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Fail();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[113];
    l0.message = "PlayMusic";
    l0:Enable();
    l0 = self[26];
    l0.message = "PlayerDie";
    l0:Enable();
    l0 = self[105];
    l0.message = "PlayerWin";
    l0:Enable();
end;

function export:f_105_Received()
    local l0;
    self = self._graph;
    self:en_107();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
    l0 = self[34];
    l0:In(1);
    self:en_107();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0:Condition(1);
end;

function export:f_14_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138272104334243";
    l0.missionLayerId = "138284309561657";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_18_Disabled;
    l0:Disable();
end;

function export:f_117_Out_0()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_HoytFightQTE_Part2_Jason";
    l0.animation["Optional_QTE_move_file"] = "Ex_HoytFightQTE_Part2_Hoyt";
    l0.entity["AnchorScene"] = "2076115354613991467";
    l0.entity["Optional_pawn/EntityID"] = "2074673963564316232";
    l0.float["Camera_BlendIn_FOV_Timer"] = 0;
    l0.float["Camera_Near_StartFOV"] = 65;
    l0.float["Camera_Far_StartFOV"] = 65;
    l0.bool["Debug"] = true;
    l0.bool["EnableCameraCloseUp"] = true;
    l0.bool["SetnearZ"] = false;
    l0.bool["UseHighQualityShadows"] = true;
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0:Start();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = self[108];
    l0:In();
end;

function export:f_8_Received()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0:In(0);
end;

function export:f_102_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076801593107305483";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_81_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076595564025237012";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_79_Disabled;
    l0:SetDisabled();
    l0 = self[118];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078600921226432739";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:en_44()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
end;

function export:en_109()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_HOY040_KnifeFight";
    l0._graph = self;
    l0.Started = self.f_109_Started;
    l0.Stopped = self.f_109_Stopped;
end;

function export:en_107()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "PlayerWin";
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

-- Empty out anchor definitions
_compilerVersion = 24;
