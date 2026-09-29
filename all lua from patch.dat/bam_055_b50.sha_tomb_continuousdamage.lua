-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: SHA_Tomb_ContinuousDamage
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="InitialDmg" Type="Core|int" />
    <DataIn Name="ContinuousDmg" Type="Core|int" />
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/HealthModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.OpenOut = DummyFunction;
    self.CloseOut = DummyFunction;
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

function export:Close()
    local l0;
    self:en_2();
    l0 = self[2];
    l0:Stop();
    self:CloseOut();
end;

function export:Open()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = self.InitialDmg;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:Damage();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier.lua")];
    l0.pawns = nil;
    l0.origin = nil;
    l0.value = self.ContinuousDmg;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:Damage();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Start();
    self:OpenOut();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Start();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.seconds = 1;
    l0.loop = true;
end;

-- Empty out anchor definitions
function export:OpenOut()
    
end;
function export:CloseOut()
    
end;
_compilerVersion = 24;
