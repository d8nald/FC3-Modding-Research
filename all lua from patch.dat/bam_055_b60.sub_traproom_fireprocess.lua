-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: Sub_TrapRoom_FireProcess
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
        cbox:RegisterBox("Domino/System/Player/CameraShakeAndRumble.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
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
    self:en_2();
    l0 = self[2];
    l0:Start();
end;

function export:TLeave()
    local l0;
    self:en_2();
    l0 = self[2];
    l0:Stop();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = 8;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Damage();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble.lua")];
    l0.pawn = nil;
    l0.EventName = "weaponBulletShoot";
    l0.IntensityModifier = 2;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SendEvent();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.seconds = 0.3;
    l0.loop = true;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
