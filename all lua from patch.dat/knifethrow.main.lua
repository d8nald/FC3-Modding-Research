-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_activities/knifethrow/knifethrow.domino.xml
-- User graph: Main
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
        cbox:RegisterBox("Domino/System/EnableAbilityUpgrade.lua");
		cbox:RegisterBox("Domino/System/QuickLaunchPlayerSetup.lua");
		cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/IsInExclusiveMission.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/PawnInteractiveState.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
        cbox:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[CKnivesMiniGame]], "CGSFResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.CounterGuy = "2072228283321155802";
    self.CinematicSceneEntity = nil;
    self.SceneAnchor = nil;
    self.TheWheel = "2072295173554962518";
    self.Camera = nil;
    self.BattleField = nil;
    self.GameMaster = nil;
    self.CallSTP = nil;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
    self[2] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[7] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[1] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[10] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_10_Loaded;
    l0.Unloaded = DummyFunction;
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
    self[9] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_9_Loaded;
    l0.Unloaded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[6] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[4] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0._DynamicAnchors = {
        sequence = {
            "ShotCamera/SequenceFile",
        },
        entity = {
            "CounterGuy/EntityID",
            "TurningWheel/EntityID",
            "TransitionAnchor",
            "ShotCamera/EntityID",
            "ShotCamera/SceneEntityId",
        },
        string = {
            "SwayHCurve",
            "SwayVCurve",
            "PowerShotCurve",
        },
        integer = {
            "NbKnife",
        },
        float = {
            "TurningWheel/AnimSpeedFactor",
            "DistanceFromWheel",
            "KnifeMaxDistanceMult",
            "KnifeSpeed",
            "KnifeGravityFactor",
            "KnifeEndAngleAmount",
            "CameraMovementSpeed",
            "CameraHLimitAngle",
            "CameraVLimitAngle",
            "SwayHSizeMultiplier",
            "SwayVSizeMultiplier",
            "SwayHSpeedMultiplier",
            "SwayVSpeedMultiplier",
        },
        bool = {
            "EnableDebug",
        },
    };
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
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
    self[3] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/EnableAbilityUpgrade.lua")];
    l0.pawn = nil;
    l0.Ability = "SP_Wingsuit";
    l0._graph = self;
    l0.Out = self.f_123_Out;
    l0:In();
end;

function export:f_123_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/QuickLaunchPlayerSetup.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:In()
    local l0;
    l0 = self[18];
    l0.ObjectName = "CallSTP";
	l0:In();
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInteractiveState.lua")];
    l0.Pawn = self.CounterGuy;
    l0.IgnoreOrientation = nil;
    l0._graph = self;
    l0.Out = self.f_13_Out;
	l0:Disable();
end;

function export:f_16_ForceNormalEndCalled()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/IsInExclusiveMission.lua")];
    l0:In();
end;

function export:f_24_IsInMission()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_24_NotInMission()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInteractiveState.lua")];
    l0.Pawn = self.CounterGuy;
    l0.IgnoreOrientation = nil;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:Enable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    self.BattleField = l0.ObjectEntity;
    l0 = self[9];
    l0.entityId = self.CounterGuy;
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    self.SceneAnchor = l0.ObjectEntity;
    l0 = self[3];
    l0.ObjectName = "Wheel";
	l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.Camera = l0.ObjectEntity;
    l0 = self[5];
    l0.ObjectName = "CinematicSceneEntity";
    l0:In();
end;

function export:f_10_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = self.CounterGuy;
    l0.Battlefield = self.BattleField;
    l0._graph = self;
    l0.Out = self.f_8_Out;
	l0:SetAll();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = self.CounterGuy;
    l0.ContextualAction = self.CallSTP;
    l0._graph = self;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = self.f_16_ForceNormalEndCalled;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:CallForceNormalEnd();
end;

function export:f_25_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/IsInExclusiveMission.lua")];
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.message = "OnExclusiveMissionStart";
    l0.autoDisable = false;
    l0:Enable();
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/IsInExclusiveMission.lua")];
    l0:In();
end;

function export:f_9_Loaded()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.entityId = self.BattleField;
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    self.CinematicSceneEntity = l0.ObjectEntity;
    l0 = self[2];
    l0.ObjectName = "ChallengeKeeperBattleField";
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.CounterGuy = l0.ObjectEntity;
    l0 = self[1];
    l0.ObjectName = "CameraCinematic";
    l0:In();
end;

function export:f_15_IsInMission()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = self.CounterGuy;
    l0.ContextualAction = self.CallSTP;
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:CallForceNormalEnd();
    l0 = self[17];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_15_NotInMission()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = self.CounterGuy;
    l0.ContextualAction = self.CallSTP;
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0.UseCalled = self.f_23_UseCalled;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    self.CallSTP = l0.ObjectEntity;
    l0 = self[7];
    l0.ObjectName = "SceneAnchor";
    l0:In();
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = Boxes[GetPathID("Domino/System/IsInExclusiveMission.lua")];
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.TheWheel = l0.ObjectEntity;
    l0 = self[6];
    l0.ObjectName = "Villager";
    l0:In();
end;

function export:f_23_UseCalled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.GSFName = "CKnivesMiniGame";
    l0.entity["CounterGuy/EntityID"] = self.CounterGuy;
    l0.entity["TurningWheel/EntityID"] = self.TheWheel;
    l0.entity["TransitionAnchor"] = self.SceneAnchor;
    l0.entity["ShotCamera/EntityID"] = self.Camera;
    l0.entity["ShotCamera/SceneEntityId"] = self.CinematicSceneEntity;
    l0.bool["EnableDebug"] = false;
    l0:Start();
	l0.Out = self.f_26_Out;
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v2.lua")];
    l0.Entity = self.CounterGuy;
    l0.ContextualAction = self.CallSTP;
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0.UseCalled = DummyFunction;
    l0.InterruptCalled = DummyFunction;
    l0.ForceNormalEndCalled = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Use();
end;

function export:en_24()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsInExclusiveMission.lua")];
    l0._graph = self;
    l0.IsInMission = self.f_24_IsInMission;
    l0.NotInMission = self.f_24_NotInMission;
end;

function export:en_15()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsInExclusiveMission.lua")];
    l0._graph = self;
    l0.IsInMission = self.f_15_IsInMission;
    l0.NotInMission = self.f_15_NotInMission;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
