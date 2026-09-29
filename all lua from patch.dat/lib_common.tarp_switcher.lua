-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: tarp_switcher
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/MaterialOverride.lua");
        cbox:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua");
        cbox:RegisterBox("Domino/System/GetSafeHouseState.lua");
        cbox:RegisterBox("Domino/System/ListReader.lua");
        cbox:RegisterBox("Domino/System/SafeHouseListener.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Tarp = nil;
    self[1] = cbox:CreateBox("Domino/System/SafeHouseListener.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Unlocked = self.f_1_Unlocked;
    self[5] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0.EndOfList = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_6_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[6];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_1_Unlocked()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:In();
end;

function export:f_4_Unlocked()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    self.Tarp = l0.Data;
    l0 = Boxes[GetPathID("Domino/System/MaterialOverride.lua")];
    l0.target = self.Tarp;
    l0.UseLightMaterial = true;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Locked = DummyFunction;
    l0.Unlocked = self.f_4_Unlocked;
    l0:In();
    l0 = self[1];
    l0.safehouseId = self.SafeHouse;
    l0:Enable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Read();
end;

function export:f_3_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l1 = self[5];
    l1.Input = l0.Pawns;
    l1:Read();
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0.Group = "#8B06740E";
    l0._graph = self;
    l0.Out = self.f_3_Out;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
