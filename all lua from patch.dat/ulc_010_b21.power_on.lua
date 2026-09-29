-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_010/ulc_010_b21/ulc_010_b21.domino.xml
-- User graph: Power_On
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
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Random.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_010/ULC_010_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b018b.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b018b]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/001b00cc.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x001b00cc]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.DoDamage = false;
    self.PlayerID = nil;
    self[110] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[110];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_110_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[115] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[115];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_115_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[121] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[121];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_121_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[128] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[128];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_128_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_40_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_10_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[103] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[103];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_103_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[70] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[70];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[132] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[132];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_132_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_7_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[126] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[126];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_126_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[136] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[136];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_136_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[96] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[96];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_96_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[93] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[93];
    l0._graph = self;
    l0.Out = self.f_93_Out;
    l0.Closed = DummyFunction;
    l0.Opened = self.f_93_Opened;
    self[14] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_14_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[118] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[118];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_118_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[81] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[81];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_81_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[127] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[127];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_127_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[141] = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self[141];
    l0._graph = self;
    l0._DynamicAnchors = {
        Probability = 2,
        Output = 2,
    };
    l0.Out = DummyFunction;
    l0.None = DummyFunction;
    l0.Output[0] = self.f_141_Output_0;
    l0.Output[1] = self.f_141_Output_1;
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
    self[106] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[106];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_106_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_3_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_60_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[84] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[84];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_84_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[30] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_30_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[79] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_79_TimeElapsed;
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
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[142] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[142];
    l0._graph = self;
    l0.Out = self.f_142_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_58_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[143] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[143];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_143_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[101] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[101];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_101_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[123] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[123];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_123_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[95] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[95];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_95_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[122] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[122];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_122_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[104] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[104];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_104_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[134] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[134];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_134_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[77] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_77_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_2_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839531950142630";
    l0._graph = self;
    l0.Enabled = self.f_63_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076283946315820966";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_44_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204180359355142";
    l0._graph = self;
    l0.Started = self.f_53_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204304923892502";
    l0._graph = self;
    l0.Started = self.f_78_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715031755511364";
    l0._graph = self;
    l0.Started = self.f_102_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797250821955676";
    l0._graph = self;
    l0.Started = self.f_21_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076563089156751350";
    l0._graph = self;
    l0.Started = self.f_124_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076769748873394598";
    l0._graph = self;
    l0.Started = self.f_97_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797619329325429";
    l0._graph = self;
    l0.Started = self.f_62_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 9,
    };
    l0.Out[0] = self.f_148_Out_0;
    l0.Out[1] = self.f_148_Out_1;
    l0.Out[2] = self.f_148_Out_2;
    l0.Out[3] = self.f_148_Out_3;
    l0.Out[4] = self.f_148_Out_4;
    l0.Out[5] = self.f_148_Out_5;
    l0.Out[6] = self.f_148_Out_6;
    l0.Out[7] = self.f_148_Out_7;
    l0.Out[8] = self.f_148_Out_8;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 7,
    };
    l0.Out[0] = self.f_149_Out_0;
    l0.Out[1] = self.f_149_Out_1;
    l0.Out[2] = self.f_149_Out_2;
    l0.Out[3] = self.f_149_Out_3;
    l0.Out[4] = self.f_149_Out_4;
    l0.Out[5] = self.f_149_Out_5;
    l0.Out[6] = self.f_149_Out_6;
    l0:In();
end;

function export:f_120_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0:In();
end;

function export:f_38_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715063214888522";
    l0._graph = self;
    l0.Started = self.f_64_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    self:en_122();
    l0 = self[122];
    l0:Enable();
end;

function export:f_59_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204379949505314";
    l0._graph = self;
    l0.Started = self.f_69_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_37_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076840357359821498";
    l0._graph = self;
    l0.Enabled = self.f_65_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_47_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797128490885202";
    l0._graph = self;
    l0.Started = self.f_31_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_31_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076962700960735731";
    l0._graph = self;
    l0.Started = self.f_137_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_110_Enter()
    local l0;
    self = self._graph;
    l0 = self[127];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_22_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797606077421939";
    l0._graph = self;
    l0.Started = self.f_108_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_64_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715063212791368";
    l0._graph = self;
    l0.Started = self.f_51_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_100_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797635376732537";
    l0._graph = self;
    l0.Started = self.f_87_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_63_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839602122945710";
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_78_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204325085911834";
    l0._graph = self;
    l0.Started = self.f_113_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_147_Out()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Enable();
end;

function export:f_114_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077059485098057834";
    l0._graph = self;
    l0.Started = self.f_57_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_115_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_118();
    l0 = self[118];
    l0:Enable();
end;

function export:f_87_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797640909019515";
    l0._graph = self;
    l0.Started = self.f_111_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_137_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077059346681831524";
    l0._graph = self;
    l0.Started = self.f_27_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:Enable();
end;

function export:f_52_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076769775672900016";
    l0._graph = self;
    l0.Started = self.f_129_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_117_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797770057931151";
    l0._graph = self;
    l0.Started = self.f_92_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_149_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076076339349172393";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:SetEnabled();
end;

function export:f_149_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076076353395896493";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:SetEnabled();
end;

function export:f_149_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076076365804744881";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:SetEnabled();
end;

function export:f_149_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076162427694618920";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:SetEnabled();
end;

function export:f_149_Out_4()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076162448213154092";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_130_Out;
    l0:SetEnabled();
end;

function export:f_149_Out_5()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076076384475689141";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_91_Out;
    l0:SetEnabled();
end;

function export:f_149_Out_6()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076162497865324848";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:SetEnabled();
end;

function export:f_67_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715098348475984";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_68_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839646509167810";
    l0._graph = self;
    l0.Enabled = self.f_71_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_72_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076563095905386488";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_121_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Enable();
end;

function export:f_128_Enter()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[132];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_97_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076769755418605992";
    l0._graph = self;
    l0.Started = self.f_82_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_62_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797623911602551";
    l0._graph = self;
    l0.Started = self.f_22_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_36_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076837252750647446";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_98_Disabled;
    l0:SetDisabled();
end;

function export:f_108_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797597667842417";
    l0._graph = self;
    l0.Started = self.f_83_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_29_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715029559793218";
    l0._graph = self;
    l0.Started = self.f_11_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_139_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797179172757592";
    l0._graph = self;
    l0.Started = self.f_16_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_40_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Enable();
end;

function export:f_129_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076769778346768818";
    l0._graph = self;
    l0.Started = self.f_80_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_44_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076769833980019654";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_75_Disabled;
    l0:SetDisabled();
end;

function export:f_83_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797696970086789";
    l0._graph = self;
    l0.Started = self.f_6_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    l0 = self[121];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_102_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715022448350782";
    l0._graph = self;
    l0.Started = self.f_29_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_103_Finished()
    local l0;
    self = self._graph;
    l0 = self[142];
    l0:Open();
end;

function export:f_6_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797692385712515";
    l0._graph = self;
    l0.Started = self.f_100_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_54_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797167212699734";
    l0._graph = self;
    l0.Started = self.f_140_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_88_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076795241360269560";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_36_Disabled;
    l0:SetDisabled();
end;

function export:f_132_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_128();
    l0 = self[128];
    l0:Enable();
end;

function export:f_7_Enter()
    local l0;
    self = self._graph;
    l0 = self[81];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_82_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076769761397586346";
    l0._graph = self;
    l0.Started = self.f_125_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_69_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204390399613732";
    l0._graph = self;
    l0.Started = self.f_17_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_105_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204417857624874";
    l0._graph = self;
    l0.Started = self.f_41_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839619814519990";
    l0._graph = self;
    l0.Enabled = self.f_25_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_28_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077059371520499816";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_124_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076563099250343930";
    l0._graph = self;
    l0.Started = self.f_72_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_17_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797087074230348";
    l0._graph = self;
    l0.Started = self.f_45_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_146_Out()
    local l0;
    self = self._graph;
    self:en_110();
    l0 = self[110];
    l0:Enable();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.PlayerID = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 40;
    l0._graph = self;
    l0.Out = self.f_133_Out;
    l0:Damage();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Enable();
end;

function export:f_73_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076840406254920386";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_16_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797141778440276";
    l0._graph = self;
    l0.Started = self.f_54_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_126_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = self[30];
    l0:Enable();
end;

function export:f_25_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839637992633534";
    l0._graph = self;
    l0.Enabled = self.f_68_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_136_Enter()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[134];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_96_Enter()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[8];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_9_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797748018960775";
    l0._graph = self;
    l0.Started = self.f_131_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_1_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797757183515017";
    l0._graph = self;
    l0.Started = self.f_9_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_93_Opened()
    local l0;
    self = self._graph;
    l0 = self[141];
    l0:Reset();
end;

function export:f_93_Out()
    local l0;
    self = self._graph;
    l0 = self[141];
    l0:In();
end;

function export:f_24_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204371223255840";
    l0._graph = self;
    l0.Started = self.f_59_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_14_Enter()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_94_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797654351763839";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    self:en_84();
    l0 = self[84];
    l0:Enable();
end;

function export:f_135_Out()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = self[136];
    l0:Enable();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Enable();
end;

function export:f_119_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839608634602674";
    l0._graph = self;
    l0.Enabled = self.f_116_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_91_Out()
    local l0;
    self = self._graph;
    self:en_96();
    l0 = self[96];
    l0:Enable();
end;

function export:f_133_Out()
    local l0;
    self = self._graph;
    l0 = self[93];
    l0:In();
    l0 = self[142];
    l0:In();
end;

function export:f_148_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078581126250668896";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_109_Out;
    l0:SetEnabled();
end;

function export:f_148_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078580880139391746";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:SetEnabled();
end;

function export:f_148_Out_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078581013350490971";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:SetEnabled();
end;

function export:f_148_Out_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078580972556690265";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_86_Out;
    l0:SetEnabled();
end;

function export:f_148_Out_4()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2078580945052541784";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_135_Out;
    l0:SetEnabled();
end;

function export:f_148_Out_5()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076784459180427848";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_145_Out;
    l0:SetEnabled();
end;

function export:f_148_Out_6()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076784569413032203";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_147_Out;
    l0:SetEnabled();
end;

function export:f_148_Out_7()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076784603361728781";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_144_Out;
    l0:SetEnabled();
end;

function export:f_148_Out_8()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2076784624540866830";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_146_Out;
    l0:SetEnabled();
end;

function export:f_118_Enter()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[115];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_81_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Enable();
end;

function export:f_57_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077059512858058860";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_138_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797106550480974";
    l0._graph = self;
    l0.Started = self.f_47_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_71_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839671060526278";
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_127_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_110();
    l0 = self[110];
    l0:Enable();
end;

function export:f_141_Output_0()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Group = self.PlayerID;
    l0.SoundId = "0x001b00cc";
    l0:ForcePlay_Priority();
end;

function export:f_141_Output_1()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0.Group = self.PlayerID;
    l0.SoundId = "0x001b018b";
    l0:ForcePlay_Priority();
end;

function export:f_53_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797759817537931";
    l0._graph = self;
    l0.Started = self.f_1_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_145_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Enable();
end;

function export:f_11_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715026604906048";
    l0._graph = self;
    l0.Started = self.f_38_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_96();
    l0 = self[96];
    l0:Enable();
end;

function export:f_107_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839865009337558";
    l0._graph = self;
    l0.Enabled = self.f_112_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_106_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = self[58];
    l0:Enable();
end;

function export:f_140_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076796888805285956";
    l0._graph = self;
    l0.Started = self.f_138_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_3_Enter()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[95];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_60_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_104();
    l0 = self[104];
    l0:Enable();
end;

function export:f_84_Enter()
    local l0;
    self = self._graph;
    l0 = self[123];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_45_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076796935517249610";
    l0._graph = self;
    l0.Started = self.f_105_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Enable();
end;

function export:f_30_Enter()
    local l0;
    self = self._graph;
    l0 = self[126];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_79_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Enable();
end;

function export:f_92_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797765502917005";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_34_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715063212791366";
    l0._graph = self;
    l0.Started = self.f_32_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_125_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076769765327649196";
    l0._graph = self;
    l0.Started = self.f_52_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_113_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204332960717596";
    l0._graph = self;
    l0.Started = self.f_24_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_65_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076840387571393214";
    l0._graph = self;
    l0.Enabled = self.f_73_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_50_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_122();
    l0 = self[122];
    l0:Enable();
end;

function export:f_90_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839894258316506";
    l0._graph = self;
    l0.Enabled = self.f_19_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_85_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715098350573140";
    l0._graph = self;
    l0.Started = self.f_89_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_111_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797648767048061";
    l0._graph = self;
    l0.Started = self.f_94_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    self:en_77();
    l0 = self[77];
    l0:Enable();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = self[79];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_142_Out()
    local l0;
    self = self._graph;
    l0 = self[103];
    l0.SceneEntity = "2077914526409305950";
    l0.SequenceFile = "Sequences/fc3_main/ulc_010/ULC_010_Electrify.seq";
    l0:Play();
end;

function export:f_89_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715098348475982";
    l0._graph = self;
    l0.Started = self.f_67_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_116_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839626334565562";
    l0._graph = self;
    l0.Enabled = self.f_76_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_58_Enter()
    local l0;
    self = self._graph;
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[106];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = self[58];
    l0:Enable();
end;

function export:f_143_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[93];
    l0:Open();
end;

function export:f_32_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715098350573138";
    l0._graph = self;
    l0.Started = self.f_85_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_101_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_77();
    l0 = self[77];
    l0:Enable();
end;

function export:f_99_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076840434801353414";
    l0._graph = self;
    l0.Enabled = self.f_55_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_41_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076204428251110188";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_112_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839842513188050";
    l0._graph = self;
    l0.Enabled = self.f_42_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_51_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076715063214888524";
    l0._graph = self;
    l0.Started = self.f_34_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839837974951118";
    l0._graph = self;
    l0.Enabled = self.f_90_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_144_Out()
    local l0;
    self = self._graph;
    self:en_104();
    l0 = self[104];
    l0:Enable();
end;

function export:f_76_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839699581793482";
    l0._graph = self;
    l0.Enabled = self.f_107_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_123_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_84();
    l0 = self[84];
    l0:Enable();
end;

function export:f_80_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076769741535459748";
    l0._graph = self;
    l0.Started = self.f_114_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_21_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797247361654874";
    l0._graph = self;
    l0.Started = self.f_139_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_19_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076840323381764786";
    l0._graph = self;
    l0.Enabled = self.f_99_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_95_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Enable();
end;

function export:f_75_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076770876568650700";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_88_Disabled;
    l0:SetDisabled();
end;

function export:f_122_Enter()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_27_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077059357159202918";
    l0._graph = self;
    l0.Started = self.f_28_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_131_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2076797771049884049";
    l0._graph = self;
    l0.Started = self.f_117_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_130_Out()
    local l0;
    self = self._graph;
    self:en_128();
    l0 = self[128];
    l0:Enable();
end;

function export:f_104_Enter()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_55_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076839557537494186";
    l0._graph = self;
    l0.Enabled = self.f_119_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_134_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = self[136];
    l0:Enable();
end;

function export:f_98_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076837548159672486";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_42_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076840338156200630";
    l0._graph = self;
    l0.Enabled = self.f_37_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_77_Enter()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0.seconds = 2;
    l0:Start();
    self:en_120();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    self:en_118();
    l0 = self[118];
    l0:Enable();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    l0 = self[143];
    l0.seconds = 3;
    l0:Start();
end;

function export:en_120()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_120_Out;
end;

function export:en_110()
    local l0;
    l0 = self[110];
    l0.triggerId = "2076784624540866830";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_128()
    local l0;
    l0 = self[128];
    l0.triggerId = "2076162448213154092";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.triggerId = "2078581126250668896";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.triggerId = "2078581013350490971";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_136()
    local l0;
    l0 = self[136];
    l0.triggerId = "2078580945052541784";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_96()
    local l0;
    l0 = self[96];
    l0.triggerId = "2076076384475689141";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.triggerId = "2076784569413032203";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_118()
    local l0;
    l0 = self[118];
    l0.triggerId = "2076076353395896493";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.triggerId = "2078580880139391746";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_84()
    local l0;
    l0 = self[84];
    l0.triggerId = "2078580972556690265";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_30()
    local l0;
    l0 = self[30];
    l0.triggerId = "2076162427694618920";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.triggerId = "2076784459180427848";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_58()
    local l0;
    l0 = self[58];
    l0.triggerId = "2076076365804744881";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_122()
    local l0;
    l0 = self[122];
    l0.triggerId = "2076076339349172393";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_104()
    local l0;
    l0 = self[104];
    l0.triggerId = "2076784603361728781";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

function export:en_77()
    local l0;
    l0 = self[77];
    l0.triggerId = "2076162497865324848";
    l0.colliderFilterId = Globals.ULC_010_MAIN.Player;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
