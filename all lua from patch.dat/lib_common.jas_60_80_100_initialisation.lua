-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: JAS_60_80_100_Initialisation
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eDennisTeleport" Type="Nomad|entity{}" />
    <DataIn Name="eNavmeshRegen" Type="Nomad|entity{}" />
    <DataIn Name="bIsReloaded" Type="Core|bool" />
    <DataIn Name="bIsMissionStart" Type="Core|bool" />
    <DataIn Name="eJeepTeleport" Type="Nomad|entity{}" />
    <DataIn Name="bDisablePlantLooting" Type="Core|bool" />
    <DataIn Name="bDisableAnimalLooting" Type="Core|bool" />
    <DataIn Name="AddKW1911" Type="Core|bool" />
    <DataIn Name="SetTimeOfDay" Type="Core|bool" />
    <DataIn Name="eDennisBattlefield" Type="Nomad|entity{}" />
    <DataIn Name="eMainDennis" Type="Nomad|entity{}" />
    <DataIn Name="bIsJas60" Type="Core|bool" />
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
        cbox:RegisterBox("Domino/System/AI/Scripted/AIScriptControlModifier.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareFloats.lua");
        cbox:RegisterBox("Domino/System/Player/EnableLootCategories.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GetDistance.lua");
        cbox:RegisterBox("Domino/System/Player/ManageInventory_v4.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cbox:RegisterBox("Domino/System/SetEntity.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
        cbox:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VehicleModifier.lua");
        cbox:RegisterBox("Domino/System/VehicleSeatModifier.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.InitialisationDone = DummyFunction;
    self.eJeep = "2076001291963743153";
    self.ePlayer = nil;
    self.eDennis = "2074715771025504507";
    self.fDistance = 0;
    self[32] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    self[28] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_28_Loaded;
    l0.Unloaded = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_13_Loaded;
    l0.Unloaded = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[22];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_22_Out;
    self[26] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Finished = self.f_26_Finished;
    self[35] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_35_Loaded;
    l0.Unloaded = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    self[12] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = self.f_12_Completed;
    self[10] = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Completed = self.f_10_Completed;
    self[23] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Finished = self.f_23_Finished;
    self[27] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_27_Loaded;
    l0.Unloaded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_5_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bIsJas60;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_24_A_is_True;
    l0.A_is_False = self.f_24_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.AddKW1911;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_6_A_is_True;
    l0.A_is_False = self.f_6_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleSeatModifier.lua")];
    l0.SeatType = 1;
    l0.SeatIndex = nil;
    l0.vehicleEntity = self.eJeep;
    l0.isLocked = nil;
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:In();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    self.eMainDennisJeep = l0.Target;
    l0 = self[10];
    l0.RegionEntity = self.eNavmeshRegen;
    l0:In();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/Scripted/AIScriptControlModifier.lua")];
    l0.targets = self.eDennis;
    l0._graph = self;
    l0.TryAcquireOut = DummyFunction;
    l0.TryReleaseOut = self.f_16_TryReleaseOut;
    l0.Error = DummyFunction;
    l0:TryRelease();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_28_Loaded()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = self[28];
    l0:Disable();
    l0 = self[11];
    l0.PawnEntity = self.eJeep;
    l0.Destination = self.eJeepTeleport;
    l0:In();
end;

function export:f_38_A_is_False()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_38_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.entityId = self.eDennis;
    l0:Enable();
end;

function export:f_24_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    l0.Entity = "2074715771025504507";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:FromEntity();
end;

function export:f_24_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    l0.Entity = "2077288330747197802";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:FromEntity();
end;

function export:f_29_Out()
    self = self._graph;
    self:InitialisationDone();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_13_Loaded()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Disable();
    l0 = self[32];
    l0.PawnEntity = self.eDennis;
    l0.Destination = self.eDennisTeleport;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bDisablePlantLooting;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_33_A_is_True;
    l0.A_is_False = self.f_33_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_6_A_is_False()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:AddWeapon();
end;

function export:f_6_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.WeaponType = "weapons:FC3/KW1911";
    l0.ammoCount = 40;
    l0:AddWeapon();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier.lua")];
    l0.targets = self.eJeep;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:SetAsIndestructable();
end;

function export:f_33_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableLootCategories.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0.Error = DummyFunction;
    l0:EnablePlantLooting();
end;

function export:f_33_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableLootCategories.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0.Error = DummyFunction;
    l0:DisablePlantLooting();
end;

function export:f_26_Finished()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetAll();
end;

function export:f_25_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableLootCategories.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0.Error = DummyFunction;
    l0:EnableAnimalLooting();
end;

function export:f_25_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableLootCategories.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0.Error = DummyFunction;
    l0:DisableAnimalLooting();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistance = l0.Distance;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0.A = self.fDistance;
    l0.B = 30;
    l0.Tolerance = nil;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = self.f_8_A_le_B;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = self.f_8_A_gt_B;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    self.eMainDennisJeep = l0.Target;
    l0 = self[22];
    l0:Condition(1);
end;

function export:f_35_Loaded()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:Disable();
    self:en_28();
    l0 = self[28];
    l0:Enable();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    self.eDennis = l0.Target;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    self:en_38();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = self.eJeep;
    l0._graph = self;
    l0.Enabled = self.f_20_Enabled;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetEnabled();
end;

function export:f_4_A_is_False()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0:In();
end;

function export:f_4_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0.Hour = 14;
    l0.Minute = 0;
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:SetTimeOfDay();
end;

function export:f_12_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    l0.Entity = self.eJeep;
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:FromEntity();
end;

function export:f_20_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = self.eJeep;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = self.f_15_Started;
    l0:StartPhysics();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    self.eDennis = l0.Target;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_16_TryReleaseOut()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0:Condition(0);
end;

function export:f_10_Completed()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0:SetAll();
end;

function export:f_15_Started()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.RegionEntity = self.eNavmeshRegen;
    l0:In();
end;

function export:f_8_A_gt_B()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:In();
end;

function export:f_8_A_le_B()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_A_is_False()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "The mission isn't reloaded";
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

function export:f_9_A_is_True()
    local l0;
    self = self._graph;
    self:en_35();
    l0 = self[35];
    l0:Enable();
    self:en_5();
    l0 = self[5];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "The mission is reloaded";
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

function export:f_23_Finished()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:AddWeapon();
end;

function export:f_27_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0.Entity1 = self.eDennis;
    l0.Entity2 = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:Distance2D();
end;

function export:f_5_Loaded()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Enable();
    self:en_5();
    l0 = self[5];
    l0:Disable();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetEntity.lua")];
    l0.Entity = self.eJeep;
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:FromEntity();
end;

function export:en_28()
    local l0;
    l0 = self[28];
    l0.entityId = self.eJeepTeleport;
    l0.autoDisable = false;
end;

function export:en_38()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bIsMissionStart;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_38_A_is_True;
    l0.A_is_False = self.f_38_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

function export:en_29()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = self.eDennis;
    l0.Battlefield = self.eDennisBattlefield;
    l0._graph = self;
    l0.Out = self.f_29_Out;
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.entityId = self.eDennisTeleport;
    l0.autoDisable = false;
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_18_Out;
end;

function export:en_26()
    local l0;
    l0 = self[26];
    l0.WeaponType = "weapons:FC3/MACHETE";
end;

function export:en_25()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bDisableAnimalLooting;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_25_A_is_True;
    l0.A_is_False = self.f_25_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

function export:en_35()
    local l0;
    l0 = self[35];
    l0.entityId = self.eJeep;
    l0.autoDisable = false;
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.SetTimeOfDay;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_4_A_is_True;
    l0.A_is_False = self.f_4_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bIsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_9_A_is_True;
    l0.A_is_False = self.f_9_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.entityId = self.eDennis;
    l0.autoDisable = false;
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_3_Out;
end;

-- Empty out anchor definitions
function export:InitialisationDone()
    
end;
_compilerVersion = 24;
