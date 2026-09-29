-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_playnarrativescenes.domino.xml
-- User graph: PlayChapter01
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
    self[20] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    self[4] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[21] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayScene.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Finished = self.f_21_Finished;
    self[17] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    self[1] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[25] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    self[3] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[6] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[18] = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self[18];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 10,
    };
    l0.Out = DummyFunction;
    l0.Output[0] = self.f_18_Output_0;
    l0.Output[1] = self.f_18_Output_1;
    l0.Output[2] = self.f_18_Output_2;
    l0.Output[3] = self.f_18_Output_3;
    l0.Output[4] = self.f_18_Output_4;
    l0.Output[5] = self.f_18_Output_5;
    l0.Output[6] = self.f_18_Output_6;
    l0.Output[7] = self.f_18_Output_7;
    l0.Output[8] = self.f_18_Output_8;
    l0.Output[9] = self.f_18_Output_9;
    l0.None = self.f_18_None;
    self[9] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[13] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[7] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Play()
    local l0;
    l0 = self[18];
    l0:In();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:In();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[25];
    l0.Destination = "2074538667409412116";
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[7];
    l0.Destination = "2074538661973594124";
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[20];
    l0.Destination = "2074538667409412116";
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[3];
    l0.Destination = "2074910748296877044";
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 1 Finished";
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

function export:f_21_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[4];
    l0.Destination = "2074538661973594124";
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[6];
    l0.Destination = "2074910633960149991";
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[13];
    l0.Destination = "2074910637370119147";
    l0:In();
end;

function export:f_18_None()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_18_Output_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_020_B05C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:FromString();
end;

function export:f_18_Output_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_020__B20C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:FromString();
end;

function export:f_18_Output_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_020_B40C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:FromString();
end;

function export:f_18_Output_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "BNG_010_BRIEF_B10";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:FromString();
end;

function export:f_18_Output_4()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "BNG_010_B20C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:FromString();
end;

function export:f_18_Output_5()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "BNG_010_B40C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:FromString();
end;

function export:f_18_Output_6()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_030_B40C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:FromString();
end;

function export:f_18_Output_7()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "JAS_030_B60C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:FromString();
end;

function export:f_18_Output_8()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "BNG_030_B10C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:FromString();
end;

function export:f_18_Output_9()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    l0.String = "BNG_030_B30C";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0.Entity = nil;
    l0.GSF = nil;
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0:FromString();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[9];
    l0.Destination = "2074910751604085752";
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[17];
    l0.Destination = "2074483800657629244";
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:Play();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetString.lua")];
    self.SceneName = l0.Target;
    l0 = self[1];
    l0.Destination = "2075435348441175622";
    l0:In();
end;

function export:en_21()
    local l0;
    l0 = self[21];
    l0.SceneName = self.SceneName;
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 24;
