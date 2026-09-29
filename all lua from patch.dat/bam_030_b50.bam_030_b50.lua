-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b50/bam_030_b50.domino.xml
-- User graph: BAM_030_B50
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.CrossTunnelFirstWaterLevelUp.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.CrossTunnelSecondWaterLevelUp.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.Init.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.Objective.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.OpenTunnelDoor.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleState.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.PlayDialog.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.PlaySound.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Player = nil;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.PlayDialog.lua");
    l0 = self[3];
    l0._graph = self;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.PlaySound.lua");
    l0 = self[11];
    l0._graph = self;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[6];
    l0._graph = self;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.Objective.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Complete = self.f_9_Complete;
    self[10] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.Init.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.CrossTunnelSecondWaterLevelUp.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0.Destoryed = self.f_4_Destoryed;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.CrossTunnelFirstWaterLevelUp.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0.Destoryed = self.f_2_Destoryed;
    self[13] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Acknowledged = self.f_13_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B50/BAM_030_B50.OpenTunnelDoor.lua");
    l0 = self[5];
    l0._graph = self;
    l0.FirstOpened = self.f_5_FirstOpened;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[13];
    l0:Acknowledge();
end;

function export:Scan()
    
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BAM_030_MAIN.IsReloaded = l0.Target;
    l0 = self[6];
    l0:Complete();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self._sld_LocalPlayer_19 = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self._sld_LocalPlayer_19;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:UnsetInvincible();
end;

function export:f_8_Started()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
    l0 = self[2];
    l0:In();
    l0 = self[5];
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:FirstWaterLevelUp();
    l0 = self[3];
    l0:FirstWaterLevelUp();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:NormalMode();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:In();
end;

function export:f_9_Complete()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:False();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = nil;
    l0.wind = nil;
    l0.shadow = "SHA_Quest_Shipyard:Common.Shipyard_Shadow";
    l0.cloud = nil;
    l0.lighting = "SHA_Quest_Shipyard:Common.Shipyard_Light";
    l0.exposure = "SHA_Quest_Shipyard:Common.Shipyard_Exposure";
    l0.fog = "SHA_Quest_Shipyard:Common.Shipyard_Fog";
    l0.sky = "SHA_Quest_Shipyard:Common.Shipyard_Sky";
    l0.stormFactor = nil;
    l0.adaptiveBloom = "SHA_Quest_Shipyard:Common.Shipyard_Bloom";
    l0.motionBlur = "Preview_Lighting:Preview_MotionBlur";
    l0.depthOfField = "SHA_Quest_Shipyard:Common.Shipyard_DOF";
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:In();
    l0 = self[3];
    l0:In();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreennowfx";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:Disable();
end;

function export:f_4_Destoryed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:PoleDestoryed();
    l0 = self[11];
    l0:SecondWaterLevelUp();
    l0 = self[3];
    l0:SecondWaterLevelUp();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:DestoryPole2();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076117882019790752";
    l0._graph = self;
    l0.Started = self.f_8_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_2_Destoryed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
    l0 = self[5];
    l0:FirstWaterUp();
    l0 = self[3];
    l0:DestoryPole1();
end;

function export:f_13_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Send();
end;

function export:f_5_FirstOpened()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:FirstDoorOpened();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:Disable();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
