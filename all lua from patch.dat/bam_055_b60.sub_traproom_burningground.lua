-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: Sub_TrapRoom_BurningGround
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="DelayValue" Type="Core|float" />
    <DataIn Name="TriggerID" Type="Nomad|entity{}" />
    <DataIn Name="BuringParticle" Type="Nomad|entity{}" />
    <DataIn Name="b_Playparticle" Type="Core|bool" />
</InputReflection> 
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
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
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
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = self.f_1_Leave;
    l0.Use = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_6_Received;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_055/BAM_055_B60/BAM_055_B60.Sub_TrapRoom_FireProcess.lua");
    l0 = self[4];
    l0._graph = self;
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
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[2];
    l0.seconds = self.DelayValue;
    l0:Start();
    l0 = self[6];
    l0.message = "StopDamg";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
end;

function export:f_1_Leave()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:TLeave();
end;

function export:f_6_Received()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:TLeave();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.b_Playparticle;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_3_A_is_True;
    l0.A_is_False = self.f_3_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_3_A_is_False()
    local l0;
    self = self._graph;
    self:Out();
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_3_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v2.lua")];
    l0.ParticleSystem = self.BuringParticle;
    l0._graph = self;
    l0.Started = self.f_5_Started;
    l0.Paused = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Cleaned = DummyFunction;
    l0:Start();
end;

function export:f_5_Started()
    local l0;
    self = self._graph;
    self:Out();
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.triggerId = self.TriggerID;
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
