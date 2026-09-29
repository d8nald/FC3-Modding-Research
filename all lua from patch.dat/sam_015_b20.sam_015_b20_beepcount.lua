-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/sam_015/sam_015_b20/sam_015_b20.domino.xml
-- User graph: SAM_015_B20_BeepCount
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
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0011624c]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self[17] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_12_TimeElapsed;
    l0.LoopingEnded = self.f_12_LoopingEnded;
    self[10] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_10_TimeElapsed;
    l0.LoopingEnded = self.f_10_LoopingEnded;
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
    self[23] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_15_TimeElapsed;
    l0.LoopingEnded = self.f_15_LoopingEnded;
    self[11] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_11_TimeElapsed;
    l0.LoopingEnded = self.f_11_LoopingEnded;
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
    self[22] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_22_TimeElapsed;
    l0.LoopingEnded = self.f_22_LoopingEnded;
    self[3] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_32_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_24_TimeElapsed;
    l0.LoopingEnded = self.f_24_LoopingEnded;
    self[6] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_6_TimeElapsed;
    l0.LoopingEnded = self.f_6_LoopingEnded;
    self[13] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_16_TimeElapsed;
    l0.LoopingEnded = self.f_16_LoopingEnded;
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = self.f_5_LoopingEnded;
    self[7] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_21_TimeElapsed;
    l0.LoopingEnded = self.f_21_LoopingEnded;
    self[9] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[31] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_4_TimeElapsed;
    l0.LoopingEnded = self.f_4_LoopingEnded;
    self[30] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
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
    self[26] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_18_TimeElapsed;
    l0.LoopingEnded = self.f_18_LoopingEnded;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:FirstBomb()
    local l0;
    l0 = self[6];
    l0.seconds = 1;
    l0.loop = true;
    l0.nbLoop = 4;
    l0:Start();
end;

function export:FourthBomb()
    local l0;
    l0 = self[22];
    l0.seconds = 1;
    l0.loop = true;
    l0.nbLoop = 4;
    l0:Start();
end;

function export:SecondBomb()
    local l0;
    l0 = self[11];
    l0.seconds = 1;
    l0.loop = true;
    l0.nbLoop = 4;
    l0:Start();
end;

function export:ThirdBomb()
    local l0;
    l0 = self[16];
    l0.seconds = 1;
    l0.loop = true;
    l0.nbLoop = 4;
    l0:Start();
end;

function export:f_12_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.seconds = 0.125;
    l0.loop = true;
    l0.nbLoop = 36;
    l0:Start();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Entity = "2076294012626543301";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_10_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.seconds = 0.25;
    l0.loop = true;
    l0.nbLoop = 18;
    l0:Start();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Entity = "2076294012626543301";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_29_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.Entity = "2076294012626543301";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_15_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.seconds = 0.25;
    l0.loop = true;
    l0.nbLoop = 18;
    l0:Start();
end;

function export:f_15_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Entity = "2076294026539049677";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_11_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.seconds = 0.5;
    l0.loop = true;
    l0.nbLoop = 9;
    l0:Start();
end;

function export:f_11_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Entity = "2076294012626543301";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_28_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.Entity = "2076294026539049677";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_22_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.seconds = 0.5;
    l0.loop = true;
    l0.nbLoop = 9;
    l0:Start();
end;

function export:f_22_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.Entity = "2076294028464235217";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_32_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.Entity = "2076294023718380233";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_24_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.seconds = 0.125;
    l0.loop = true;
    l0.nbLoop = 36;
    l0:Start();
end;

function export:f_24_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.Entity = "2076294028464235217";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_6_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.seconds = 0.5;
    l0.loop = true;
    l0.nbLoop = 9;
    l0:Start();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Entity = "2076294023718380233";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_16_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.seconds = 0.5;
    l0.loop = true;
    l0.nbLoop = 9;
    l0:Start();
end;

function export:f_16_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Entity = "2076294026539049677";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_5_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.seconds = 0.25;
    l0.loop = true;
    l0.nbLoop = 18;
    l0:Start();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Entity = "2076294023718380233";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_21_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.seconds = 0.25;
    l0.loop = true;
    l0.nbLoop = 18;
    l0:Start();
end;

function export:f_21_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.Entity = "2076294028464235217";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_4_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.seconds = 0.125;
    l0.loop = true;
    l0.nbLoop = 36;
    l0:Start();
end;

function export:f_4_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Entity = "2076294023718380233";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_25_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.Entity = "2076294028464235217";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_18_LoopingEnded()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.seconds = 0.125;
    l0.loop = true;
    l0.nbLoop = 36;
    l0:Start();
end;

function export:f_18_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Entity = "2076294026539049677";
    l0.SoundId = "0x0011624c";
    l0.SoundType = 11;
    l0:Play();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
