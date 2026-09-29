-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_OBJ.lua");
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/ShimmerModifier.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018b1bd]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018b1bd.dpax]], "CPoseAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[6] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[13] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.BAM_055_B50_OBJ.lua");
    l0 = self[13];
    l0._graph = self;
    self[12] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
    l0 = self[12];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_3_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 193;
    l0.posY = 2824;
    l0.posZ = 115;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078013839571463341";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_27_Disabled;
    l0:SetDisabled();
end;

function export:f_23_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2075014327980537059";
    l0._graph = self;
    l0.Enabled = self.f_29_Enabled;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetEnabled();
end;

function export:f_8_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[6];
    l1.Group = l0.LocalPlayer;
end;

function export:f_15_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076410361411545083";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_27_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2078013954778508657";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_1_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077351996905493697";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_9_Disabled;
    l0:SetDisabled();
end;

function export:f_20_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076109281169514971";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_21_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.triggerId = "2076891671034860381";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076109285200241125";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_19_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2075014327980537059";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_23_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077351989091505343";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_1_Disabled;
    l0:SetDisabled();
    l0 = self[12];
    l0.Hour = 6;
    l0.Minute = 50;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076109281171612127";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
    l0 = self[13];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076686735468668318";
    l0.R = 1;
    l0.G = 0.9;
    l0.B = 0.6;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:Enable();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier.lua")];
    l0.targets = "2076686739419702688";
    l0.R = 1;
    l0.G = 0.9;
    l0.B = 0.6;
    l0.Speed = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
end;

function export:f_3_Enter()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.SoundId = "0x0018b1bd";
    l0:ForcePlay_Priority();
end;

function export:f_21_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076109281171612127";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_25_Disabled;
    l0:SetDisabled();
end;

function export:f_11_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077351996905493697";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_25_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076109272426488281";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_19_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076109290688487919";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = self.f_20_Stopped;
    l0.Cleaned = DummyFunction;
    l0:Stop();
end;

function export:f_29_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076508700666766995";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_15_Disabled;
    l0:SetDisabled();
end;

function export:f_9_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077351989091505343";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_11_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
