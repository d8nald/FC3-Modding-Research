-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_activitiesmaster.domino.xml
-- User graph: C3_Activities
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
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[10];
    l0._graph = self;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[9];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = self.f_1_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_1_Received;
    self[11] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[11];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[1];
    l0.message = "C3_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.MissionBlock = "138285546734122";
    l0.MissionBlockLayer = "138300850702076";
    l0.ActivityMarker = "2075697558040097364";
    l0:Activate();
    l0 = self[11];
    l0.MissionBlock = "138273340401133";
    l0.MissionBlockLayer = "27159871106063890";
    l0.ActivityMarker = "2076305983950306804";
    l0:Activate();
    l0 = self[10];
    l0.MissionBlock = "138292908689758";
    l0.MissionBlockLayer = "81203086603489185";
    l0.ActivityMarker = "2077771308367667265";
    l0:Activate();
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
    l0.Out = self.f_6_Out;
    l0:In();
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
