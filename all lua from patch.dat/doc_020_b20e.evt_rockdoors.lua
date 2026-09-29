-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: EVT_RockDoors
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_Birds.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_RockDoors.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x000A943C]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A967B]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.Started = DummyFunction;
    self.StartDialogs = DummyFunction;
    self.iMetaIDRock = 0;
    self.ePlayer = nil;
    self[12] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_Birds.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Completed = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[10];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_10_Out;
    self[5] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[5];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "FreezeFrame_1",
        },
    };
    l0.Started = self.f_5_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_5_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["FreezeFrame_1"] = self.f_5_SPOut__FreezeFrame_1_;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_RockDoors.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Completed = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[14] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_14_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[13] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_Birds.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Completed = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Start();
    l0 = self[14];
    l0.seconds = 2.5;
    l0:Start();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2073373966090643317";
    l0:Enable();
end;

function export:f_4_Out()
    self = self._graph;
    self:Completed();
end;

function export:f_5_Finished()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Stop();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.iMetaIDRock;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:Stop();
end;

function export:f_5_SPOut__FreezeFrame_1_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Rock sequence initiated";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073373966090643317";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:SetEnabled();
    l0 = self[10];
    l0:Condition(1);
end;

function export:f_5_Started()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Start();
    self:Started();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Play();
    l0 = self[10];
    l0:Condition(0);
    l0 = self[7];
    l0.Entity = "2073403445057966903";
    l0.SoundId = "0x000A943C";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[9];
    l0.Entity = "2073765103070622633";
    l0.SoundId = "0x000A967B";
    l0.SoundType = 0;
    l0:Play();
    self:StartDialogs();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[3];
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    self.iMetaIDRock = l0.ID;
    self:en_5();
    l0 = self[5];
    l0:PlayFromStart();
end;

function export:f_14_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Restart();
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.MetaSequenceID = self.iMetaIDRock;
    l0.SceneEntity = "2073373621193025384";
    l0.SequenceFile = "Sequences/FC3_Main/doc01_b02/seq_DOC01_B02_Rocks.seq";
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
function export:Started()
    
end;
function export:StartDialogs()
    
end;
_compilerVersion = 24;
