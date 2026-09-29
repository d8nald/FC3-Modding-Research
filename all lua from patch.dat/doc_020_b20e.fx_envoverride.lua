-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: FX_EnvOverride
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
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_11_TimeElapsed;
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
    self[13] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_13_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073487343366451585";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:SetEnabled();
end;

function export:f_11_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 4;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = nil;
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = "{50D33B33-9539-43ED-BABF-270301F4C0EB}";
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_2_Enabled()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.seconds = 4;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Env fx 01 enabled.";
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

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.triggerId = "2073487343366451585";
    l0:Enable();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 4;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = nil;
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = "{50D33B33-9539-43ED-BABF-270301F4C0EB}";
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_12_Disabled;
    l0:Disable();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Env fx 02 enabled.";
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
    l0 = self[9];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 4;
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
    l0.Disabled = self.f_7_Disabled;
    l0:Disable();
end;

function export:f_12_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Env fx 02 disabled.";
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

function export:f_13_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 4;
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
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_7_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Env fx 01 disabled.";
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
    l0 = self[11];
    l0.seconds = 4;
    l0:Start();
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
