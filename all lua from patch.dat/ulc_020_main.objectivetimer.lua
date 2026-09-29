-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_main.domino.xml
-- User graph: ObjectiveTimer
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
        cbox:RegisterBox("Domino/System/FloatArithmetics.lua");
        cbox:RegisterBox("Domino/System/ObjectiveTimer_v2.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.TimeElapsed = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ObjectiveTimer_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.ShowOut = DummyFunction;
    l0.HideOut = DummyFunction;
    l0.PauseOut = self.f_1_PauseOut;
    l0.ResumeOut = DummyFunction;
    l0.TimeElapsed = self.f_1_TimeElapsed;
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

function export:Pause()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Pause();
    self:en_2();
    l0 = self[2];
    l0:Stop();
end;

function export:Start()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Show();
    self:en_2();
    l0 = self[2];
    l0:Start();
end;

function export:f_1_PauseOut()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Hide();
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Time Up!";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    self:TimeElapsed();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    l0.A = Globals.ULC_020_MAIN.Countdown;
    l0.B = 1;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:Sub();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/FloatArithmetics.lua")];
    Globals.ULC_020_MAIN.Countdown = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Countdown: ";
    l0.int = nil;
    l0.float = Globals.ULC_020_MAIN.Countdown;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.time = Globals.ULC_020_MAIN.Countdown;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.loop = true;
end;

-- Empty out anchor definitions
function export:TimeElapsed()
    
end;
_compilerVersion = 24;
