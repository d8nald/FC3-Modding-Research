-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: EVENT_AnimatedChopperArrival
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
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.UnhideChopper = DummyFunction;
    self.LandingAnimationStarted = DummyFunction;
    self.ChopperList = {
    };
    self[5] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_5_Loaded;
    l0.Unloaded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[2];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "ChopperWait",
        },
    };
    l0.Started = self.f_2_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_2_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["ChopperWait"] = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_1_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_6_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138244187360113";
    l0.missionLayerId = "138287128627354";
    l0._graph = self;
    l0.Activated = self.f_4_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_5_Loaded()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.entityId = "2076497031035122178";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_4_Activated()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.seconds = 7;
    l0:Start();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.MetaSequenceID = Globals.WIL_050_MAIN.ChopperMetaGlobal;
    l0.SceneEntity = "2076497031035122178";
    l0.SequenceFile = "Sequences/WIL050/ChopperLoop.seq";
    l0:Play();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    self:LandingAnimationStarted();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "CHOPPERSTARTED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
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

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.entityId = "2076497057763324442";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_6_Loaded()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.MetaSequenceID = Globals.WIL_050_MAIN.ChopperMetaGlobal;
    l0.SceneEntity = "2076497031035122178";
    l0.SequenceFile = "Sequences/WIL050/ChopperArrival.seq";
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "CHOPPER+STP LOADED";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
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

-- Empty out anchor definitions
function export:UnhideChopper()
    
end;
function export:LandingAnimationStarted()
    
end;
_compilerVersion = 24;
