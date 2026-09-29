-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: Chapter08
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/JAS_200/JAS_200_MAIN.JAS_200_MAIN.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_QuestGivers/JAS_190/JAS_190_BRIEF.JAS_190_BRIEF.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_MainMissions/JAS_190/JAS_190_MAIN.JAS_190_MAIN.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_MainMissions/JAS_210/JAS_210_MAIN.JAS_210_MAIN.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_MainMissions/HOY_010/HOY_010_MAIN.HOY_010_MAIN.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_QuestGivers/HOY_010/HOY_010_BRIEF.HOY_010_BRIEF.lua";
    luaDepTable[7] = "Domino/user/fc3/FC3_MainMissions/HOY_020/HOY_020_MAIN.HOY_020_MAIN.lua";
    luaDepTable[8] = "Domino/user/fc3/FC3_MainMissions/GAME_CHAPTER08/GAME_CHAPTER08.GAME_CHAPTER08.lua";
    luaDepTable[9] = "Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_MAIN.JAS_170_MAIN.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/Player/EnableConditionalZoneEvents.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Player/EquipCostume.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.FC3_RestrictedZonesModifier.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PickupState.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SafeHouseModifier_v2.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self.Completed = DummyFunction;
    self.ePlayer = nil;
    self[1] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
    l0.Completed = self.f_1_Completed;
    l0.Failed = DummyFunction;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    l0.Completed = self.f_4_Completed;
    l0.Failed = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_42_Loaded;
    l0.Unloaded = DummyFunction;
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    l0.Completed = self.f_9_Completed;
    l0.Failed = DummyFunction;
    self[8] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Initialized = self.f_8_Initialized;
    l0.Completed = self.f_8_Completed;
    l0.Failed = self.f_8_Failed;
    self[18] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.FC3_RestrictedZonesModifier.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = self.f_18_Out;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = DummyFunction;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionGiver.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    l0.Completed = self.f_6_Completed;
    l0.Failed = self.f_6_Failed;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MainMission.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Completed = self.f_5_Completed;
    l0.Failed = DummyFunction;
    self[44] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_44_Loaded;
    l0.Unloaded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    self:en_5();
    l0 = self[5];
    l0:In();
end;

function export:Initialize()
    local l0;
    self:en_5();
    l0 = self[5];
    l0:Scan();
end;

function export:f_1_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_27_Out_0;
    l0.Out[1] = self.f_27_Out_1;
    l0:In();
end;

function export:f_1_Initialized()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Scan();
end;

function export:f_17_Unlocked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2076126979458869989";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_4_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_12_Out_0;
    l0.Out[1] = self.f_12_Out_1;
    l0:In();
end;

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_42_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PickupState.lua")];
    l0.Pickup = "2075810086380379215";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetAsNotPickable();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "27159897674196488";
    l0.missionLayerId = "36167096928937481";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_33_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EnableConditionalZoneEvents.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_11_Disabled;
    l0.Error = DummyFunction;
    l0:Disable();
end;

function export:f_33_Out_1()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:In();
end;

function export:f_9_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_35_Out_0;
    l0.Out[1] = self.f_35_Out_1;
    l0:In();
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Scan();
end;

function export:f_15_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "18152676807511681";
    l0.missionLayerId = "36167075317197497";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_26_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "HOY_040_MAIN";
    l0._graph = self;
    l0.Locked = self.f_40_Locked;
    l0.Running = self.f_40_Running;
    l0.Acknowledged = self.f_40_Acknowledged;
    l0.Completed = DummyFunction;
    l0.Failed = self.f_40_Failed;
    l0.Hidden = self.f_40_Hidden;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:f_26_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300047347396";
    l0.missionLayerId = "18152698556876573";
    l0._graph = self;
    l0.Activated = self.f_36_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_26_Out_2()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:In();
end;

function export:f_29_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2075641191216453596";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = self.f_14_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_29_Out_1()
    local l0;
    self = self._graph;
    self:Completed();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Chapter 8 Completed";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_21_Unlocked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078146306836022331";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = self.f_22_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_8_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_28_Out_0;
    l0.Out[1] = self.f_28_Out_1;
    l0:In();
end;

function export:f_8_Failed()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Restart();
end;

function export:f_8_Initialized()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Scan();
end;

function export:f_28_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138299899233237";
    l0.missionLayerId = "27159897663563017";
    l0._graph = self;
    l0.Activated = self.f_30_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_28_Out_1()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_37_Disabled()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:EnableAll();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078144507104215843";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = self.f_20_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_27_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "54181495813447537";
    l0.missionLayerId = "72195894323077438";
    l0._graph = self;
    l0.Activated = self.f_38_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_27_Out_1()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:In();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_29_Out_0;
    l0.Out[1] = self.f_29_Out_1;
    l0:In();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting CHAPTER 08 Initialization ... Done.";
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
    self:Initialized();
end;

function export:f_24_Unlocked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078145603824530314";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = self.f_21_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_35_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138300047347396";
    l0.missionLayerId = "9145499302088388";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_31_Disabled;
    l0:Disable();
end;

function export:f_35_Out_1()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:In();
end;

function export:f_22_Unlocked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078146515911589297";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_6_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_26_Out_0;
    l0.Out[1] = self.f_26_Out_1;
    l0.Out[2] = self.f_26_Out_2;
    l0:In();
end;

function export:f_6_Failed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:Restart();
end;

function export:f_6_Initialized()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Scan();
end;

function export:f_31_Disabled()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0.entityId = "2075810126507285587";
    l0.autoDisable = false;
    l0:Enable();
    l0 = self[42];
    l0.entityId = "2075810086380379215";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_5_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_33_Out_0;
    l0.Out[1] = self.f_33_Out_1;
    l0:In();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Scan();
end;

function export:f_38_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138299899233237";
    l0.missionLayerId = "18152698408814033";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_36_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "54181495813447537";
    l0.missionLayerId = "63188695068188529";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_37_Disabled;
    l0:Disable();
end;

function export:f_20_Unlocked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2078145027351003948";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = self.f_24_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:f_44_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PickupState.lua")];
    l0.Pickup = "2075810126507285587";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:SetAsNotPickable();
end;

function export:f_40_Acknowledged()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Player/EquipCostume.lua")];
    l0:Equip();
end;

function export:f_40_Failed()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Player/EquipCostume.lua")];
    l0:Equip();
end;

function export:f_40_Hidden()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Player/EquipCostume.lua")];
    l0:Equip();
end;

function export:f_40_Locked()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Player/EquipCostume.lua")];
    l0:Equip();
end;

function export:f_40_Running()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = Boxes[GetPathID("Domino/System/Player/EquipCostume.lua")];
    l0:Equip();
end;

function export:f_12_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_G3_HOYT_HQ_Active";
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_12_Out_1()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
end;

function export:f_14_Unlocked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "18152676807511681";
    l0.missionLayerId = "27159876062252673";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_15_Disabled;
    l0:Disable();
end;

function export:f_30_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "27159897674196488";
    l0.missionLayerId = "36167096928937481";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_11_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = "2076129307658301828";
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = self.f_17_Unlocked;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = DummyFunction;
    l0:Unlock();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/HOY_020/HOY_020_MAIN.HOY_020_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_200/JAS_200_MAIN.JAS_200_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_170/JAS_170_MAIN.JAS_170_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2072407579090229546";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/HOY_010/HOY_010_BRIEF.HOY_010_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/HOY_010/HOY_010_MAIN.HOY_010_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "HOY";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_16()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/EquipCostume.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Equipped = DummyFunction;
    l0.Unequipped = DummyFunction;
    l0.Error = DummyFunction;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_210/JAS_210_MAIN.JAS_210_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.Giver = "Domino/user/fc3/FC3_QuestGivers/JAS_190/JAS_190_BRIEF.JAS_190_BRIEF.lua";
    l0.GiverObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForGiver = true;
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/JAS_190/JAS_190_MAIN.JAS_190_MAIN.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.GiverName = "JAS";
    l0.SpawnPointStart = "2073663011622495937";
    l0.hasTitleScreen = true;
    l0.hasEndScreen = true;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Mission = "Domino/user/fc3/FC3_MainMissions/GAME_CHAPTER08/GAME_CHAPTER08.GAME_CHAPTER08.lua";
    l0.MissionObjective = {
        section = "",
        item = "",
        id = "",
    };
    l0.disableEncountersForMission = true;
    l0.SpawnPointStart = "2072407579090229546";
    l0.hasTitleScreen = false;
    l0.hasEndScreen = false;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
function export:Completed()
    
end;
_compilerVersion = 24;
