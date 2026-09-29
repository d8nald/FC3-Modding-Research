-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b20/wil_050_b20.domino.xml
-- User graph: ChopperArrival
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
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetReevaluateCover.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/WIL_050/WIL_050_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.LandingAnimationStarted = DummyFunction;
    self.ChopperMeta = 0;
    self.StartDepartureIsCalled = false;
    self[1] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = self.f_1_Stopped;
    l0.Skipped = DummyFunction;
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
    self[11] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[11];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "RemovePilot",
        },
    };
    l0.Started = self.f_11_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_11_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["RemovePilot"] = self.f_11_SPOut__RemovePilot_;
    self[7] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = self.f_7_Completed;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    
end;

function export:StartDeparture()
    
end;

function export:StopMetaLoop()
    local l0;
    l0 = self[1];
    l0.MetaSequenceID = Globals.WIL_050_MAIN.ChopperMetaGlobal;
    l0.SceneEntity = "2076497031035122178";
    l0.SequenceFile = "Sequences/WIL050/ChopperLoop.seq";
    l0:Stop();
end;

function export:f_1_Stopped()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.MetaSequenceID = Globals.WIL_050_MAIN.ChopperMetaGlobal;
    l0.SceneEntity = "2076497031035122178";
    l0.SequenceFile = "Sequences/WIL050/ChopperDeparture.seq";
    l0:Play();
end;

function export:f_9_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.RegionEntity = "2078837816852235462";
    l0:In();
end;

function export:f_3_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = Globals.WIL_050_MAIN.ChopperMetaGlobal;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Stop();
end;

function export:f_3_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2076497057763324442";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_11_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_3_Out_0;
    l0.Out[1] = self.f_3_Out_1;
    l0:In();
end;

function export:f_11_SPOut__RemovePilot_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078488139027993661";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_11_Started()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.seconds = 6;
    l0:Start();
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetReevaluateCover.lua")];
    l0.Group = Globals.WIL_050_MAIN.OliverMain;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:ReEvaluateCover();
end;

-- Empty out anchor definitions
function export:LandingAnimationStarted()
    
end;
_compilerVersion = 24;
