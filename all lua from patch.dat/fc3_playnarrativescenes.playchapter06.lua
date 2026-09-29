-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_playnarrativescenes.domino.xml
-- User graph: PlayChapter06
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
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayScene.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Finished = self.f_8_Finished;
    self[4] = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self[4];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 3,
    };
    l0.Out = DummyFunction;
    l0.Output[0] = self.f_4_Output_0;
    l0.Output[1] = self.f_4_Output_1;
    l0.Output[2] = self.f_4_Output_2;
    l0.None = self.f_4_None;
    self[10] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[1] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[6] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Play()
    local l0;
    l0 = self[4];
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[1];
    l0.Destination = "2074552406120604932";
    l0:In();
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_4_None()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_4_Output_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "DOC_040_BRIEF_B10";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:FromString();
end;

function export:f_4_Output_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_145_BRIEF_B10";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:FromString();
end;

function export:f_4_Output_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "BAM_060_B10C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:FromString();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Play();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[10];
    l0.Destination = "2073942926831919105";
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:Finished();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 6 Finished";
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

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[6];
    l0.Destination = "2074743296099365887";
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Play();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Play();
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.SceneName = self.SceneName;
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 24;
