-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: BAM_055_B50
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_GaintStatue.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_OBJ.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_HotWaterBlocker.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_MissionInit.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_ObtainTheKey.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_WaterRise.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001953df]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001953df.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_MissionInit.lua");
    l0 = self[2];
    l0._graph = self;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_HotWaterBlocker.lua");
    l0 = self[5];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Acknowledged = self.f_7_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_11_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_WaterRise.lua");
    l0 = self[4];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_1_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    self[15] = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.EnterFOV = self.f_15_EnterFOV;
    l0.LeaveFOV = DummyFunction;
    self[13] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_OBJ.lua");
    l0 = self[13];
    l0._graph = self;
    self[16] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_ObtainTheKey.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[6];
    l0._graph = self;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_GaintStatue.lua");
    l0 = self[10];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[7];
    l0:Acknowledge();
end;

function export:f_7_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.triggerId = "2076965500044233853";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 3;
    l0.wind = nil;
    l0.shadow = "SHA_Quest_Tomb:Common.Tomb_Shadow";
    l0.cloud = nil;
    l0.lighting = "SHA_Quest_Tomb:Common.Tomb_Lighting";
    l0.exposure = "SHA_Quest_Tomb:Common.Tomb_Exposure";
    l0.fog = "SHA_Quest_Tomb:EscapeCave.Tomb_EscapeCave_Fog";
    l0.sky = "SHA_Quest_Tomb:Common.Tomb_Sky";
    l0.stormFactor = nil;
    l0.adaptiveBloom = "SHA_Quest_Tomb:Common.Tomb_Bloom";
    l0.motionBlur = "Preview_Lighting:Preview_MotionBlur";
    l0.depthOfField = "SHA_Quest_Tomb:Common.Tomb_DOF";
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:In();
    l0 = self[12];
    l0.triggerId = "2076689882469725858";
    l0:Enable();
    l0 = self[11];
    l0.triggerId = "2076591485951699724";
    l0:Enable();
end;

function export:f_11_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076644732280251554";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "54181442113797181";
    l0.missionLayerId = "72195840623279177";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
    l0 = self[1];
    l0.SceneEntity = "2076591860838591251";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb05/b05_moveocc.seq";
    l0:Play();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BAM_055_MAIN.IsReloaded = l0.Target;
    l0 = self[6];
    l0:Complete();
end;

function export:f_1_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "occ actived";
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

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_Shipyard_ExplorationMysteryA";
    l0._graph = self;
    l0.Started = self.f_22_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_15_EnterFOV()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0:Send();
end;

function export:f_22_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "exploration music started";
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

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
    l0 = self[10];
    l0:In();
    l0 = self[5];
    l0:In();
    l0 = self[4];
    l0:In();
    l0 = self[2];
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:False();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:In_2();
end;

function export:f_17_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[16];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x001953df";
    l1:ForcePlay_Priority();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
