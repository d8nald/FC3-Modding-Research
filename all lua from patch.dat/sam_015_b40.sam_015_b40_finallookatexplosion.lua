-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b40/sam_015_b40.domino.xml
-- User graph: SAM_015_B40_FinalLookAtExplosion
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
        cbox:RegisterBox("Domino/System/CompoundObject_v2.lua");
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/MetaBreakableModifier.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PlayerLookAtModifier_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x00020086]], "CSoundResource");
        cbox:LoadResource([[sndres0x00116251]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[52] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_52_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Started = self.f_36_Started;
    l0.Finished = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_3_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[72] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = self.f_72_StateChanged;
    l0.Destroyed = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Started = self.f_55_Started;
    l0.Finished = DummyFunction;
    self[65] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[65];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Started = self.f_32_Started;
    l0.Finished = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_34_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[69] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[69];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = self.f_69_StateChanged;
    l0.Destroyed = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_29_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[38] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Started = self.f_38_Started;
    l0.Finished = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_11_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_30_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[47] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_2_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_28_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[54] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[75] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[75];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_8_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[76] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[76];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_76_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_4_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[49] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_49_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[67] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = self.f_67_StateChanged;
    l0.Destroyed = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_15_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[66] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_66_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_50_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[53] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/PlayerLookAtModifier_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0.Done = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Started = self.f_33_Started;
    l0.Finished = DummyFunction;
    self[51] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/CompoundObject_v2.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateChanged = self.f_46_StateChanged;
    l0.Destroyed = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783398592358261";
    l0._graph = self;
    l0.Started = self.f_6_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074621565619703599";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:SetEnabled();
end;

function export:f_52_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075921981781333294";
    l0._graph = self;
    l0.Started = self.f_19_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = self[53];
    l0.Entity = "2076502825766045732";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_36_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "9145493370657651";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_35_Disabled;
    l0:Disable();
    l0 = self[34];
    l0.seconds = 3.5;
    l0:Start();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783389245351791";
    l0._graph = self;
    l0.Started = self.f_7_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_72_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2075975184862426626";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetExplosion();
end;

function export:f_55_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2078294646217262066";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetAsDestructable();
end;

function export:f_32_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783380326164331";
    l0._graph = self;
    l0.Started = self.f_10_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075685760278734346";
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:Enable();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075812533645634300";
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0:Enable();
end;

function export:f_34_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2075817773797246841";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_37_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:NextState();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0.Entity = "2076502825766045732";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783400435754871";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_69_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2075975616896731262";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetExplosion();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075975609305041012";
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:In();
end;

function export:f_29_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.Entity = "2076500318903876060";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783380326164331";
    l0._graph = self;
    l0.Started = self.f_20_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_38_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075921984979490100";
    l0._graph = self;
    l0.Started = self.f_16_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_37_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783393192191857";
    l0._graph = self;
    l0.Started = self.f_13_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_11_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2075975125877929472";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_31_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:NextState();
end;

function export:f_30_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0.Entity = "2076500328701770208";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075685763957138960";
    l0._graph = self;
    l0.Out = self.f_63_Out;
    l0:SetDamageable();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075783055334714808";
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0:Enable();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.Entity = "2076502825766045732";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_35_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138276021426562";
    l0.missionLayerId = "138294115903925";
    l0._graph = self;
    l0.Activated = self.f_74_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076594124879861492";
    l0._graph = self;
    l0.Started = self.f_24_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.triggerId = "2074621565619703599";
    l0:Enable();
end;

function export:f_9_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.seconds = 1.2;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075685760278734346";
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0:SetDamageable();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2074949975279671907";
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:Enable();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075812533645634300";
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0:SetDamageable();
end;

function export:f_28_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.Entity = "2076500301677869528";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075921983442277680";
    l0._graph = self;
    l0.Started = self.f_18_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075810863775751424";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_24_Started()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.seconds = 2;
    l0:Start();
    l0 = self[55];
    l0.Entity = "2076500318903876060";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_7_Started()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.Entity = "2077437854903976291";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_31_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.seconds = 1.3;
    l0:Start();
end;

function export:f_16_Started()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.seconds = 0.3;
    l0:Start();
    l0 = self[48];
    l0.Entity = "2076500328701770208";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783433614796667";
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = self[75];
    l0.Entity = "2077824189238095516";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.Entity = "2077824189238095516";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_76_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783386623911789";
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_74_Activated()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_4_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2074949975279671907";
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:SetDamageable();
end;

function export:f_17_Started()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.seconds = 1.6;
    l0:Start();
    l0 = self[51];
    l0.Entity = "2076502797288818720";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_10_Started()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.seconds = 0.7;
    l0:Start();
end;

function export:f_26_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.lookTarget = "2076500318903876060";
    l0.blendTime = 1;
    l0:LookAtEntity();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075975616896731262";
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_63_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0.entity = "2075685763957138960";
    l0._graph = self;
    l0.Out = self.f_62_Out;
    l0:Enable();
end;

function export:f_49_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MetaBreakableModifier.lua")];
    l0.targets = "2075783055334714808";
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:SetDamageable();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075975184862426626";
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_62_Out()
    local l0;
    self = self._graph;
    l0 = self[67];
    l0.entityId = "2075817773797246841";
    l0:Enable();
    l0 = self[72];
    l0.entityId = "2076596072513283561";
    l0:Enable();
    l0 = self[46];
    l0.entityId = "2075975125877929472";
    l0:Enable();
    l0 = self[69];
    l0.entityId = "2075817772778030967";
    l0:Enable();
end;

function export:f_18_Started()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.seconds = 0.8;
    l0:Start();
end;

function export:f_67_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2075975612593375353";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetExplosion();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.Entity = "2076500229103827396";
    l0.SoundId = "0x00116251";
    l0.SoundType = 10;
    l0:Play();
end;

function export:f_15_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2074621565619703599";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:SetDisabled();
    l0 = self[66];
    l0.seconds = 1.95;
    l0:Start();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2075921881998833888";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_9_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:NextState();
end;

function export:f_20_Started()
    local l0;
    self = self._graph;
    l0 = self[76];
    l0.seconds = 0.4;
    l0:Start();
end;

function export:f_66_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[65];
    l0.SoundId = "0x00020086";
    l0.SoundType = 13;
    l0:Play();
end;

function export:f_50_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075921983888971058";
    l0._graph = self;
    l0.Started = self.f_17_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2075975612593375353";
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.seconds = 1.5;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_ACT_Epic";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Stop();
end;

function export:f_13_Started()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_33_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2075783433614796667";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_19_Started()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.seconds = 0.4;
    l0:Start();
end;

function export:f_46_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = "2075975609305041012";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetExplosion();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
