-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: EVT_Birds
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
        cbox:RegisterBox("Domino/System/Coop/Group/AddToGroup.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x000a9633]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.iMetaIDBirds = 0;
    self.ePlayer = nil;
    self[3] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[3];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "FreezeFrame_1",
        },
    };
    l0.Started = self.f_3_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_3_Finished;
    l0.Stopped = DummyFunction;
    l0.Skipped = DummyFunction;
    l0.SPOut["FreezeFrame_1"] = self.f_3_SPOut__FreezeFrame_1_;
    self[1] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[5] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Restart()
    local l0;
    l0 = self[5];
    l0.Entity = "2073653012254989045";
    l0.SoundId = "0x000a9633";
    l0.SoundType = 0;
    l0:Play();
    self:en_3();
    l0 = self[3];
    l0:Play();
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#FC1659A2";
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = "2078529178333891864";
    l0.Group = "#FC1659A2";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = "2078529174267514132";
    l0.Group = "#FC1659A2";
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[1];
    l0:In();
end;

function export:f_11_Out()
    self = self._graph;
    self:Completed();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = "2078529177899781398";
    l0.Group = "#FC1659A2";
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.iMetaIDBirds;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:Stop();
end;

function export:f_3_SPOut__FreezeFrame_1_()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Bird sequence initiated";
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
end;

function export:f_3_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = "2078529178572967194";
    l0.Group = "#FC1659A2";
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.iMetaIDBirds = l0.ID;
    self:en_3();
    l0 = self[3];
    l0:PlayFromStart();
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.MetaSequenceID = self.iMetaIDBirds;
    l0.SceneEntity = "2073571033987691985";
    l0.SequenceFile = "Sequences/FC3_Main/doc01_b02/seq_DOC01_B02_halluc_birdflight.seq";
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
