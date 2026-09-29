-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b20/wil_050_b20.domino.xml
-- User graph: FailProofWave
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="DelayBeforeSkip" Type="Core|float" />
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
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.SkipWave = DummyFunction;
    self.iMercCount = 0;
    self[1] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_1_MemberAdded;
    l0.MemberRemoved = self.f_1_MemberRemoved;
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
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Enable()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.iMercCount = l0.memberCount;
end;

function export:f_1_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.iMercCount = l0.memberCount;
end;

function export:f_1_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.iMercCount = l0.memberCount;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.iMercCount;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = self.f_2_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_2_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    self:SkipWave();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Wave timed out - Skipping to next wave.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 20;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_2_A_eq_B()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Start();
end;

function export:f_2_A_lt_B()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Disable();
    self:en_3();
    l0 = self[3];
    l0:Stop();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.group = "#70B1A04C";
    l0.autoDisable = false;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.seconds = self.DelayBeforeSkip;
end;

-- Empty out anchor definitions
function export:SkipWave()
    
end;
_compilerVersion = 24;
