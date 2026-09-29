-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: Sub_MissionInit
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_LampON.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.BAM_055_B60_Obj.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.RandomSeconds = 0;
    self[49] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_LampON.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Out = self.f_49_Out;
    self[64] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_LampON.lua");
    l0 = self[64];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[50] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_LampON.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out = self.f_50_Out;
    self[61] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_LampON.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[48] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_LampON.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Out = self.f_48_Out;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.BAM_055_B60_Obj.lua");
    l0 = self[2];
    l0._graph = self;
    self[63] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_LampON.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[29] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
    l0 = self[29];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_28_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_73_Out;
    l0:In();
end;

function export:f_31_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078013954778508657";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0.SFX_Name = "2076894345501406173";
    l0.Lit_Name = "2076894213382927301";
    l0:In();
    l0 = self[50];
    l0.SFX_Name = "2076894103290835890";
    l0.Lit_Name = "2076894090152178608";
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078013839571463341";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_31_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076754150581871634";
    l0._graph = self;
    l0.Enabled = self.f_38_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077835571383773366";
    l0._graph = self;
    l0.Enabled = self.f_62_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_62_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078014488465972214";
    l0._graph = self;
    l0.Enabled = self.f_65_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0.SFX_Name = "2076894376744776677";
    l0.Lit_Name = "2076894312003597273";
    l0:In();
end;

function export:f_37_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076757634108625464";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_38_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076754164379034646";
    l0._graph = self;
    l0.Enabled = self.f_37_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.SFX_Name = "2076894352736580575";
    l0.Lit_Name = "2076894215121466313";
    l0:In();
    l0 = self[64];
    l0.SFX_Name = "2076894359090951137";
    l0.Lit_Name = "2076894300863525841";
    l0:In();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.SFX_Name = "2076894366684738531";
    l0.Lit_Name = "2076894306175611861";
    l0:In();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
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
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 193;
    l0.posY = 2824;
    l0.posZ = 115;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
    l0 = self[29];
    l0.Hour = 6;
    l0.Minute = 50;
    l0:Start();
    l0 = self[2];
    l0:Obj_1st();
end;

function export:f_65_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078028769546753751";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
