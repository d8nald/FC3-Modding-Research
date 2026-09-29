-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b20/bam_055_b20.domino.xml
-- User graph: BAM_055_B20_Init
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_MAIN.AdvancedMusicPlayer.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_C03.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_DangerZone.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_MAIN.AdvancedMusicPlayer.lua");
    l0 = self[2];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_DangerZone.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out_Disabled = DummyFunction;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
    l0 = self[6];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B20/BAM_055_B20.BAM_055_B20_C03.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.SP_crack = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[7];
    l0:Init_Pos();
    l0 = self[2];
    l0.Group = "#3E9D8432";
    l0.MusicInterval = 5;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 193;
    l0.posY = 2824;
    l0.posZ = 115;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:Enable();
    l0 = self[6];
    l0.Hour = 6;
    l0:Start();
    l0 = self[1];
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Send();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = nil;
    l0.wind = nil;
    l0.shadow = "SHA_Quest_Tomb:Common.Tomb_Shadow";
    l0.cloud = nil;
    l0.lighting = "SHA_Quest_Tomb:Common.Tomb_Lighting";
    l0.exposure = "SHA_Quest_Tomb:Common.Tomb_Exposure";
    l0.fog = "SHA_Quest_Tomb:Common.Tomb_Fog";
    l0.sky = "SHA_Quest_Tomb:Common.Tomb_Sky";
    l0.stormFactor = nil;
    l0.adaptiveBloom = "SHA_Quest_Tomb:Common.Tomb_Bloom";
    l0.motionBlur = "Preview_Lighting:Preview_MotionBlur";
    l0.depthOfField = "SHA_Quest_Tomb:Common.Tomb_DOF";
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
