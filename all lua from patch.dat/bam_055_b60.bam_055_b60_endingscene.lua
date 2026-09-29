-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: BAM_055_B60_EndingScene
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SendGSFGenericEvent.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        
        -- Load resources
        cbox:LoadResource([[ex_finalescape_jason]], "CMovementResource");
        cbox:LoadResource([[QTEGSF]], "CGSFResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Player = nil;
    self.isSafe = false;
    self[5] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_5_Received;
    self[41] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[57];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_57_Out;
    self[37] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[37];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "FadeToWhite",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["FadeToWhite"] = self.f_37_SPOut__FadeToWhite_;
    self[55] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[55];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_55_Out;
    self[54] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = self.f_54_Out;
    l0.Holstered = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[49];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_49_Out;
    self[39] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_39_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_29_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[16];
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
    l0.Started = self.f_16_Started;
    l0.Stopped = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
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
    self[27] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Enabled = self.f_27_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_27_Received;
    self[25] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[25];
    l0._graph = self;
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
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_28_Near;
    l0.Far = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_58_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[2];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_2_Out;
    self[13] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[13];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "CompundRock_1",
            "CompundRock_2",
            "DeathHeight",
        },
    };
    l0.Started = self.f_13_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["CompundRock_1"] = self.f_13_SPOut__CompundRock_1_;
    l0.SPOut["CompundRock_2"] = DummyFunction;
    l0.SPOut["DeathHeight"] = self.f_13_SPOut__DeathHeight_;
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
    self[38] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[51] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[51];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_51_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076772406587827283";
    l0._graph = self;
    l0.Enabled = self.f_24_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Pause();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:Stop();
end;

function export:f_5_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076120776882277642";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_43_Removed;
    l0:Remove();
end;

function export:f_57_Out()
    self = self._graph;
    self:Out();
end;

function export:f_37_SPOut__FadeToWhite_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "fadetowhite";
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:Enable();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0:Start();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.triggerId = "2076506735232684985";
    l0:Enable();
end;

function export:f_54_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:NormalMode();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:PlayFromStart();
    l0 = self[29];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_24_Enabled()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:Play();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.GSFName = "QTEGSF";
    l0.animation["QTE_move_file"] = "ex_finalescape_jason";
    l0.entity["AnchorScene"] = "2077543995512203191";
    l0.bool["AllowInvertJoysticksInputs"] = false;
    l0:Start();
end;

function export:f_39_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.seconds = 0.1;
    l0:Start();
    l0 = self[38];
    l0.SceneEntity = "2077543995512203191";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb06/b06_hugerock_end.seq";
    l0:PlayFromStart();
    self:en_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.isSafe = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077848551802546509";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_29_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.message = "QTE2_InProgress";
    l0:Enable();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077946186481839343";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_16_Started()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Condition(0);
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0:Condition(1);
end;

function export:f_48_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2078136461294596049";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_40_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2078136458457149391";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2077946098950909164";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
    l0 = self[48];
    l0.seconds = 0.3;
    l0:Start();
end;

function export:f_27_Enabled()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "reticule";
    l0:In();
end;

function export:f_27_Received()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Condition(1);
end;

function export:f_23_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077946204070653169";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_53_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:Fail();
end;

function export:f_30_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077946211689606393";
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077946213933559035";
    l0._graph = self;
    l0.Started = self.f_20_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2078137878654757399";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_44_Destroyed;
    l0:Destroy();
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:Enable();
end;

function export:f_28_Near()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0:In();
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.Player = l0.LocalPlayer;
    l0 = self[54];
    l0:BasicSetup();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "StopDamg";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_20_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077946211689606391";
    l0._graph = self;
    l0.Started = self.f_23_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077946205593185523";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "Ammo|Inventory|Objectiveindicator|Reload|Stealth|Radar|StealthIndicator|Reticule";
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.seconds = 1.3;
    l0:Start();
    l0 = self[7];
    l0.seconds = 4.5;
    l0:Start();
    l0 = self[12];
    l0.message = "ExoticQteGSFEnded";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:True();
end;

function export:f_43_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0.entity = nil;
    l0.eventName = "CGSFGenericEvent";
    l0.param1 = "QteSetResult";
    l0.param2 = "2";
    l0.param3 = "success";
    l0.param4 = nil;
    l0.param5 = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    self:en_34();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[5];
    l0.message = "ExoticQteGSFEnded";
    l0:Enable();
    l0 = self[51];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "reticule";
    l0:In();
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_58_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0:Condition(0);
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.Entities = self.Player;
    l0.id2 = "2077928858799051989";
    l0.nearZone = 1;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2078122432920596321";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_13_SPOut__CompundRock_1_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2077946037391103976";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_13_SPOut__DeathHeight_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.isSafe;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_31_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077946213935656189";
    l0._graph = self;
    l0.Started = self.f_30_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.SceneEntity = "2077543995512203191";
    l0.SequenceFile = "Sequences/fc3_main/bam_055_b70/BAM_055_B70_FinalEscape.seq";
    l0:Play();
end;

function export:f_52_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0.seconds = 1.5;
    l0:Start();
end;

function export:f_44_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2078136480965881810";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:Destroy();
end;

function export:f_31_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0:Close();
    l0 = Boxes[GetPathID("Domino/System/SendGSFGenericEvent.lua")];
    l0.entity = nil;
    l0.eventName = "CGSFGenericEvent";
    l0.param1 = "QteSetResult";
    l0.param2 = "2";
    l0.param3 = "failure";
    l0.param4 = nil;
    l0.param5 = nil;
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:In();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = self.f_52_Out;
    l0:Enable();
end;

function export:en_34()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_34_Out;
end;

function export:en_33()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_33_Out;
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.SceneEntity = "2077543995512203191";
    l0.SequenceFile = "Sequences/fc3_main/bam_055_b70/BAM_055_B70_CameraShake.seq";
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.SceneEntity = "2077543995512203191";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb06/b06_hugerock.seq";
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
