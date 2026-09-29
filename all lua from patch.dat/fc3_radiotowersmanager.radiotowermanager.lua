-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_radiotowersmanager.domino.xml
-- User graph: RadioTowerManager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="RadioTower" Type="Nomad|entity{}" />
    <DataIn Name="Message" Type="Core|string" />
</InputReflection> 
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
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/GetRadioTowerState.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/RadioTowerListener.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestRunning.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Activated = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_13_Received;
    self[8] = cbox:CreateBox("Domino/System/RadioTowerListener.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_8_Disabled;
    l0.Started = DummyFunction;
    l0.Finished = self.f_8_Finished;
    self[12] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_12_Received;
    self[10] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_10_Received;
    self[14] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestRunning.lua");
    l0 = self[14];
    l0._graph = self;
    l0.True = self.f_14_True;
    l0.False = self.f_14_False;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetRadioTowerState.lua")];
    l0.radioTowerId = self.RadioTower;
    l0._graph = self;
    l0.Locked = self.f_9_Locked;
    l0.Unlocked = self.f_9_Unlocked;
    l0:In();
    l0 = self[10];
    l0.message = "OnExclusiveMissionStop";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_13_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetRadioTowerState.lua")];
    l0.radioTowerId = self.RadioTower;
    l0._graph = self;
    l0.Locked = self.f_11_Locked;
    l0.Unlocked = DummyFunction;
    l0:In();
end;

function export:f_8_Disabled()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.message = "OnExclusiveMissionStop";
    l0:Enable();
end;

function export:f_8_Finished()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:In();
    self:en_12();
    l0 = self[12];
    l0:Disable();
end;

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Enable();
end;

function export:f_12_Received()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Disable();
end;

function export:f_10_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetRadioTowerState.lua")];
    l0.radioTowerId = self.RadioTower;
    l0._graph = self;
    l0.Locked = DummyFunction;
    l0.Unlocked = self.f_6_Unlocked;
    l0:In();
end;

function export:f_9_Locked()
    local l0;
    self = self._graph;
    self:Activated();
    self:en_12();
    l0 = self[12];
    l0:Enable();
end;

function export:f_9_Unlocked()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:In();
    self:Activated();
end;

function export:f_6_Unlocked()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:In();
end;

function export:f_11_Locked()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = self[12];
    l0:Enable();
end;

function export:f_14_False()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:In();
end;

function export:f_14_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.radioPanelId = self.RadioTower;
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.message = "OnExclusiveMissionStart";
end;

function export:en_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = self.Message;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Activated()
    
end;
_compilerVersion = 24;
