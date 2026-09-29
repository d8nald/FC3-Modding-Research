-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: BNG_OptionalMissions
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/BNG_030/BNG_030_MAIN.BNG_030_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/BNG_020/BNG_020_MAIN.BNG_020_MAIN.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_MainMissions/BNG_010/BNG_010_MAIN.BNG_010_MAIN.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.ULC.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.WasMissionQuickLaunched.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Started = DummyFunction;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULC.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    l0.Completed = self.f_2_Completed;
    l0.Failed = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[6];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_6_Out;
    self[14] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_14_Received;
    self[1] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULC.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
    l0.Completed = self.f_1_Completed;
    l0.Failed = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = self.f_8_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_8_Received;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
    self[11] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_11_Received;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.ULC.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = DummyFunction;
    self[15] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.WasMissionQuickLaunched.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Yes = DummyFunction;
    l0.No = self.f_15_No;
    self[5] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[5];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_5_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[11];
    l0.message = "Unlock_BNG_010";
    l0:Enable();
    l0 = self[14];
    l0.message = "KILL_BNG_MISSION";
    l0:Enable();
end;

function export:Start()
    self:Started();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Restart();
    self:en_3();
    l0 = self[3];
    l0:Restart();
    self:en_1();
    l0 = self[1];
    l0:Restart();
end;

function export:f_12_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247565898184";
    l0.missionLayerId = "9145502518384878";
    l0._graph = self;
    l0.Activated = self.f_13_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_2_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.message = "Unlock_BNG_030";
    l0:Enable();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_14_Received()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:In();
end;

function export:f_1_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_1_Initialized()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.message = "Unlock_BNG_020";
    l0:Enable();
end;

function export:f_13_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_8_Enabled()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Scan();
end;

function export:f_8_Received()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Condition(0);
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Condition(1);
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
    l0 = self[6];
    l0:Condition(0);
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Scan();
end;

function export:f_11_Received()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:In();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138247565898184";
    l0.missionLayerId = "138303263624920";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_12_Disabled;
    l0:Disable();
end;

function export:f_3_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_15_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Condition(1);
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/BNG_020/BNG_020_MAIN.BNG_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/BNG_010/BNG_010_MAIN.BNG_010_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/BNG_030/BNG_030_MAIN.BNG_030_MAIN.lua";
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
