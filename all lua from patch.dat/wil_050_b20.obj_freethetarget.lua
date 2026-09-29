-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b20/wil_050_b20.domino.xml
-- User graph: OBJ_FreeTheTarget
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
        cbox:RegisterBox("Domino/System/Coop/Group/AddToGroup.lua");
        cbox:RegisterBox("Domino/System/AI/AIEventLog.lua");
        cbox:RegisterBox("Domino/System/Bind_v2.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.ChopperArrival.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.Convoy04_FailProof.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/UI/DisplayHealthBar.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.FailProofWave.lua");
        cbox:RegisterBox("Domino/System/GadgetWieldListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/Player/IgnoreSignal.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/NoWeaponMode.lua");
        cbox:RegisterBox("Domino/System/AI/NPCDamageModifier.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/AI/PawnSetArmy.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetNPCFact.lua");
        cbox:RegisterBox("Domino/System/AI/SetProgressionMode.lua");
        cbox:RegisterBox("Domino/System/AI/SetReevaluateCover.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/AI/SpawnReinforcement_v4.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TaggingModifier_v2.lua");
        cbox:RegisterBox("Domino/System/AI/TargetModifier.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        cbox:RegisterBox("Domino/System/VehicleDamageListener.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/WeaponVisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/Player/WieldInventory_v3.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00171897.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017711b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001719b1]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00195008.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0019504d.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b8fbf]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00161e95.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b8fbf.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001719b1.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00195008]], "CSoundResource");
        cbox:LoadResource([[sndres0x00171897]], "CSoundResource");
        cbox:LoadResource([[sndres0x00161e95]], "CSoundResource");
        cbox:LoadResource([[sndres0x001b8571]], "CSoundResource");
        cbox:LoadResource([[sndres0x0019504d]], "CSoundResource");
        cbox:LoadResource([[CSnipingChallenge_CIT020]], "CGSFResource");
        cbox:LoadResource([[sndres0x0017711b]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.OliverHasBeenKill = DummyFunction;
    self.BoatIsDestroy = DummyFunction;
    self.OliverIsInChopper = DummyFunction;
    self.ePlayer = nil;
    self.OliverStunt02 = {
    };
    self.OvilerStunt02 = nil;
    self.CheckForMercID03 = {
    };
    self.ChopperMeta = 0;
    self.StartDepartureIsCalled = false;
    self[222] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[222];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = self.f_222_Stopped;
    l0.Skipped = DummyFunction;
    self[270] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[270];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_270_Loaded;
    l0.Unloaded = DummyFunction;
    self[139] = cbox:CreateBox("Domino/System/GadgetWieldListener.lua");
    l0 = self[139];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_139_Drawn;
    l0.Holstered = DummyFunction;
    self[90] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[90];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_90_Near;
    l0.Far = DummyFunction;
    self[188] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[188];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_8_Out_0;
    l0.ResetOut = DummyFunction;
    self[183] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[183];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
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
    self[12] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0._DynamicAnchors = {
        entity = {
            "InteractiveWeapon/EntityID",
            "EntityToLookAt",
        },
        float = {
            "gCameraYawMinDeviation",
            "gCameraYawMaxDeviation",
            "gCameraPitchMinDeviation",
            "gCameraPitchMaxDeviation",
        },
        bool = {
            "IsStanceCrouch",
        },
    };
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    self[169] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[169];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_169_Near;
    l0.Far = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[36];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_36_Out_0;
    l0.ResetOut = DummyFunction;
    self[107] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[107];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_107_Out;
    self[59] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = DummyFunction;
    l0.Healed = DummyFunction;
    l0.Critical = DummyFunction;
    l0.Killed = self.f_59_Killed;
    l0.Torso = DummyFunction;
    l0.Head = DummyFunction;
    l0.Leg = DummyFunction;
    self[154] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[154];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_154_Out_0;
    l0.ResetOut = DummyFunction;
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
    self[75] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[75];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_75_Loaded;
    l0.Unloaded = DummyFunction;
    self[153] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[153];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_153_Out_0;
    l0.ResetOut = DummyFunction;
    self[53] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_53_Spawned;
    self[19] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = self.f_19_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_19_MemberRemoved;
    self[51] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[251] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[251];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_7_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
    self[87] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_87_Loaded;
    l0.Unloaded = DummyFunction;
    self[135] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[135];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_135_Out_0;
    l0.ResetOut = DummyFunction;
    self[65] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[65];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_65_Loaded;
    l0.Unloaded = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_41_Loaded;
    l0.Unloaded = DummyFunction;
    self[273] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[273];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_273_Loaded;
    l0.Unloaded = DummyFunction;
    self[221] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[221];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = self.f_221_Select;
    l0.Start = DummyFunction;
    l0.End = self.f_221_End;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = DummyFunction;
    l0.Markup2 = DummyFunction;
    l0.Available = DummyFunction;
    self[264] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[264];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = self.f_264_Completed;
    self[174] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.Convoy04_FailProof.lua");
    l0 = self[174];
    l0._graph = self;
    l0.Out = self.f_174_Out;
    self[15] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = self.f_15_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_15_MemberRemoved;
    self[201] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[201];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_201_Loaded;
    l0.Unloaded = DummyFunction;
    self[115] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[115];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_115_Loaded;
    l0.Unloaded = DummyFunction;
    self[259] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[259];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = self.f_259_Leave;
    l0.Use = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[57];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_57_Out;
    self[186] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[186];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[158] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[158];
    l0._graph = self;
    l0.Out = self.f_158_Out;
    self[26] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_26_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[155] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[155];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_155_Spawned;
    self[103] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[103];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_103_Out;
    self[72] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[72];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_72_Out_0;
    l0.ResetOut = DummyFunction;
    self[243] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[243];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_243_Loaded;
    l0.Unloaded = DummyFunction;
    self[105] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[105];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_105_Out;
    self[203] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[203];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_203_Out_0;
    l0.ResetOut = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = self.f_14_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_14_MemberRemoved;
    self[54] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_54_Loaded;
    l0.Unloaded = DummyFunction;
    self[263] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[263];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_263_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[225] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[225];
    l0._graph = self;
    l0.Out = self.f_225_Out;
    self[143] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[143];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[268] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.FailProofWave.lua");
    l0 = self[268];
    l0._graph = self;
    l0.SkipWave = self.f_268_SkipWave;
    self[52] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_52_Spawned;
    self[10] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_10_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[244] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[244];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_244_Loaded;
    l0.Unloaded = DummyFunction;
    self[236] = cbox:CreateBox("Domino/System/WeaponVisibilityModifier.lua");
    l0 = self[236];
    l0._graph = self;
    l0.Out = self.f_236_Out;
    self[50] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_50_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[67] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_67_Loaded;
    l0.Unloaded = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[71] = cbox:CreateBox("Domino/System/VehicleDamageListener.lua");
    l0 = self[71];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.StateChange = DummyFunction;
    l0.Destroyed = self.f_71_Destroyed;
    l0.OnFire = self.f_71_OnFire;
    l0.Broken = self.f_71_Broken;
    l0.MajorDamage = DummyFunction;
    l0.MinorDamage = DummyFunction;
    l0.Mint = DummyFunction;
    l0.Disabled = self.f_71_Disabled;
    self[94] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[94];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = self.f_94_Start;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = self.f_94_Markup1;
    l0.Markup2 = self.f_94_Markup2;
    l0.Available = DummyFunction;
    self[266] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.FailProofWave.lua");
    l0 = self[266];
    l0._graph = self;
    l0.SkipWave = self.f_266_SkipWave;
    self[285] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[285];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[171] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[171];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_171_Near;
    l0.Far = DummyFunction;
    self[267] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.FailProofWave.lua");
    l0 = self[267];
    l0._graph = self;
    l0.SkipWave = self.f_267_SkipWave;
    self[1] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_1_Spawned;
    self[97] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[97];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_97_Spawned;
    self[138] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[138];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_138_Loaded;
    l0.Unloaded = DummyFunction;
    self[91] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_B20/WIL_050_B20.ChopperArrival.lua");
    l0 = self[91];
    l0._graph = self;
    l0.LandingAnimationStarted = DummyFunction;
    self[252] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[252];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_252_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[152] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[152];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = DummyFunction;
    self[88] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[88];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_88_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.ResetOut = DummyFunction;
    self[78] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[78];
    l0._graph = self;
    l0.Out = self.f_78_Out;
    self[230] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[230];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_230_Loaded;
    l0.Unloaded = DummyFunction;
    self[234] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[234];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_234_Loaded;
    l0.Unloaded = DummyFunction;
    self[282] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[282];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_282_Loaded;
    l0.Unloaded = DummyFunction;
    self[38] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_38_Spawned;
    self[170] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[170];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_170_Near;
    l0.Far = DummyFunction;
    self[63] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Out = self.f_63_Out;
    self[47] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_47_MemberRemoved;
    self[168] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[168];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_168_Near;
    l0.Far = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/AI/SpawnReinforcement_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = DummyFunction;
    l0.Spawned = self.f_32_Spawned;
    self[220] = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self[220];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Select = DummyFunction;
    l0.Start = DummyFunction;
    l0.End = DummyFunction;
    l0.Interrupt = DummyFunction;
    l0.Markup1 = self.f_220_Markup1;
    l0.Markup2 = self.f_220_Markup2;
    l0.Available = DummyFunction;
    self[133] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[133];
    l0._graph = self;
    l0.Out = self.f_133_Out;
    self[137] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[137];
    l0._graph = self;
    l0.Out = self.f_137_Out;
    self[82] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[82];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_82_Out_0;
    l0.ResetOut = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_25_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[242] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[242];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "RemovePilot",
        },
    };
    l0.Started = self.f_242_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_242_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["RemovePilot"] = self.f_242_SPOut__RemovePilot_;
    self[265] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[265];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_265_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_42_Loaded;
    l0.Unloaded = DummyFunction;
    self[209] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[209];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_64_Out;
    l0:In();
end;

function export:MissionIsRestarted()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_62_Out_0;
    l0.Out[1] = self.f_62_Out_1;
    l0.Out[2] = DummyFunction;
    l0.Out[3] = self.f_62_Out_3;
    l0:In();
end;

function export:f_228_Out()
    local l0;
    self = self._graph;
    self:en_132();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_223_Out()
    local l0;
    self = self._graph;
    l0 = self[263];
    l0:In(0);
end;

function export:f_229_Out()
    local l0;
    self = self._graph;
    l0 = self[135];
    l0:In(0);
end;

function export:f_250_Out()
    local l0;
    self = self._graph;
    self:en_248();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_132_Out()
    local l0;
    self = self._graph;
    l0 = self[91];
    l0:StopMetaLoop();
end;

function export:f_219_Out()
    local l0;
    self = self._graph;
    l0 = self[282];
    l0.entityId = "2078922419891881563";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[225];
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Stop();
end;

function export:f_83_Out_0()
    local l0;
    self = self._graph;
    l0 = self[105];
    l0:Condition(1);
end;

function export:f_83_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2077925878146594613";
    l0._graph = self;
    l0.Out = self.f_106_Out;
    l0:CreateAILogInArmy();
end;

function export:f_20_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
    self:en_19();
    l0 = self[19];
    l0:Disable();
end;

function export:f_222_Stopped()
    local l0;
    self = self._graph;
    l0 = self[242];
    l0.MetaSequenceID = self.ChopperMeta;
    l0.SceneEntity = "2078035168152618211";
    l0.SequenceFile = "Sequences/WIL050/ChopperDeparture.seq";
    l0:Play();
end;

function export:f_270_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075546769214677550";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_136_Enabled()
    local l0;
    self = self._graph;
    self:en_232();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Enable();
end;

function export:f_182_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "monocular_exoticgameplay";
    l0._graph = self;
    l0.Out = self.f_121_Out;
    l0:Pop();
end;

function export:f_182_Out_1()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.objectiveId = {
        section = "Objectives",
        item = "WIL050_OBJ_StartSnipe",
        id = "43805",
    };
    l0.PlayComplete = false;
    l0:SetMissionObjective();
end;

function export:f_182_Out_2()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0019504d";
    l0:ForcePlay_Priority();
end;

function export:f_182_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "updateshooting ";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_184_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[203];
    l0:In(0);
end;

function export:f_139_Drawn()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "monocular_exoticgameplay";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Push();
end;

function export:f_90_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_119_Out_0;
    l0.Out[1] = self.f_119_Out_1;
    l0:In();
end;

function export:f_28_Out_0()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0.objectiveId = {
        section = "Objectives",
        item = "WIL050_OBJ_ProtectOliver",
        id = "83734",
    };
    l0:SetMissionObjective();
end;

function export:f_28_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetNPCFact.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0.FactName = "IgnoreHurt";
    l0.BooleanValue = true;
    l0.IntegerValue = nil;
    l0._graph = self;
    l0.Out = self.f_238_Out;
    l0:In();
end;

function export:f_28_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2074617913641274748";
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:SetAll();
end;

function export:f_28_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0:Slow();
end;

function export:f_28_Out_4()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Disable();
end;

function export:f_28_Out_5()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_28_Out_6()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.WIL_050_MAIN.WIL_050_MainIsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_45_A_is_True;
    l0.A_is_False = self.f_45_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_208_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2075658205274318644";
    l0._graph = self;
    l0.Out = self.f_114_Out;
    l0:SetAll();
end;

function export:f_208_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#373BAF30";
    l0.Battlefield = "2078629126341699375";
    l0._graph = self;
    l0.Out = self.f_217_Out;
    l0:SetAll();
end;

function export:f_208_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077925208385388139";
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:Activate();
end;

function export:f_166_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_167_Out;
    l0:ReEvaluateCover();
end;

function export:f_8_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_83_Out_0;
    l0.Out[1] = self.f_83_Out_1;
    l0:In();
end;

function export:f_163_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_176_Out;
    l0:StraightNoStopping();
end;

function export:f_96_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0:Condition(0);
end;

function export:f_124_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Fast();
end;

function export:f_144_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2074564444651788102";
    l0._graph = self;
    l0.Out = self.f_96_Out;
    l0:SetAll();
end;

function export:f_144_Out_1()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.seconds = 8;
    l0:Start();
end;

function export:f_79_Out_0()
    local l0;
    self = self._graph;
    self:en_132();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_79_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.Player = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_79_Out_2()
    self = self._graph;
    self:OliverIsInChopper();
end;

function export:f_231_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "TEEEEEEEEEEESSSSSSSSSSSSSSSSSSSSSSSSSSTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "RED";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.ContextualAction = "2078046265767185465";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_136_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_231_Out_1()
    local l0;
    self = self._graph;
    l0 = self[244];
    l0.entityId = "2076305649798508698";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_101_Out_0()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0:Condition(1);
end;

function export:f_101_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2077925869869135661";
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:CreateAILogInArmy();
end;

function export:f_104_Out_0()
    local l0;
    self = self._graph;
    l0 = self[170];
    l0.Entities = Globals.WIL_050_MAIN.OliverMain;
    l0.id2 = "2075603741932791061";
    l0.nearZone = 5;
    l0:Enable();
end;

function export:f_104_Out_1()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Enable();
end;

function export:f_216_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = "#373BAF30";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:StraightNoStopping();
end;

function export:f_62_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_215_Out;
    l0:In();
end;

function export:f_62_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138244187360113";
    l0.missionLayerId = "9145470288693581";
    l0._graph = self;
    l0.Activated = self.f_80_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_62_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "updateshooting ";
    l0.ignore = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_283_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "look_at_tattoo_end";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_74_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.Player = nil;
    l0._graph = self;
    l0.Out = self.f_77_Out;
    l0:Enable();
end;

function export:f_74_Out_1()
    local l0;
    self = self._graph;
    l0 = self[133];
    l0:Send();
end;

function export:f_74_Out_2()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.objectiveId = {
        section = "Objectives",
        item = "WIL_050_OBJ_Wait",
        id = "160905",
    };
    l0:SetMissionObjective();
end;

function export:f_74_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 5,
    };
    l0.Out[0] = self.f_49_Out_0;
    l0.Out[1] = self.f_49_Out_1;
    l0.Out[2] = self.f_49_Out_2;
    l0.Out[3] = self.f_49_Out_3;
    l0.Out[4] = self.f_49_Out_4;
    l0:In();
end;

function export:f_74_Out_4()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_272_Out;
    l0:In();
end;

function export:f_169_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_144_Out_0;
    l0.Out[1] = self.f_144_Out_1;
    l0:In();
end;

function export:f_36_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_101_Out_0;
    l0.Out[1] = self.f_101_Out_1;
    l0:In();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0.PawnEntity = Globals.WIL_050_MAIN.OliverMain;
    l0.Destination = "2075658385402898276";
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_107_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "GO PROGRESSION 0666666666666666666666666666666666";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_109_Out_0;
    l0.Out[1] = self.f_109_Out_1;
    l0.Out[2] = self.f_109_Out_2;
    l0:In();
end;

function export:f_69_Out_0()
    local l0;
    self = self._graph;
    l0 = self[103];
    l0:Condition(1);
end;

function export:f_69_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2077925876785542961";
    l0._graph = self;
    l0.Out = self.f_95_Out;
    l0:CreateAILogInArmy();
end;

function export:f_165_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_160_Out;
    l0:ReEvaluateCover();
end;

function export:f_68_Activated()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0.entityId = Globals.WIL_050_MAIN.OliverMain;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_120_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:ReEvaluateCover();
end;

function export:f_59_Killed()
    self = self._graph;
    self:OliverHasBeenKill();
end;

function export:f_154_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_147_Out_0;
    l0.Out[1] = self.f_147_Out_1;
    l0:In();
end;

function export:f_39_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[103];
    l0:Condition(0);
end;

function export:f_235_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetNPCFact.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0.FactName = "IgnoreHurt";
    l0.BooleanValue = false;
    l0.IntegerValue = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_224_Out_0()
    local l0;
    self = self._graph;
    l0 = self[263];
    l0:In(0);
end;

function export:f_224_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.Player = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Disable();
end;

function export:f_224_Out_2()
    self = self._graph;
    self:OliverIsInChopper();
end;

function export:f_75_Loaded()
    local l0;
    self = self._graph;
    l0 = self[138];
    l0.entityId = "2075658385402898276";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[236];
    l0.pawn = Globals.WIL_050_MAIN.OliverMain;
    l0:Invisible();
end;

function export:f_153_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_145_Out_0;
    l0.Out[1] = self.f_145_Out_1;
    l0:In();
end;

function export:f_159_Out()
    local l0;
    self = self._graph;
    l0 = self[221];
    l0.ContextualAction = "2078059308280480295";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "GO PROGRESSION 022222222222222222";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_104_Out_0;
    l0.Out[1] = self.f_104_Out_1;
    l0:In();
end;

function export:f_122_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2077924035945216327";
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:SetAll();
end;

function export:f_122_Out_1()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.seconds = 8;
    l0:Start();
end;

function export:f_162_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_175_Out;
    l0:StraightNoStopping();
end;

function export:f_53_Spawned()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetBattlefield();
end;

function export:f_19_Enabled()
    local l0;
    self = self._graph;
    l0 = self[268];
    l0.DelayBeforeSkip = 40;
    l0:Enable();
end;

function export:f_19_MemberRemoved()
    local l0, l1;
    self = self._graph;
    l0 = self[19];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 2;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_150_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
    l0 = self[19];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 0;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_20_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
end;

function export:f_126_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_124_Out;
    l0:ReEvaluateCover();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#85784C16";
    l0.Battlefield = "2074617913641274748";
    l0._graph = self;
    l0.Out = self.f_118_Out;
    l0:SetAll();
end;

function export:f_118_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "2074646249956465863";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_119_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2077923520085628000";
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:SetAll();
end;

function export:f_119_Out_1()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.seconds = 15;
    l0:Start();
end;

function export:f_141_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Fast();
end;

function export:f_227_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayHealthBar.lua")];
    l0.entityId = Globals.WIL_050_MAIN.OliverMain;
    l0.entityName = {
        section = "Characters",
        item = "VICEGUIDE_CHARACTERS_OLIVER",
        id = "90998",
    };
    l0._graph = self;
    l0.Showned = self.f_134_Showned;
    l0.Hidden = DummyFunction;
    l0:Show();
end;

function export:f_227_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_81_Out_0;
    l0.Out[1] = self.f_81_Out_1;
    l0:In();
end;

function export:f_227_Out_2()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0.pawns = Globals.WIL_050_MAIN.OliverMain;
    l0:Enable();
end;

function export:f_227_Out_3()
    local l0;
    self = self._graph;
    l0 = self[65];
    l0.entityId = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0:Enable();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:ReEvaluateCover();
end;

function export:f_175_Out()
    local l0;
    self = self._graph;
    l0 = self[90];
    l0.Entities = Globals.WIL_050_MAIN.OliverMain;
    l0.id2 = "2075603743765701911";
    l0.nearZone = 5;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "GO PROGRESSION 03333333333333333333333333333";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_121_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Start();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:ReEvaluateCover();
end;

function export:f_7_StateStart()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 7,
    };
    l0.Out[0] = self.f_28_Out_0;
    l0.Out[1] = self.f_28_Out_1;
    l0.Out[2] = self.f_28_Out_2;
    l0.Out[3] = self.f_28_Out_3;
    l0.Out[4] = self.f_28_Out_4;
    l0.Out[5] = self.f_28_Out_5;
    l0.Out[6] = self.f_28_Out_6;
    l0:In();
end;

function export:f_87_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = "2075493771245601616";
    l0.Player = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:TagEntity();
end;

function export:f_73_Drew()
    local l0;
    self = self._graph;
    l0 = self[139];
    l0.categoryFilter = "binoculars";
    l0:Enable();
end;

function export:f_135_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_182_Out_0;
    l0.Out[1] = self.f_182_Out_1;
    l0.Out[2] = self.f_182_Out_2;
    l0.Out[3] = self.f_182_Out_3;
    l0:In();
end;

function export:f_178_Out()
    local l0;
    self = self._graph;
    l0 = self[171];
    l0.Entities = Globals.WIL_050_MAIN.OliverMain;
    l0.id2 = "2075603747402163485";
    l0.nearZone = 5;
    l0:Enable();
end;

function export:f_85_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_163_Out;
    l0:ReEvaluateCover();
end;

function export:f_212_Out()
    local l0;
    self = self._graph;
    l0 = self[143];
    l0.ReinforcementPoint = "2077923938064840903";
    l0.Battlefield = "2074649846486170959";
    l0.IdleBSR = "2074649846486170959";
    l0.AlertBSR = "2074649846486170959";
    l0.CombatBSR = "2074649846486170959";
    l0:SpawnInCautious();
end;

function export:f_65_Loaded()
    local l0;
    self = self._graph;
    l0 = self[71];
    l0.Vehicle = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0:Enable();
end;

function export:f_41_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = "2075493770092167896";
    l0.Player = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:TagEntity();
end;

function export:f_273_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075546702133076451";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_221_End()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = Globals.WIL_050_MAIN.OliverMain;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = self.f_235_Out;
    l0:Off();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.ContextualAction = "2078059308280480295";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_221_Select()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "START SEARCHING!!!";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_264_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_174_Out()
    local l0;
    self = self._graph;
    l0 = self[137];
    l0:Send();
end;

function export:f_81_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2074617913641274748";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetBattlefield();
end;

function export:f_81_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#1C711DAC";
    l0.Battlefield = "2075604319060680936";
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:SetAll();
end;

function export:f_15_Enabled()
    local l0;
    self = self._graph;
    l0 = self[266];
    l0.DelayBeforeSkip = 40;
    l0:Enable();
end;

function export:f_15_MemberRemoved()
    local l0, l1;
    self = self._graph;
    l0 = self[15];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 0;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_6_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
    l0 = self[15];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 2;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_18_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
end;

function export:f_226_Out_0()
    local l0;
    self = self._graph;
    l0 = self[220];
    l0.ContextualAction = "2078046265767185464";
    l0:Enable();
end;

function export:f_226_Out_1()
    local l0;
    self = self._graph;
    self:en_227();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0:In();
end;

function export:f_249_Out()
    local l0;
    self = self._graph;
    self:en_248();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_201_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075546765886497315";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_115_Loaded()
    local l0;
    self = self._graph;
    l0 = self[230];
    l0.entityId = "2078046265767185465";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[259];
    l0.triggerId = "2078629185328293682";
    l0:Enable();
end;

function export:f_259_Leave()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077925208385388139";
    l0._graph = self;
    l0.Out = self.f_260_Out;
    l0:Deactivate();
end;

function export:f_232_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.Group = "#2E69BEAF";
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:In();
    self:en_232();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0:Use();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_187_Out_0;
    l0.Out[1] = self.f_187_Out_1;
    l0.Out[2] = self.f_187_Out_2;
    l0.Out[3] = self.f_187_Out_3;
    l0:In();
end;

function export:f_261_Out_0()
    local l0;
    self = self._graph;
    l0 = self[88];
    l0:In(0);
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Fast();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_197_Out_0;
    l0.Out[1] = self.f_197_Out_1;
    l0:In();
end;

function export:f_247_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Bind_v2.lua")];
    l0.EntityA = Globals.WIL_050_MAIN.OliverMain;
    l0.EntityB = "2078231124122818680";
    l0.BoneName = "Hips";
    l0.RemoveOffset = true;
    l0.PositionOnly = nil;
    l0._graph = self;
    l0.Out = self.f_249_Out;
    l0:Bind();
end;

function export:f_215_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[158];
    l0.PawnEntity = self.ePlayer;
    l0.Destination = "2077192507237619182";
    l0.LoadingScreen = false;
    l0.LoadSynch = false;
    l0:In();
end;

function export:f_197_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0.Battlefield = "2075602653569642865";
    l0._graph = self;
    l0.Out = self.f_159_Out;
    l0:SetBattlefield();
end;

function export:f_197_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2076304974704293887";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Activate();
end;

function export:f_127_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[153];
    l0:In(0);
end;

function export:f_158_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/WieldInventory_v3.lua")];
    l0.category = "binoculars";
    l0.class = nil;
    l0.name = nil;
    l0.pawn = nil;
    l0.force = true;
    l0._graph = self;
    l0.Drew = self.f_73_Drew;
    l0.Holstered = DummyFunction;
    l0.Error = DummyFunction;
    l0:LuaDrawGadget();
end;

function export:f_211_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2076790938750960166";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:CreateAILogInArmy();
end;

function export:f_211_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2077922625289484937";
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0:SetAll();
end;

function export:f_109_Out_0()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00161e95";
    l0:ForcePlay_Priority();
end;

function export:f_109_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0.Battlefield = "2075603715034719506";
    l0._graph = self;
    l0.Out = self.f_166_Out;
    l0:SetAll();
end;

function export:f_109_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2077925878146594613";
    l0._graph = self;
    l0.Out = self.f_108_Out;
    l0:CreateAILogInArmy();
end;

function export:f_217_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#373BAF30";
    l0._graph = self;
    l0.Out = self.f_216_Out;
    l0:ReEvaluateCover();
end;

function export:f_177_Out()
    local l0;
    self = self._graph;
    l0 = self[169];
    l0.Entities = Globals.WIL_050_MAIN.OliverMain;
    l0.id2 = "2075603745638458651";
    l0.nearZone = 5;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "GO PROGRESSION 0555555555555555555555555555";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_26_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[105];
    l0:Condition(0);
end;

function export:f_155_Spawned()
    local l0;
    self = self._graph;
    self:en_140();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetAll();
end;

function export:f_140_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_141_Out;
    l0:ReEvaluateCover();
end;

function export:f_6_A_le_B()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Disable();
    l0 = self[36];
    l0:In(0);
end;

function export:f_161_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_162_Out;
    l0:ReEvaluateCover();
end;

function export:f_103_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_116_Out_0;
    l0.Out[1] = self.f_116_Out_1;
    l0.Out[2] = self.f_116_Out_2;
    l0:In();
end;

function export:f_72_Out_0()
    self = self._graph;
    self:BoatIsDestroy();
end;

function export:f_243_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_219_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "CINEMATIC LOADED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
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

function export:f_105_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0.Battlefield = "2075603369375835355";
    l0._graph = self;
    l0.Out = self.f_165_Out;
    l0:SetAll();
end;

function export:f_203_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2077924381614627833";
    l0._graph = self;
    l0.Out = self.f_180_Out;
    l0:SetAll();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.ReinforcementPoint = "2074856146277006019";
    l0.Battlefield = "2074646249956465863";
    l0.IdleBSR = "2074646249956465863";
    l0.AlertBSR = "2074646249956465863";
    l0.CombatBSR = "2074646249956465863";
    l0:SpawnInCautious();
    l0 = self[52];
    l0.ReinforcementPoint = "2074856169970629319";
    l0.Battlefield = "2074646249956465863";
    l0.IdleBSR = "2074646249956465863";
    l0.AlertBSR = "2074646249956465863";
    l0.CombatBSR = "2074646249956465863";
    l0:SpawnInCautious();
end;

function export:f_14_Enabled()
    local l0;
    self = self._graph;
    l0 = self[267];
    l0.DelayBeforeSkip = 40;
    l0:Enable();
end;

function export:f_14_MemberRemoved()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 0;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_11_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
    l0 = self[14];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 2;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_127_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
end;

function export:f_114_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_54_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = "2075493770901668653";
    l0.Player = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:TagEntity();
end;

function export:f_263_Out_0()
    local l0;
    self = self._graph;
    self:en_222();
    l0 = self[222];
    l0:Stop();
end;

function export:f_275_Out()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0:In(0);
end;

function export:f_225_Out()
    local l0;
    self = self._graph;
    l0 = self[225];
    self.ChopperMeta = l0.ID;
    self:en_222();
    l0 = self[222];
    l0:Play();
end;

function export:f_213_Out()
    local l0;
    self = self._graph;
    l0 = self[152];
    l0.ReinforcementPoint = "2074856171048565451";
    l0.Battlefield = "2077924080209803592";
    l0.IdleBSR = "2077924080209803592";
    l0.AlertBSR = "2077924080209803592";
    l0.CombatBSR = "2077924080209803592";
    l0:SpawnInCautious();
end;

function export:f_116_Out_0()
    local l0;
    self = self._graph;
    l0 = self[209];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00171897";
    l0:ForcePlay_Priority();
end;

function export:f_116_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0.Battlefield = "2075603366051849434";
    l0._graph = self;
    l0.Out = self.f_85_Out;
    l0:SetAll();
end;

function export:f_116_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077925604791209648";
    l0._graph = self;
    l0.Out = self.f_206_Out;
    l0:Deactivate();
end;

function export:f_27_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "look_at_tattoo_next";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_283_Out;
    l0:In();
end;

function export:f_27_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_250_Out;
    l0:In();
end;

function export:f_27_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077925613622316724";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Deactivate();
end;

function export:f_27_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078629185328293682";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_262_Out;
    l0:SetDisabled();
end;

function export:f_146_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_148_Out;
    l0:ReEvaluateCover();
end;

function export:f_46_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[82];
    l0:In(0);
    self:en_47();
    l0 = self[47];
    l0:Disable();
end;

function export:f_268_SkipWave()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In(0);
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Fast();
end;

function export:f_167_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_178_Out;
    l0:StraightNoStopping();
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Slow();
end;

function export:f_52_Spawned()
    local l0;
    self = self._graph;
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetAll();
end;

function export:f_10_Finished()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.Group = "2075546772932928064";
    l0.SoundId = "0x00195008";
    l0:ForcePlay_Priority();
end;

function export:f_176_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "GO PROGRESSION 04444444444444444444444";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[168];
    l0.Entities = Globals.WIL_050_MAIN.OliverMain;
    l0.id2 = "2075603744719906073";
    l0.nearZone = 5;
    l0:Enable();
end;

function export:f_181_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Fast();
end;

function export:f_244_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "CHOPPER LOADED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[243];
    l0.entityId = "2078035168152618211";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_236_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = Globals.WIL_050_MAIN.OliverMain;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:On();
end;

function export:f_50_Finished()
    local l0;
    self = self._graph;
    l0 = self[186];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x0017711b";
    l0:ForcePlay_Priority();
end;

function export:f_67_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = "2075493771583243121";
    l0.Player = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:TagEntity();
end;

function export:f_272_Out()
    local l0;
    self = self._graph;
    l0 = self[270];
    l0.entityId = "2075546769214677550";
    l0:Enable();
    l0 = self[201];
    l0.entityId = "2075546765886497315";
    l0:Enable();
    l0 = self[273];
    l0.entityId = "2075546702133076451";
    l0:Enable();
end;

function export:f_260_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077925222677479023";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Deactivate();
end;

function export:f_71_Broken()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0:In(0);
end;

function export:f_71_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0:In(0);
end;

function export:f_71_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = Globals.WIL_050_MAIN.PlayerBoatMain;
    l0._graph = self;
    l0.Out = self.f_275_Out;
    l0:SetExplosion();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Boat was disabled. ";
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

function export:f_71_OnFire()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0:In(0);
end;

function export:f_108_Out()
    local l0;
    self = self._graph;
    l0 = self[97];
    l0.ReinforcementPoint = "2075535540691681877";
    l0.Battlefield = "2075658205274318644";
    l0.IdleBSR = "2075658205274318644";
    l0.AlertBSR = "2075658205274318644";
    l0.CombatBSR = "2075658205274318644";
    l0:SpawnInCautious();
end;

function export:f_94_Markup1()
    local l0;
    self = self._graph;
    l0 = self[135];
    l0:In(0);
end;

function export:f_94_Markup2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_79_Out_0;
    l0.Out[1] = self.f_79_Out_1;
    l0.Out[2] = self.f_79_Out_2;
    l0:In();
end;

function export:f_94_Start()
    local l0;
    self = self._graph;
    l0 = self[252];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_11_A_le_B()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Disable();
    l0 = self[9];
    l0:In(0);
end;

function export:f_266_SkipWave()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:In(0);
end;

function export:f_3_Out_0()
    local l0;
    self = self._graph;
    l0 = self[94];
    l0.ContextualAction = "2078046307844443232";
    l0:Enable();
end;

function export:f_3_Out_1()
    local l0;
    self = self._graph;
    self:en_227();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0:In();
end;

function export:f_171_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "NEAR TRIGGER COMPLETE";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = "purple";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_261_Out_0;
    l0.Out[1] = DummyFunction;
    l0:In();
end;

function export:f_93_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Fast();
end;

function export:f_267_SkipWave()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In(0);
end;

function export:f_45_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_228_Out;
    l0:In();
end;

function export:f_45_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_223_Out;
    l0:In();
end;

function export:f_1_Spawned()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Enable();
    self:en_98();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetAll();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "SMAL CLOSET SPAWN 01";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_97_Spawned()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ROCKET SPAWN ";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_208_Out_0;
    l0.Out[1] = self.f_208_Out_1;
    l0.Out[2] = self.f_208_Out_2;
    l0:In();
end;

function export:f_262_Out()
    self = self._graph;
    self:Out();
end;

function export:f_66_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138271589551401";
    l0.missionLayerId = "9145470844292394";
    l0._graph = self;
    l0.Activated = self.f_68_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_49_Out_0()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.entityId = "2075493770532569862";
    l0:Enable();
end;

function export:f_49_Out_1()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.entityId = "2075493770092167896";
    l0:Enable();
end;

function export:f_49_Out_2()
    local l0;
    self = self._graph;
    l0 = self[67];
    l0.entityId = "2075493771583243121";
    l0:Enable();
end;

function export:f_49_Out_3()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0.entityId = "2075493770901668653";
    l0:Enable();
end;

function export:f_49_Out_4()
    local l0;
    self = self._graph;
    l0 = self[87];
    l0.entityId = "2075493771245601616";
    l0:Enable();
end;

function export:f_145_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2077925869869135661";
    l0._graph = self;
    l0.Out = self.f_212_Out;
    l0:CreateAILogInArmy();
end;

function export:f_145_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2074649846486170959";
    l0._graph = self;
    l0.Out = self.f_126_Out;
    l0:SetAll();
end;

function export:f_257_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.ChopperMeta;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Stop();
end;

function export:f_257_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076305649798508698";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_110_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_3_Out_0;
    l0.Out[1] = self.f_3_Out_1;
    l0:In();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = Globals.WIL_050_MAIN.OliverMain;
    l0.Player = nil;
    l0._graph = self;
    l0.Out = self.f_247_Out;
    l0:Disable();
end;

function export:f_148_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Fast();
end;

function export:f_138_Loaded()
    local l0;
    self = self._graph;
    l0 = self[115];
    l0.entityId = "2075493771583243121";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_18_A_le_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2074646249956465863";
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:SetAll();
end;

function export:f_180_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_181_Out;
    l0:ReEvaluateCover();
end;

function export:f_187_Out_0()
    local l0;
    self = self._graph;
    l0 = self[183];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00171897";
    l0:ForcePlay_Priority();
end;

function export:f_187_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0.Battlefield = "2075603364189578457";
    l0._graph = self;
    l0.Out = self.f_161_Out;
    l0:SetAll();
end;

function export:f_187_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Medium();
end;

function export:f_187_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2076304974704293887";
    l0._graph = self;
    l0.Out = self.f_202_Out;
    l0:Deactivate();
end;

function export:f_252_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[251];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001b8fbf";
    l0:ForcePlay_Priority();
end;

function export:f_117_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_211_Out_0;
    l0.Out[1] = self.f_211_Out_1;
    l0:In();
end;

function export:f_117_Out_1()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.seconds = 15;
    l0:Start();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/NPCDamageModifier.lua")];
    l0.NPCs = "#70B1A04C";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Fast();
end;

function export:f_88_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_27_Out_0;
    l0.Out[1] = self.f_27_Out_1;
    l0.Out[2] = self.f_27_Out_2;
    l0.Out[3] = self.f_27_Out_3;
    l0:In();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_69_Out_0;
    l0.Out[1] = self.f_69_Out_1;
    l0:In();
end;

function export:f_98_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_93_Out;
    l0:ReEvaluateCover();
end;

function export:f_206_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077925613622316724";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Activate();
end;

function export:f_160_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetProgressionMode.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_177_Out;
    l0:StraightNoStopping();
end;

function export:f_92_Out_0()
    local l0;
    self = self._graph;
    l0 = self[107];
    l0:Condition(1);
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 5,
    };
    l0.Out[0] = self.f_74_Out_0;
    l0.Out[1] = self.f_74_Out_1;
    l0.Out[2] = self.f_74_Out_2;
    l0.Out[3] = self.f_74_Out_3;
    l0.Out[4] = self.f_74_Out_4;
    l0:In();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[174];
    l0:In();
end;

function export:f_284_A_is_True()
    local l0;
    self = self._graph;
    self:en_285();
    l0 = self[285];
    l0:Stop();
end;

function export:f_147_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/AIEventLog.lua")];
    l0.AIEventPoint = "2077925876785542961";
    l0._graph = self;
    l0.Out = self.f_213_Out;
    l0:CreateAILogInArmy();
end;

function export:f_147_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2077924080209803592";
    l0._graph = self;
    l0.Out = self.f_146_Out;
    l0:SetAll();
end;

function export:f_230_Loaded()
    local l0;
    self = self._graph;
    l0 = self[234];
    l0.entityId = "2078046265767185464";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_238_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/PawnSetArmy.lua")];
    l0.AI = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:SetGrey();
end;

function export:f_234_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_231_Out_0;
    l0.Out[1] = self.f_231_Out_1;
    l0:In();
end;

function export:f_282_Loaded()
    local l0;
    self = self._graph;
    self:en_285();
    l0 = self[285];
    l0:Play();
end;

function export:f_38_Spawned()
    local l0;
    self = self._graph;
    self:en_47();
    l0 = self[47];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "BIG CLOSET SPAWN 02";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:en_140();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetAll();
end;

function export:f_170_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_117_Out_0;
    l0.Out[1] = self.f_117_Out_1;
    l0:In();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = self[188];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x001719b1";
    l0:ForcePlay_Priority();
end;

function export:f_172_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#85784C16";
    l0.Battlefield = "2076593063311982183";
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:SetAll();
end;

function export:f_47_MemberRemoved()
    local l0, l1;
    self = self._graph;
    l0 = self[47];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 1;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_46_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
    l0 = self[47];
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l1.A = l0.memberCount;
    l1.B = 2;
    l1._graph = self;
    l1.A_lt_B = DummyFunction;
    l1.A_le_B = self.f_184_A_le_B;
    l1.A_eq_B = DummyFunction;
    l1.A_ge_B = DummyFunction;
    l1.A_gt_B = DummyFunction;
    l1.A_ne_B = DummyFunction;
    l1:In();
end;

function export:f_168_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_122_Out_0;
    l0.Out[1] = self.f_122_Out_1;
    l0:In();
end;

function export:f_32_Spawned()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = self[19];
    l0:Enable();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetBattlefield();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "BIG CLOSET SPAWN 01";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "orange";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#1C711DAC";
    l0._graph = self;
    l0.Out = self.f_172_Out;
    l0:ReEvaluateCover();
end;

function export:f_220_Markup1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_229_Out;
    l0:In();
end;

function export:f_220_Markup2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_224_Out_0;
    l0.Out[1] = self.f_224_Out_1;
    l0.Out[2] = self.f_224_Out_2;
    l0:In();
end;

function export:f_133_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_226_Out_0;
    l0.Out[1] = self.f_226_Out_1;
    l0:In();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#70B1A04C";
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:ReEvaluateCover();
end;

function export:f_150_A_le_B()
    local l0;
    self = self._graph;
    l0 = self[154];
    l0:In(0);
end;

function export:f_77_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT2_DEF_Play_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_106_Out()
    local l0;
    self = self._graph;
    l0 = self[155];
    l0.ReinforcementPoint = "2077923938064840903";
    l0.Battlefield = "2077924381614627833";
    l0.IdleBSR = "2077924381614627833";
    l0.AlertBSR = "2077924381614627833";
    l0.CombatBSR = "2077924381614627833";
    l0:SpawnInCautious();
    l0 = self[38];
    l0.ReinforcementPoint = "2074856171048565451";
    l0.Battlefield = "2077924381614627833";
    l0.IdleBSR = "2077924381614627833";
    l0.AlertBSR = "2077924381614627833";
    l0.CombatBSR = "2077924381614627833";
    l0:SpawnInCautious();
end;

function export:f_137_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_110_Out_0;
    l0.Out[1] = DummyFunction;
    l0:In();
end;

function export:f_134_Showned()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Combat();
end;

function export:f_82_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_92_Out_0;
    l0.Out[1] = DummyFunction;
    l0:In();
end;

function export:f_202_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077925604791209648";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Activate();
end;

function export:f_25_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[107];
    l0:Condition(0);
end;

function export:f_242_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_257_Out_0;
    l0.Out[1] = self.f_257_Out_1;
    l0:In();
end;

function export:f_242_SPOut__RemovePilot_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078488267277227071";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_242_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.WIL_050_MAIN.WIL_050_MainIsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_284_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = self[265];
    l0.seconds = 6;
    l0:Start();
end;

function export:f_265_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[264];
    l0.RegionEntity = "2078837816852235462";
    l0:In();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetModifier.lua")];
    l0.TargetGroup = "2077925222677479023";
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:Activate();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = "#85784C16";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

function export:f_42_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v2.lua")];
    l0.Entity = "2075493770532569862";
    l0.Player = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:TagEntity();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.ReinforcementPoint = "2074856171048565451";
    l0.Battlefield = "2077924035945216327";
    l0.IdleBSR = "2077924035945216327";
    l0.AlertBSR = "2077924035945216327";
    l0.CombatBSR = "2077924035945216327";
    l0:SpawnInCautious();
    l0 = self[53];
    l0.ReinforcementPoint = "2077923938064840903";
    l0.Battlefield = "2077924035945216327";
    l0.IdleBSR = "2077924035945216327";
    l0.AlertBSR = "2077924035945216327";
    l0.CombatBSR = "2077924035945216327";
    l0:SpawnInCautious();
end;

function export:f_80_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138244187360113";
    l0.missionLayerId = "138270631414951";
    l0._graph = self;
    l0.Activated = self.f_66_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:en_132()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_132_Out;
end;

function export:en_248()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2078231124122818680";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
end;

function export:en_222()
    local l0;
    l0 = self[222];
    l0.MetaSequenceID = self.ChopperMeta;
    l0.SceneEntity = "2078035168152618211";
    l0.SequenceFile = "Sequences/WIL050/ChopperLoop.seq";
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.GSFName = "CSnipingChallenge_CIT020";
    l0.entity["InteractiveWeapon/EntityID"] = "2076496693462846357";
    l0.entity["EntityToLookAt"] = "2076939490441580669";
    l0.float["gCameraYawMinDeviation"] = -18;
    l0.float["gCameraYawMaxDeviation"] = 92;
    l0.float["gCameraPitchMinDeviation"] = -15;
    l0.float["gCameraPitchMaxDeviation"] = 7;
    l0.bool["IsStanceCrouch"] = true;
end;

function export:en_120()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2077924035945216327";
    l0._graph = self;
    l0.Out = self.f_120_Out;
end;

function export:en_19()
    local l0;
    l0 = self[19];
    l0.group = "#70B1A04C";
    l0.autoDisable = false;
end;

function export:en_227()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 4,
    };
    l0.Out[0] = self.f_227_Out_0;
    l0.Out[1] = self.f_227_Out_1;
    l0.Out[2] = self.f_227_Out_2;
    l0.Out[3] = self.f_227_Out_3;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.group = "#70B1A04C";
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.group = "#70B1A04C";
    l0.autoDisable = false;
end;

function export:en_232()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = "2075493771583243121";
    l0.ContextualAction = "2078046265767185464";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = self.f_232_Enabled;
    l0.Disabled = DummyFunction;
end;

function export:en_140()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2077924381614627833";
    l0._graph = self;
    l0.Out = self.f_140_Out;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.group = "#70B1A04C";
    l0.autoDisable = false;
end;

function export:en_285()
    local l0;
    l0 = self[285];
    l0.Entity = "2078922419891881563";
    l0.SoundId = "0x001b8571";
    l0.SoundType = 13;
end;

function export:en_98()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#70B1A04C";
    l0.Battlefield = "2077923520085628000";
    l0._graph = self;
    l0.Out = self.f_98_Out;
end;

function export:en_47()
    local l0;
    l0 = self[47];
    l0.group = "#70B1A04C";
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:OliverHasBeenKill()
    
end;
function export:BoatIsDestroy()
    
end;
function export:OliverIsInChopper()
    
end;
_compilerVersion = 24;
