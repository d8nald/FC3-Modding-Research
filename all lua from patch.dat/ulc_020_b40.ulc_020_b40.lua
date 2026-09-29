-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b40/ulc_020_b40.domino.xml
-- User graph: ULC_020_B40
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
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Door.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.MusicPlayer.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.ObjectiveTimer.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetFloat.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_AI.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_Death_Zone.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_FinalExplosion.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_ObjectiveMarkers.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_ZiplineHighlight.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0000579f]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.player = nil;
    self.Meta = 0;
    self[25] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_FinalExplosion.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    self[45] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[46] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.MusicPlayer.lua");
    l0 = self[46];
    l0._graph = self;
    self[29] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0.Holstered = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.OnPush = DummyFunction;
    l0.OnPull = self.f_13_OnPull;
    l0.OnClosed = DummyFunction;
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
    self[21] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[1];
    l0._graph = self;
    self[38] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_38_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
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
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_ObjectiveMarkers.lua");
    l0 = self[3];
    l0._graph = self;
    l0.ObjectiveComplete = DummyFunction;
    l0.Out = self.f_3_Out;
    self[7] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_AI.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[22] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Acknowledged = self.f_5_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_Death_Zone.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
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
    self[42] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Out = self.f_42_Out;
    self[18] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[36] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.ObjectiveTimer.lua");
    l0 = self[36];
    l0._graph = self;
    l0.TimeElapsed = self.f_36_TimeElapsed;
    self[20] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.MusicPlayer.lua");
    l0 = self[20];
    l0._graph = self;
    self[31] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Started = self.f_31_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_31_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[47] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[23];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "Explosion_play",
            "PlayCollapse",
            "End",
        },
    };
    l0.Started = self.f_23_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["Explosion_play"] = DummyFunction;
    l0.SPOut["PlayCollapse"] = self.f_23_SPOut__PlayCollapse_;
    l0.SPOut["End"] = self.f_23_SPOut__End_;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40_ZiplineHighlight.lua");
    l0 = self[11];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 389;
    l0.posY = 3000;
    l0.posZ = 109;
    l0._graph = self;
    l0.Out = self.f_52_Out;
    l0:Enable();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:Pause();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_50_Out_0;
    l0.Out[1] = self.f_50_Out_1;
    l0:In();
end;

function export:f_16_Out()
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
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_19_Disabled;
    l0:Disable();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_9_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:Start();
end;

function export:f_9_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 200;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:FromFloat();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.MetaSequenceID = self.Meta;
    l0.SceneEntity = "2077626502192573688";
    l0.SequenceFile = "Sequences/fc3_main/ulc_020/Final_escape.seq";
    l0:Play();
end;

function export:f_50_Out_0()
    local l0;
    self = self._graph;
    l0 = self[46];
    l0:Stop();
end;

function export:f_50_Out_1()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0.seconds = 0.1;
    l0:Start();
end;

function export:f_17_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 389;
    l0.posY = 3000;
    l0.posZ = 109;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:Disable();
end;

function export:f_19_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = PersistentGlobals.ULC_020_MAIN.numberOfLogo;
    l0.B = Globals.ULC_020_MAIN.numberOfLogoTEMP;
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:Add();
end;

function export:f_13_OnPull()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076839198144344200";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_28_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2077667926288111268";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:Destroy();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2077667936285234854";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:Destroy();
end;

function export:f_41_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "explosionrumble";
    l0.IntensityModifier = 0.5;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
end;

function export:f_38_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2077931973378059055";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_41_Destroyed;
    l0:Destroy();
end;

function export:f_51_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_CIN_ULC_020_AfterExplo";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.triggerId = "2076643324162220155";
    l0:Enable();
    l0 = self[7];
    l0:In();
    l0 = self[13];
    l0.Door = "2076839198142247046";
    l0:StartListening();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    Globals.ULC_020_MAIN.Countdown = l0.Target;
    l0 = self[36];
    l0:Start();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = nil;
    l0.wind = nil;
    l0.shadow = "SHA_Quest_ULCs:ULC_Common.ULC_Shadow";
    l0.cloud = nil;
    l0.lighting = "SHA_Quest_ULCs:ULC_Common.ULC_Lighting";
    l0.exposure = "SHA_Quest_ULCs:ULC_Common.ULC_Exposure";
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_Fog";
    l0.sky = "SHA_Quest_ULCs:ULC_Common.ULC_Skydome";
    l0.stormFactor = nil;
    l0.adaptiveBloom = "Preview_Lighting:Preview_AdaptiveBloom";
    l0.motionBlur = "Preview_Lighting:Preview_MotionBlur";
    l0.depthOfField = "Preview_Lighting:Preview_DOF";
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_44_Disabled;
    l0:Disable();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 1000000;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_9_A_is_True;
    l0.A_is_False = self.f_9_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_52_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Acknowledge();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    self.Meta = l0.ID;
    l0 = self[29];
    l0.ActionMapName = "narrative_interact_qte";
    l0:BasicSetup();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0.triggerId = "2077931140492045087";
    l0:Enable();
end;

function export:f_5_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:Send();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:In();
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:Start();
end;

function export:f_15_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.ActionMapName = "narrative_interact_qte";
    l0.KeepGodMode = false;
    l0.KeepHUDMode = true;
    l0.KeepWeaponHolstered = false;
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_020_MAIN.IsReloaded = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076643324560679419";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_17_Removed;
    l0:Remove();
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.Meta;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:Stop();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = nil;
    l0.wind = nil;
    l0.shadow = "SHA_Quest_ULCs:ULC_Common.ULC_Shadow";
    l0.cloud = nil;
    l0.lighting = "SHA_Quest_ULCs:ULC_Common.ULC_Lighting";
    l0.exposure = "SHA_Quest_ULCs:ULC_Common.ULC_Exposure";
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_Fog";
    l0.sky = "SHA_Quest_ULCs:ULC_Common.ULC_Skydome";
    l0.stormFactor = nil;
    l0.adaptiveBloom = "Preview_Lighting:Preview_AdaptiveBloom";
    l0.motionBlur = "Preview_Lighting:Preview_MotionBlur";
    l0.depthOfField = "Preview_Lighting:Preview_DOF";
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
    l0 = self[47];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "B40 Loaded";
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
    l0:ToAll();
    l0 = self[11];
    l0:In();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    PersistentGlobals.ULC_020_MAIN.numberOfLogo = l0.Target;
    l0 = self[1];
    l0:Complete();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.seconds = 0.1;
    l0:Start();
end;

function export:f_36_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.SceneEntity = "2076783303439945919";
    l0.SequenceFile = "Sequences/fc3_main/ulc_020/explosion_event.seq";
    l0:Play();
end;

function export:f_31_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 1000000;
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:Damage();
end;

function export:f_31_Started()
    local l0;
    self = self._graph;
    l0 = self[45];
    l0.SoundId = "0x0000579f";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_44_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:False();
end;

function export:f_23_SPOut__End_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "B40 completed";
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
    l0:ToAll();
end;

function export:f_23_SPOut__PlayCollapse_()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.SceneEntity = "2077641773231910196";
    l0.SequenceFile = "Sequences/fc3_main/ulc_020/rock_collapse.seq";
    l0:Play();
end;

function export:f_23_Started()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In();
    l0 = self[28];
    l0:Start();
end;

function export:en_37()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_37_Out;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
