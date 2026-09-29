-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b30/ulc_020_b30.domino.xml
-- User graph: ULC_020_B30
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.FlameJet_B30_Temp.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/IntegerArithmetics.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.MusicPlayer.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.ObjectiveTimer.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetFloat.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30_Explosion_event.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30_Objectivemarker.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30_Reinforcement_GreenHouse.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30_Reins_in_Building.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B08/ULC_020_B08.ULC_020_HackFog.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0000579f]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[5] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_5_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.FlameJet_B30_Temp.lua");
    l0 = self[11];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[4];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30_Reinforcement_GreenHouse.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Acknowledged = self.f_1_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[15] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.MusicPlayer.lua");
    l0 = self[15];
    l0._graph = self;
    self[12] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B08/ULC_020_B08.ULC_020_HackFog.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[28] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.D_Jason.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30_Reins_in_Building.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    self[17] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.ObjectiveTimer.lua");
    l0 = self[17];
    l0._graph = self;
    l0.TimeElapsed = self.f_17_TimeElapsed;
    self[18] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Started = self.f_18_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_18_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30_Explosion_event.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30_Objectivemarker.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[16] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
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
    l0.Out = self.f_30_Out;
    l0:Enable();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Pause();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "B03 completed";
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
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:False();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    PersistentGlobals.ULC_020_MAIN.numberOfLogo = l0.Target;
    l0 = self[4];
    l0:Complete();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    Globals.ULC_020_MAIN.Countdown = l0.Target;
    l0 = self[17];
    l0:Start();
end;

function export:f_19_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Start();
end;

function export:f_19_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetFloat.lua")];
    l0.Float = 350;
    l0.Integer = nil;
    l0.String = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:FromFloat();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.ULC_020_MAIN.IsReloaded = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_24_Out_0;
    l0.Out[1] = self.f_24_Out_1;
    l0:In();
end;

function export:f_1_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:Send();
end;

function export:f_14_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics.lua")];
    l0.A = PersistentGlobals.ULC_020_MAIN.numberOfLogo;
    l0.B = Globals.ULC_020_MAIN.numberOfLogoTEMP;
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:Add();
end;

function export:f_26_Enabled()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:In();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Acknowledge();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_19_A_is_True;
    l0.A_is_False = self.f_19_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_20_Out()
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

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:In();
end;

function export:f_24_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:In();
end;

function export:f_24_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076550787078564954";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_14_Removed;
    l0:Remove();
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.SceneEntity = "2076783303439945919";
    l0.SequenceFile = "Sequences/fc3_main/ulc_020/explosion_event.seq";
    l0:Play();
end;

function export:f_18_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 1000000;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:Damage();
end;

function export:f_18_Started()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.SoundId = "0x0000579f";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Start();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:In();
    l0 = self[5];
    l0.triggerId = "2076580297396195704";
    l0:Enable();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
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
    l0.Enabled = self.f_26_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "B30 Loaded";
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
    l0 = self[28];
    l0:Enable();
    l0 = self[11];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
