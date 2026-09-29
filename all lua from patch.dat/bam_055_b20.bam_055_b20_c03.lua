-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b20/bam_055_b20.domino.xml
-- User graph: BAM_055_B20_C03
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
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.SP_crack = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[3];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "crack",
        },
    };
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["crack"] = self.f_3_SPOut__crack_;
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
    self[4] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_4_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = self.f_7_Started;
    l0.Paused = DummyFunction;
    l0.Finished = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[4];
    l0.SceneEntity = "2076425718115346265";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb01/B01_bridge_b.seq";
    l0:PlayFromStart();
end;

function export:In_a()
    local l0;
    l0 = self[3];
    l0.SceneEntity = "2074945473740808393";
    l0.SequenceFile = "Sequences/FC3_Main/SHA_Quest/Fire/TombB01/B01_bridge.seq";
    l0:PlayFromStart();
end;

function export:Init_Pos()
    local l0;
    self:en_7();
    l0 = self[7];
    l0:PlayFromStart();
end;

function export:f_3_SPOut__crack_()
    self = self._graph;
    self:SP_crack();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Pause();
end;

function export:f_4_Finished()
    self = self._graph;
    self:Out();
end;

function export:f_7_Started()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.seconds = 0.05;
    l0:Start();
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.SceneEntity = "2076425718115346265";
    l0.SequenceFile = "Sequences/fc3_main/sha_quest/fire/tombb01/B01_bridge_b.seq";
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:SP_crack()
    
end;
_compilerVersion = 24;
