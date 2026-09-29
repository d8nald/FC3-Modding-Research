-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_activitiesmaster.domino.xml
-- User graph: G3_Activities
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[3];
    l0._graph = self;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[4];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[7];
    l0._graph = self;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
    self[1] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_1_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[2];
    l0.message = "G3_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.MissionBlock = "396455039616137547";
    l0.MissionBlockLayer = "405462238870878539";
    l0.ActivityMarker = "2075627602747335101";
    l0:Activate();
    l0 = self[3];
    l0.MissionBlock = "63188687992340715";
    l0.MissionBlockLayer = "225318274578049303";
    l0.ActivityMarker = "2077672181843637519";
    l0:Activate();
    l0 = self[7];
    l0.MissionBlock = "138273600045505";
    l0.MissionBlockLayer = "27159871364310948";
    l0.ActivityMarker = "2076639294610493218";
    l0:Activate();
end;

function export:f_2_Enabled()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.message = "G3_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_1_Enabled()
    self = self._graph;
    self:Initialized();
end;

function export:f_1_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
