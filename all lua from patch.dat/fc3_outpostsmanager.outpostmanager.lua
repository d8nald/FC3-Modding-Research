-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_outpostsmanager.domino.xml
-- User graph: OutpostManager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/GetSafeHouseState.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/SafeHouseListener.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.SideQuestRunning.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Activated = DummyFunction;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.SideQuestRunning.lua");
    l0 = self[5];
    l0._graph = self;
    l0.True = self.f_5_True;
    l0.False = self.f_5_False;
    self[17] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_17_Received;
    self[4] = cbox:CreateBox("Domino/System/SafeHouseListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_4_Disabled;
    l0.Unlocked = self.f_4_Unlocked;
    self[3] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_3_Received;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Locked = self.f_7_Locked;
    l0.Unlocked = self.f_7_Unlocked;
    l0:In();
    l0 = self[17];
    l0.message = "OnExclusiveMissionStop";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_5_False()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:In();
end;

function export:f_5_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_17_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Locked = DummyFunction;
    l0.Unlocked = self.f_15_Unlocked;
    l0:In();
end;

function export:f_4_Disabled()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.message = "OnExclusiveMissionStop";
    l0:Enable();
end;

function export:f_4_Unlocked()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:In();
    self:en_2();
    l0 = self[2];
    l0:Disable();
end;

function export:f_3_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Locked = self.f_6_Locked;
    l0.Unlocked = DummyFunction;
    l0:In();
end;

function export:f_2_Enabled()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Enable();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Disable();
end;

function export:f_6_Locked()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_7_Locked()
    local l0;
    self = self._graph;
    self:Activated();
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_7_Unlocked()
    local l0;
    self = self._graph;
    self:Activated();
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:In();
end;

function export:f_15_Unlocked()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:In();
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.safehouseId = self.SafeHouse;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.message = "OnExclusiveMissionStart";
end;

function export:en_16()
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
