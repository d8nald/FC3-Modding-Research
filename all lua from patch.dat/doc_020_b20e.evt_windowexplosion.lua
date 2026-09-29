-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: EVT_WindowExplosion
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
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0009F932]], "CSoundResource");
        cbox:LoadResource([[sndres0x0009F934]], "CSoundResource");
        cbox:LoadResource([[sndres0x0009F936]], "CSoundResource");
        cbox:LoadResource([[sndres0x0009F940]], "CSoundResource");
        cbox:LoadResource([[sndres0x0009F93A]], "CSoundResource");
        cbox:LoadResource([[sndres0x0009F935]], "CSoundResource");
        cbox:LoadResource([[sndres0x0009F933]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.eWinFront = "2073485233983864240";
    self.eWinTri01 = "2073485233983864243";
    self.eWinLeft = "2073485233983864241";
    self.eWinRight = "2073485233983864242";
    self.eWinBack = "2073485233983864239";
    self.eWinTri02 = "2073485233983864242";
    self[10] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_10_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[41] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_23_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[34] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_20_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
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
    self[14] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_14_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_25_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Started = self.f_40_Started;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Explode()
    local l0;
    l0 = self[29];
    l0.seconds = 12;
    l0:Start();
    l0 = self[10];
    l0.seconds = 4;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinTri02;
    l0.forcedStateId = 1;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_28_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_17_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinRight;
    l0.forcedStateId = 2;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_18_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinLeft;
    l0.forcedStateId = 1;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_11_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.Entity = "2073463986233358582";
    l0.SoundId = "0x0009F940";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_27_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinBack;
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_26_Destroyed;
    l0:Destroy();
end;

function export:f_26_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.Entity = "2073463990943561976";
    l0.SoundId = "0x0009F933";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_23_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinLeft;
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_22_Destroyed;
    l0:Destroy();
end;

function export:f_28_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinBack;
    l0.forcedStateId = 1;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_30_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_29_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinTri01;
    l0.forcedStateId = 1;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_1_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_22_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinRight;
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_24_Destroyed;
    l0:Destroy();
end;

function export:f_1_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinFront;
    l0.forcedStateId = 1;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_4_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_12_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.Entity = "2073463990943561976";
    l0.SoundId = "0x0009F934";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[14];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_4_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Entity = "2073463990943561976";
    l0.SoundId = "0x0009F933";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[13];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_18_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.seconds = 2;
    l0:Start();
    l0 = self[34];
    l0.Entity = "2073463986233358582";
    l0.SoundId = "0x0009F935";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_30_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.seconds = 2;
    l0:Start();
    l0 = self[40];
    l0.Entity = "2073463990943561976";
    l0.SoundId = "0x0009F936";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_19_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinRight;
    l0.forcedStateId = 3;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_21_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_15_Destroyed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinFront;
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_16_Destroyed;
    l0:Destroy();
end;

function export:f_11_StateChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinRight;
    l0.forcedStateId = 1;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_12_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_21_StateChanged()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.seconds = 2;
    l0:Start();
    l0 = self[7];
    l0.Entity = "2073463990943561976";
    l0.SoundId = "0x0009F932";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_24_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Entity = "2073463986233358582";
    l0.SoundId = "0x0009F935";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_20_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinLeft;
    l0.forcedStateId = 3;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_19_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinTri01;
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_15_Destroyed;
    l0:Destroy();
end;

function export:f_14_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinLeft;
    l0.forcedStateId = 2;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = self.f_17_StateChanged;
    l0.Destroyed = DummyFunction;
    l0:ForceState();
end;

function export:f_16_Destroyed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Entity = "2073463978742331636";
    l0.SoundId = "0x0009F932";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[5];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_25_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = self.eWinTri02;
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = self.f_27_Destroyed;
    l0:Destroy();
end;

function export:f_40_Started()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.Entity = "2073463986233358582";
    l0.SoundId = "0x0009F93A";
    l0.SoundType = 11;
    l0:Play();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
