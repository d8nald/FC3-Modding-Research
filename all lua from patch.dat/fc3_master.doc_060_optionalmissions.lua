-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: DOC_060_OptionalMissions
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/DOC_060_OPT30/DOC_060_OPT30_MAIN.DOC_060_OPT30_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/DOC_060_OPT50/DOC_060_OPT50_MAIN.DOC_060_OPT50_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_MainMissions/DOC_060_OPT40/DOC_060_OPT40_MAIN.DOC_060_OPT40_MAIN.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.Optional.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Started = DummyFunction;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.Optional.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.Optional.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    l0.Failed = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_11_Received;
    self[7] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.Optional.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
    l0.Failed = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[11];
    l0.message = "DOC_060_OPT_Start";
    l0:Enable();
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_1_Out_0;
    l0.Out[1] = self.f_1_Out_1;
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Restart();
    self:en_3();
    l0 = self[3];
    l0:Restart();
    self:en_4();
    l0 = self[4];
    l0:Restart();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
    self:en_4();
    l0 = self[4];
    l0:In();
    self:en_7();
    l0 = self[7];
    l0:In();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:Scan();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_9_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_4_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_4_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_1_Out_0()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_Out_1()
    self = self._graph;
    self:Started();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.message = "DOC_060_OPT_Stop";
    l0:Enable();
end;

function export:f_11_Received()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Scan();
end;

function export:en_12()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/DOC_060_OPT30/DOC_060_OPT30_MAIN.DOC_060_OPT30_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/DOC_060_OPT50/DOC_060_OPT50_MAIN.DOC_060_OPT50_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/DOC_060_OPT40/DOC_060_OPT40_MAIN.DOC_060_OPT40_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Started()
    
end;
_compilerVersion = 24;
