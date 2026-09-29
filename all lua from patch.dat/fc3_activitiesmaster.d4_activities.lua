-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_activitiesmaster.domino.xml
-- User graph: D4_Activities
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
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[1];
    l0._graph = self;
    self[3] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_3_Received;
    self[4] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_4_Received;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.Activity.lua");
    l0 = self[2];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[3];
    l0.message = "D4_1_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.MissionBlock = "126239061973385104";
    l0.MissionBlockLayer = "135246261228126096";
    l0.ActivityMarker = "2077012431464333384";
    l0:Activate();
    l0 = self[1];
    l0.MissionBlock = "9145472565796119";
    l0.MissionBlockLayer = "36167070332761100";
    l0.ActivityMarker = "2076488094764256830";
    l0:Activate();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.message = "D4_2_OutpostIsUnlocked";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_3_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_4_Enabled()
    self = self._graph;
    self:Initialized();
end;

function export:f_4_Received()
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
