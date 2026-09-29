-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_playnarrativescenes.domino.xml
-- User graph: PlayChapter03
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
    self[19] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
    self[12] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[1] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[18] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[24] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayScene.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Finished = self.f_24_Finished;
    self[5] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[7] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[10] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    self[15] = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self[15];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 7,
    };
    l0.Out = DummyFunction;
    l0.Output[0] = self.f_15_Output_0;
    l0.Output[1] = self.f_15_Output_1;
    l0.Output[2] = self.f_15_Output_2;
    l0.Output[3] = self.f_15_Output_3;
    l0.Output[4] = self.f_15_Output_4;
    l0.Output[5] = self.f_15_Output_5;
    l0.Output[6] = self.f_15_Output_6;
    l0.None = self.f_15_None;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Play()
    local l0;
    l0 = self[15];
    l0:In();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Play();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[12];
    l0.Destination = "2073760458575211954";
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Play();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[18];
    l0.Destination = "2072435023771870961";
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[10];
    l0.Destination = "2074922218936079871";
    l0:In();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[1];
    l0.Destination = "2072192756731665986";
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[7];
    l0.Destination = "2074479418281040324";
    l0:In();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    self:Finished();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 3 Finished";
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

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[19];
    l0.Destination = "2074922241029576199";
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Play();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Play();
end;

function export:f_24_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Play();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Play();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[5];
    l0.Destination = "2073650179799528494";
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:Play();
end;

function export:f_15_None()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_15_Output_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "DEN_040_BRIEF_B10";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:FromString();
end;

function export:f_15_Output_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_110_BRIEF_B10";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:FromString();
end;

function export:f_15_Output_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_110_B30C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:FromString();
end;

function export:f_15_Output_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_130_B30C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:FromString();
end;

function export:f_15_Output_4()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_130_B43C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:FromString();
end;

function export:f_15_Output_5()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_130_B70C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:FromString();
end;

function export:f_15_Output_6()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_130_B90C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:FromString();
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.SceneName = self.SceneName;
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 24;
