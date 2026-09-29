-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: BAM_055_B60
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.BAM_055_B60_EndingScene.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.BAM_055_B60_GaintStatue.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SoundAmbianceOverride.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_HotWaterBlocker.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_MissionInit.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_MissionInit.lua");
    l0 = self[1];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/System/SoundAmbianceOverride.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    self[13] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_GaintStatue.lua");
    l0 = self[13];
    l0._graph = self;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Sub_HotWaterBlocker.lua");
    l0 = self[2];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.BAM_055_B60_EndingScene.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Acknowledged = self.f_6_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.BAM_055_B60_GaintStatue.lua");
    l0 = self[9];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[6];
    l0:Acknowledge();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In();
end;

function export:f_18_Out_0()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.ambianceId = 47;
    l0:Stop();
end;

function export:f_18_Out_1()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_16_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:False();
end;

function export:f_20_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_FC_GenericExplorationC";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BAM_055_MAIN.IsReloaded = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_MIS_Sarcophagus";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_17_Stopped;
    l0:Stop();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = nil;
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
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_16_Disabled;
    l0:Disable();
end;

function export:f_17_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_18_Out_0;
    l0.Out[1] = self.f_18_Out_1;
    l0:In();
end;

function export:f_6_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
    l0 = self[1];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076659138489754855";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_3_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "beat6 started";
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
    l0 = self[9];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.BAM_055_MAIN.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_20_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = self[8];
    l0:In();
end;

function export:f_3_Disabled()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:In();
    l0 = self[7];
    l0:Send();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
