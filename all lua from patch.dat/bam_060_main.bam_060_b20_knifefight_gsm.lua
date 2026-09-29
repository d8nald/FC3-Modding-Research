-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_main.domino.xml
-- User graph: BAM_060_B20_KnifeFight_GSM
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.__ExoticFailOrSuccess.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.__RescueKeithNIS.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/NoWeaponMode.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetChapter.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[Ex_BambiFight_Bambi]], "CMovementResource");
        cbox:LoadResource([[Ex_BambiFightQTE_Jason]], "CMovementResource");
        cbox:LoadResource([[QTEGSF]], "CGSFResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Success = DummyFunction;
    self.Fail = DummyFunction;
    self.Out_Started = DummyFunction;
    self.MetasequenceID = 0;
    self.player = nil;
    self[28] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[28];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[3];
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
    l0.Started = self.f_3_Started;
    l0.Stopped = self.f_3_Stopped;
    self[4] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_4_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.__ExoticFailOrSuccess.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_1_Success;
    l0.Fail = self.f_1_Fail;
    self[27] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[27];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_27_Out;
    self[16] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Started = self.f_16_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[20] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Done = self.f_20_Done;
    l0.Out = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_23_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[15] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.__RescueKeithNIS.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Done = self.f_15_Done;
    self[12] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[12];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_12_Out;
    self[11] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[11];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_11_Out;
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
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[9] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_9_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = self[27];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "radar|reticule|ammo|objectiveindicator";
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077361374194834459";
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_3_Started()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In();
    l0 = self[23];
    l0.seconds = 0.4;
    l0:Start();
    self:Out_Started();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138271162605619";
    l0.missionLayerId = "138290241657732";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_3_Stopped()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Condition(1);
end;

function export:f_4_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075502180229456634";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:In();
end;

function export:f_1_Fail()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:Enable();
end;

function export:f_1_Success()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:MissionSuccess();
    l0 = self[7];
    l0.seconds = 6.5;
    l0:Start();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.objectiveId = {
        section = "Objectives",
        item = "BAM_060_OBJ_Rescue Keith",
        id = "103653",
    };
    l0:SetMissionObjective();
    l0 = self[28];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "radar";
    l0:In();
end;

function export:f_16_Started()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Start();
end;

function export:f_20_Done()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Condition(0);
end;

function export:f_23_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "bloomfadeetowhite";
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:Disable();
end;

function export:f_15_Done()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:Enable();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.BAM_060_MAIN.KnifeFightFailed = l0.Target;
    self:Success();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.SceneEntity = "2076223983751021914";
    l0.SequenceFile = "Sequences/fc3_main/bam_060_b20e/BAM_060_B20E_DeadBambiLoop.seq";
    l0:Play();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:False();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "objectiveindicator|objective";
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Start();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = nil;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:Off();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetChapter.lua")];
    l0.chapter = 7;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    PersistentGlobals.BAM_060_MAIN.KnifeFightFailed = l0.Target;
    self:Fail();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:True();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "Ex_BambiFightQTE_Jason";
    l0.animation["Optional_QTE_move_file"] = "Ex_BambiFight_Bambi";
    l0.entity["AnchorScene"] = "2075809273314547121";
    l0.entity["Optional_pawn/EntityID"] = "2077361374194834459";
    l0.float["Camera_BlendIn_FOV_Timer"] = 0;
    l0.float["Camera_Near_StartFOV"] = 65;
    l0.float["Camera_Far_StartFOV"] = 65;
    l0.bool["EnableCameraCloseUp"] = true;
    l0.bool["SetnearZ"] = false;
    l0.bool["DefaultUIOverlay"] = false;
    l0.bool["UseHighQualityShadows"] = true;
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075502180229456634";
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:NormalMode();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Start();
end;

-- Empty out anchor definitions
function export:Success()
    
end;
function export:Fail()
    
end;
function export:Out_Started()
    
end;
_compilerVersion = 24;
