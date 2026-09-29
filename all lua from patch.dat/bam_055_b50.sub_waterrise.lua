-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: Sub_WaterRise
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetWaterLevel.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/WaterLevelModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0018760E]], "CSoundResource");
        cbox:LoadResource([[sndres0x00187610]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[27] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_27_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[48] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[44] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[56] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[47] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.WaterFallOut = self.f_47_WaterFallOut;
    l0.WaterRiseOut = self.f_47_WaterRiseOut;
    self[14] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[57] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[32];
    l0._graph = self;
    l0.StartFilling = DummyFunction;
    l0.StartDischarging = self.f_32_StartDischarging;
    l0.Filled = DummyFunction;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[31];
    l0._graph = self;
    l0.StartFilling = DummyFunction;
    l0.StartDischarging = self.f_31_StartDischarging;
    l0.Filled = DummyFunction;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_13_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[30];
    l0._graph = self;
    l0.StartFilling = self.f_30_StartFilling;
    l0.StartDischarging = DummyFunction;
    l0.Filled = DummyFunction;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[12];
    l0._graph = self;
    l0.StartFilling = DummyFunction;
    l0.StartDischarging = DummyFunction;
    l0.Filled = DummyFunction;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[43] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[16];
    l0._graph = self;
    l0.StartFilling = DummyFunction;
    l0.StartDischarging = DummyFunction;
    l0.Filled = DummyFunction;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_17_Enter;
    l0.Leave = self.f_17_Leave;
    l0.Use = DummyFunction;
    self[34] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[39] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_39_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[41] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[42] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/WaterLevelModifier.lua");
    l0 = self[29];
    l0._graph = self;
    l0.StartFilling = self.f_29_StartFilling;
    l0.StartDischarging = DummyFunction;
    l0.Filled = DummyFunction;
    l0.Discharged = DummyFunction;
    l0.Stopped = DummyFunction;
    self[58] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B50/BAM_055_B50.Prefab_WaterRiseFull.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0.WaterFallOut = DummyFunction;
    l0.WaterRiseOut = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:In();
end;

function export:f_27_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0.Prefab = "2075293569215639997";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.Prefab = "2076189466107591422";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Prefab = "2075831047509042658";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.Prefab = "2075293574689206769";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[39];
    l0.seconds = 1;
    l0:Start();
    l0 = self[27];
    l0.seconds = 1;
    l0:Start();
    l0 = self[17];
    l0.triggerId = "2078539946255326729";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_47_WaterFallOut()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.World = "fc3_main";
    l0.SectorId = 1428;
    l0.Waterlevel = 201.5;
    l0.Speed = 0.1;
    l0:Discharge();
end;

function export:f_47_WaterRiseOut()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.World = "fc3_main";
    l0.SectorId = 1428;
    l0.Waterlevel = 201.8;
    l0.Speed = 0.1;
    l0:Fill();
    l0 = self[13];
    l0.seconds = 1.7;
    l0:Start();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 201.5;
    l0.World = "fc3_main";
    l0.SectorId = 1427;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetWaterLevel();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 201.5;
    l0.World = "fc3_main";
    l0.SectorId = 1428;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:SetWaterLevel();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0.Prefab = "2075293575383364107";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    Globals.BAM_055_B50.InGeyserArea = l0.Target;
end;

function export:f_32_StartDischarging()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.World = "fc3_main";
    l0.SectorId = 1268;
    l0.Waterlevel = 201.5;
    l0.Speed = 0.1;
    l0:Discharge();
end;

function export:f_31_StartDischarging()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.World = "fc3_main";
    l0.SectorId = 1427;
    l0.Waterlevel = 201.5;
    l0.Speed = 0.1;
    l0:Discharge();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 201.5;
    l0.World = "fc3_main";
    l0.SectorId = 1268;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:SetWaterLevel();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Entity = "2076949362079961773";
    l0.SoundId = "0x0018760E";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[10];
    l0.Entity = "2076949355134194347";
    l0.SoundId = "0x00187610";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[15];
    l0.Entity = "2076949341966176935";
    l0.SoundId = "0x0018760E";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[14];
    l0.Entity = "2076947177285887073";
    l0.SoundId = "0x0018760E";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_30_StartFilling()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.World = "fc3_main";
    l0.SectorId = 1427;
    l0.Waterlevel = 201.8;
    l0.Speed = 0.1;
    l0:Fill();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0.Prefab = "2076189563581119337";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 201.5;
    l0.World = "fc3_main";
    l0.SectorId = 1267;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:SetWaterLevel();
end;

function export:f_17_Enter()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:True();
end;

function export:f_17_Leave()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0:False();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.Prefab = "2076189872317575859";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_39_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Prefab = "2075321764249879226";
    l0.WaitingTime = 4;
    l0:In();
    l0 = self[34];
    l0.Prefab = "2076189011644262093";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = self[42];
    l0.Prefab = "2076189423126461128";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = self[43];
    l0.Prefab = "2076189555716799309";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:f_29_StartFilling()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.World = "fc3_main";
    l0.SectorId = 1268;
    l0.Waterlevel = 201.8;
    l0.Speed = 0.1;
    l0:Fill();
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.Prefab = "2075321706060202648";
    l0.WaitingTime = 4;
    l0:In();
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_18_Out;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
