-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: DOC_050_OptionalMissions
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/DOC_050_OPT20/DOC_050_OPT20_MAIN.DOC_050_OPT20_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/DOC_050_OPT30/DOC_050_OPT30_MAIN.DOC_050_OPT30_MAIN.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
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
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.Optional.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
    l0.Failed = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_11_Received;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
    self[4] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_4_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[11];
    l0.message = "DOC_050_OPT_Start";
    l0:Enable();
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_6_Out_0;
    l0.Out[1] = self.f_6_Out_1;
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Restart();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Restart();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
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
    self = self._graph;
    self:Initialized();
end;

function export:f_2_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "CIT_015_BRIEF";
    l0._graph = self;
    l0.Locked = self.f_1_Locked;
    l0.Running = self.f_1_Running;
    l0.Acknowledged = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Failed = self.f_1_Failed;
    l0.Hidden = self.f_1_Hidden;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.message = "DOC_050_OPT_Stop";
    l0:Enable();
end;

function export:f_11_Received()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_6_Out_0()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_6_Out_1()
    self = self._graph;
    self:Started();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.message = "DOC_050_OPT30_Stop";
    l0:Enable();
end;

function export:f_9_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Scan();
end;

function export:f_4_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_1_Failed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_1_Hidden()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_1_Locked()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_1_Running()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:en_13()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/DOC_050_OPT30/DOC_050_OPT30_MAIN.DOC_050_OPT30_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/DOC_050_OPT20/DOC_050_OPT20_MAIN.DOC_050_OPT20_MAIN.lua";
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
