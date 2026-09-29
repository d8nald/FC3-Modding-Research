-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: FX_EnvOverrideGreenhouse
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
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
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

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 0.17;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = nil;
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = "{4E7036EA-9C9B-4A5B-8E64-6504A6218F64}";
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_1_Enabled()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.seconds = 0.17;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Env fx enabled.";
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
    l0:ToScreen();
end;

function export:f_3_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Env fx disabled.";
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
    l0:ToScreen();
    self:Completed();
end;

function export:f_2_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 0.17;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = nil;
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = "{4E7036EA-9C9B-4A5B-8E64-6504A6218F64}";
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_3_Disabled;
    l0:Disable();
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
