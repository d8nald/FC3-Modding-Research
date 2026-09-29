-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_playnarrativescenes.domino.xml
-- User graph: PlayChapter04
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayScene.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SetString.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Switch.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Finished = DummyFunction;
    self.SceneName = "";
    self[11] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    self[10] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[9] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[2] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[7] = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self[7];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 4,
    };
    l0.Out = DummyFunction;
    l0.Output[0] = self.f_7_Output_0;
    l0.Output[1] = self.f_7_Output_1;
    l0.Output[2] = self.f_7_Output_2;
    l0.Output[3] = self.f_7_Output_3;
    l0.None = self.f_7_None;
    self[12] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayScene.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Finished = self.f_12_Finished;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Play()
    local l0;
    l0 = self[7];
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Play();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 4 Finished";
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
    self:Finished();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Play();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Play();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[11];
    l0.Destination = "2074743296099365887";
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[2];
    l0.Destination = "2072988422414274613";
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[9];
    l0.Destination = "2074743280817419255";
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Play();
end;

function export:f_7_None()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_7_Output_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "DOC_030_BRIEF_B10";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:FromString();
end;

function export:f_7_Output_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "DOC_030_B20";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:FromString();
end;

function export:f_7_Output_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "CIT_010_BRIEF_B10C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:FromString();
end;

function export:f_7_Output_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "CIT_010_B20C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:FromString();
end;

function export:f_12_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[10];
    l0.Destination = "2072490077115649478";
    l0:In();
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.SceneName = self.SceneName;
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 24;
