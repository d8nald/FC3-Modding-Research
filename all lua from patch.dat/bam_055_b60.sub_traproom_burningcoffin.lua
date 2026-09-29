-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: Sub_TrapRoom_BurningCoffin
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
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/ParticleSystem_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_FireProcess.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
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
    self[7] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_7_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_9_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[1] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_FireProcess.lua");
    l0 = self[1];
    l0._graph = self;
    self[5] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_5_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
    self[6] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_6_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[8];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.triggerId = "2077475237858968159";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[6];
    l0.triggerId = "2076951380855105395";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_9_TimeElapsed()
    self = self._graph;
    self:Out();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077030433435974319";
    l0._graph = self;
    l0.Started = self.f_3_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    l0 = self[7];
    l0.seconds = 3;
    l0:Start();
    l0 = self[10];
    l0.message = "StopDamg";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:TLeave();
end;

function export:f_4_Started()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_3_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = "2077030431942802093";
    l0._graph = self;
    l0.Started = self.f_4_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
    self:en_2();
    l0 = self[2];
    l0:Disable();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:TLeave();
end;

function export:f_6_Enter()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:In();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.triggerId = "2076951380855105395";
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
