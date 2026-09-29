-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: AnimalSideQuestB10Lib
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="WeaponPickup" Type="Nomad|entity{}" />
    <DataIn Name="WeaponClass" Type="Core|string" />
    <DataIn Name="MissionAckZone_Weapon" Type="Nomad|entity{}" />
    <DataIn Name="QuestMarker_Weapon" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GetEntityInPrefab.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PawnWeaponCheck.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/UsableEntityListener.lua");
        cbox:RegisterBox("Domino/System/Player/WieldInventory_v3.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_4_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Acknowledged = self.f_5_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[17] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_17_Stopped;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_17_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    self[2] = cbox:CreateBox("Domino/System/UsableEntityListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnUse = self.f_2_OnUse;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_9_Enter;
    l0.Leave = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_7_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.QuestMarker_Weapon;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_3_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_16_InInventory()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:Stop();
end;

function export:f_6_A_eq_B()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "machete";
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
end;

function export:f_6_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck.lua")];
    l0.pawn = nil;
    l0.weaponName = nil;
    l0.categoryName = nil;
    l0.className = self.WeaponClass;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.InHands = self.f_11_InHands;
    l0.InInventory = self.f_11_InInventory;
    l0.NotFound = self.f_11_NotFound;
    l0:In();
end;

function export:f_4_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.QuestMarker_Weapon;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_12_Removed;
    l0:Remove();
end;

function export:f_10_Drew()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_5_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:Send();
end;

function export:f_3_Added()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.triggerId = self.MissionAckZone_Weapon;
    l0:Enable();
end;

function export:f_1_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[1];
    l1 = self[2];
    l1.entityId = l0.ObjectEntity;
    l1:Enable();
end;

function export:f_17_Stopped()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck.lua")];
    l0.pawn = nil;
    l0.weaponName = nil;
    l0.categoryName = nil;
    l0.className = self.WeaponClass;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.InHands = DummyFunction;
    l0.InInventory = self.f_16_InInventory;
    l0.NotFound = DummyFunction;
    l0:In();
end;

function export:f_12_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Leaving B10";
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
    self:Out();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "machete";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_6_A_eq_B;
    l0.A_neq_B = self.f_6_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_2_OnUse()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:Start();
    l0 = self[7];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_11_InHands()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In(0);
end;

function export:f_11_InInventory()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/WieldInventory_v3.lua")];
    l0.category = nil;
    l0.class = self.WeaponClass;
    l0.name = nil;
    l0.pawn = nil;
    l0.force = true;
    l0._graph = self;
    l0.Drew = self.f_10_Drew;
    l0.Holstered = DummyFunction;
    l0.Error = DummyFunction;
    l0:LuaDrawWeapon();
end;

function export:f_11_NotFound()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "Weapon";
    l0:In();
end;

function export:f_9_Enter()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Save = false;
    l0:Acknowledge();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:Stop();
end;

function export:en_17()
    local l0;
    l0 = self[17];
    l0.seconds = 0.1;
    l0.loop = true;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
