-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b20/bam_030_b20.domino.xml
-- User graph: BAM_030_B20
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B20/BAM_030_B20.Init.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B20/BAM_030_B20.Objective.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B20/BAM_030_B20.PlayDialog.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B20/BAM_030_B20.PlaySound.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B10/BAM_030_B10.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B20/BAM_030_B20.PlayDialog.lua");
    l0 = self[4];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B20/BAM_030_B20.Objective.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Complete = self.f_3_Complete;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Acknowledged = self.f_5_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B20/BAM_030_B20.Init.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[9];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B20/BAM_030_B20.PlaySound.lua");
    l0 = self[6];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[5];
    l0:Acknowledge();
end;

function export:Scan()
    
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BAM_030_B10.IsMissionReloaded = l0.Target;
    l0 = self[9];
    l0:Complete();
end;

function export:f_3_Complete()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:False();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
end;

function export:f_5_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Send();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
    l0 = self[3];
    l0:In();
    l0 = self[6];
    l0:In();
end;

function export:f_7_Out()
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
    l0.Out = self.f_16_Out;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "SHA_MUS_MIS_DarkExploration";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
