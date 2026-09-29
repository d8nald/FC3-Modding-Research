-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: AnimalSideQuestB20Lib
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="AnimalTokill_1" Type="Nomad|entity{}" />
    <DataIn Name="AreaObjectiveMarker" Type="Nomad|entity{}" />
    <DataIn Name="WeaponPickup" Type="Nomad|entity{}" />
    <DataIn Name="WeaponClass" Type="Core|string" />
    <DataIn Name="AnimalToKill_4" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_2" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_3" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_5" Type="Nomad|entity{}" />
    <DataIn Name="IsRareAnimal" Type="Core|bool" />
    <DataIn Name="AnimalToKill_6" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_7" Type="Nomad|entity{}" />
    <DataIn Name="RareSkinObjective" Type="Nomad|oasis" />
    <DataIn Name="RareMissionObjective" Type="Nomad|oasis" />
    <DataIn Name="RareMobileMarker_0" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_0" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_8" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_9" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_10" Type="Nomad|entity{}" />
    <DataIn Name="AnimalToKill_11" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/Coop/Group/AddToGroup.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/Player/CraftingListener.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/DiplayTextModifier.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/GetEntityInPrefab.lua");
        cbox:RegisterBox("Domino/System/GroupSizeListener_v4.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/InventoryWieldListener.lua");
        cbox:RegisterBox("Domino/System/Player/InventoryWieldModifier.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/LootEntityListener.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PickupListener_v2.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetArchetype.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/SetOasis.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetSessionGlobal.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Spawner_v2.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/Player/WieldInventory_v3.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self.FailMission = DummyFunction;
    self.Out = DummyFunction;
    self.bPickedUpAmmo5 = false;
    self.bPickedUpAmmo3 = false;
    self.TargetsGroup = "#AF431E13";
    self.Pickup2 = nil;
    self.Pickup6 = nil;
    self.bPickedUpAmmo4 = false;
    self.Pickup1 = nil;
    self.Pickup3 = nil;
    self.Ammo4 = nil;
    self.AmmoArchetype = "FC3_Interactive:Pickups/Ammo/Small_Ammo_Pickup";
    self.bPickedUpAmmo1 = false;
    self.Pickup4 = nil;
    self.TargetsRemaining = 0;
    self.bPickedUpAmmo6 = false;
    self.bPickedUpAmmo2 = false;
    self.Ammo6 = nil;
    self.Ammo1 = nil;
    self.Pickup5 = nil;
    self.Ammo5 = nil;
    self.Ammo2 = nil;
    self.Ammo3 = nil;
    self[66] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[66];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_66_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[274] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[274];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_274_Fail;
    self[154] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[154];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_154_Damaged;
    l0.Healed = self.f_154_Healed;
    l0.Critical = self.f_154_Critical;
    l0.Killed = self.f_154_Killed;
    l0.Torso = self.f_154_Torso;
    l0.Head = self.f_154_Head;
    l0.Leg = self.f_154_Leg;
    self[37] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_37_StateStart;
    l0.StateStop = self.f_37_StateStop;
    l0.MemberInState = DummyFunction;
    self[135] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[135];
    l0._graph = self;
    l0.Out = self.f_135_Out;
    self[71] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[71];
    l0._graph = self;
    l0.Out = self.f_71_Out;
    self[128] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[128];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_128_Out;
    self[24] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[73] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Out = self.f_73_Out;
    self[197] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[197];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_197_Success;
    l0.Fail = self.f_197_Fail;
    self[235] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[235];
    l0._graph = self;
    l0.Acknowledged = self.f_235_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[269] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[269];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_269_Damaged;
    l0.Healed = self.f_269_Healed;
    l0.Critical = self.f_269_Critical;
    l0.Killed = self.f_269_Killed;
    l0.Torso = self.f_269_Torso;
    l0.Head = self.f_269_Head;
    l0.Leg = self.f_269_Leg;
    self[248] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[248];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
    self[138] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[138];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_138_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Out = self.f_60_Out;
    self[226] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[226];
    l0._graph = self;
    l0.Out = self.f_226_Out;
    self[93] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[93];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_93_Damaged;
    l0.Healed = self.f_93_Healed;
    l0.Critical = self.f_93_Critical;
    l0.Killed = self.f_93_Killed;
    l0.Torso = self.f_93_Torso;
    l0.Head = self.f_93_Head;
    l0.Leg = self.f_93_Leg;
    self[298] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[298];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[114] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[114];
    l0._graph = self;
    l0.Enabled = self.f_114_Enabled;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_114_Drawn;
    l0.Holstered = DummyFunction;
    self[192] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[192];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_192_Success;
    l0.Fail = self.f_192_Fail;
    self[67] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Out = self.f_67_Out;
    self[181] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[181];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_181_Success;
    l0.Fail = self.f_181_Fail;
    self[79] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_79_Drawn;
    l0.Holstered = DummyFunction;
    self[205] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[205];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[222] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[222];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[72] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_72_Drawn;
    l0.Holstered = DummyFunction;
    self[139] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[139];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_139_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_55_PickedUp;
    self[203] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[203];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_203_StateStart;
    l0.StateStop = self.f_203_StateStop;
    l0.MemberInState = DummyFunction;
    self[148] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[148];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[303] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[303];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_303_Out_0;
    l0.ResetOut = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Added = self.f_4_Added;
    self[81] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[81];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_81_PickedUp;
    self[157] = cbox:CreateBox("Domino/System/Mission_Flow/ObjectiveMarkerAuto_v2.lua");
    l0 = self[157];
    l0._graph = self;
    l0.Added = self.f_157_Added;
    self[119] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[119];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_119_Fail;
    self[182] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[182];
    l0._graph = self;
    l0.Out = self.f_182_Out;
    self[10] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_10_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[140] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[140];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_140_PickedUp;
    self[169] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[169];
    l0._graph = self;
    l0.Out = self.f_169_Out;
    self[218] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[218];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_218_Drawn;
    l0.Holstered = DummyFunction;
    self[98] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[98];
    l0._graph = self;
    l0.Out = self.f_98_Out;
    self[163] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[163];
    l0._graph = self;
    l0.Enabled = self.f_163_Enabled;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_163_PickedUp;
    self[214] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[214];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_214_Success;
    l0.Fail = self.f_214_Fail;
    self[299] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[299];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_7_Loaded;
    l0.Unloaded = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_28_Damaged;
    l0.Healed = self.f_28_Healed;
    l0.Critical = self.f_28_Critical;
    l0.Killed = self.f_28_Killed;
    l0.Torso = self.f_28_Torso;
    l0.Head = self.f_28_Head;
    l0.Leg = self.f_28_Leg;
    self[32] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_32_Drawn;
    l0.Holstered = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    self[122] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[122];
    l0._graph = self;
    l0.Out = self.f_122_Out;
    self[132] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[132];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_132_Success;
    l0.Fail = self.f_132_Fail;
    self[104] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[104];
    l0._graph = self;
    l0.Out = self.f_104_Out;
    self[102] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[102];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_102_Drawn;
    l0.Holstered = DummyFunction;
    self[174] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[174];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_174_Damaged;
    l0.Healed = self.f_174_Healed;
    l0.Critical = self.f_174_Critical;
    l0.Killed = self.f_174_Killed;
    l0.Torso = self.f_174_Torso;
    l0.Head = self.f_174_Head;
    l0.Leg = self.f_174_Leg;
    self[284] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[284];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_284_Damaged;
    l0.Healed = self.f_284_Healed;
    l0.Critical = self.f_284_Critical;
    l0.Killed = self.f_284_Killed;
    l0.Torso = self.f_284_Torso;
    l0.Head = self.f_284_Head;
    l0.Leg = self.f_284_Leg;
    self[143] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[143];
    l0._graph = self;
    l0.Out = self.f_143_Out;
    self[83] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[83];
    l0._graph = self;
    l0.Out = self.f_83_Out;
    self[281] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[281];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_281_Fail;
    self[291] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[291];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_291_Damaged;
    l0.Healed = self.f_291_Healed;
    l0.Critical = self.f_291_Critical;
    l0.Killed = self.f_291_Killed;
    l0.Torso = self.f_291_Torso;
    l0.Head = self.f_291_Head;
    l0.Leg = self.f_291_Leg;
    self[190] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[190];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_190_Fail;
    self[27] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
    self[288] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[288];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_288_Fail;
    self[31] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    self[47] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_47_Success;
    l0.Fail = self.f_47_Fail;
    self[1] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_1_Fail;
    self[266] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[266];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_266_Fail;
    self[134] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[134];
    l0._graph = self;
    l0.Out = self.f_134_Out;
    self[289] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[289];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_289_Success;
    l0.Fail = self.f_289_Fail;
    self[166] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[166];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_166_Drawn;
    l0.Holstered = DummyFunction;
    self[14] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_14_Fail;
    self[198] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[198];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_198_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_9_Loaded;
    l0.Unloaded = DummyFunction;
    self[92] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[92];
    l0._graph = self;
    l0.Out = self.f_92_Out;
    self[56] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_56_Success;
    l0.Fail = self.f_56_Fail;
    self[293] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[293];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[199] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[199];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_199_Loaded;
    l0.Unloaded = DummyFunction;
    self[121] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[121];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_121_Drawn;
    l0.Holstered = DummyFunction;
    self[162] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[162];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_162_Success;
    l0.Fail = self.f_162_Fail;
    self[213] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[213];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[183] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[183];
    l0._graph = self;
    l0.Enabled = self.f_183_Enabled;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_183_PickedUp;
    self[215] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[215];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_215_Drawn;
    l0.Holstered = DummyFunction;
    self[250] = cbox:CreateBox("Domino/System/Player/CraftingListener.lua");
    l0 = self[250];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnCrafted = self.f_250_OnCrafted;
    self[17] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_17_Fail;
    self[271] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[271];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[208] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[208];
    l0._graph = self;
    l0.Out = self.f_208_Out;
    self[105] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[105];
    l0._graph = self;
    l0.Enabled = self.f_105_Enabled;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_105_PickedUp;
    self[179] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[179];
    l0._graph = self;
    l0.Enabled = self.f_179_Enabled;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = self.f_179_MemberAdded;
    l0.MemberRemoved = self.f_179_MemberRemoved;
    self[41] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_41_Damaged;
    l0.Healed = self.f_41_Healed;
    l0.Critical = self.f_41_Critical;
    l0.Killed = self.f_41_Killed;
    l0.Torso = self.f_41_Torso;
    l0.Head = self.f_41_Head;
    l0.Leg = self.f_41_Leg;
    self[267] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[267];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_267_Success;
    l0.Fail = self.f_267_Fail;
    self[125] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[125];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[277] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[277];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_277_Damaged;
    l0.Healed = self.f_277_Healed;
    l0.Critical = self.f_277_Critical;
    l0.Killed = self.f_277_Killed;
    l0.Torso = self.f_277_Torso;
    l0.Head = self.f_277_Head;
    l0.Leg = self.f_277_Leg;
    self[173] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[173];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_173_PickedUp;
    self[133] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[133];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_133_PickedUp;
    self[118] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[118];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[153] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[153];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_153_Drawn;
    l0.Holstered = DummyFunction;
    self[141] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[141];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_141_Damaged;
    l0.Healed = self.f_141_Healed;
    l0.Critical = self.f_141_Critical;
    l0.Killed = self.f_141_Killed;
    l0.Torso = self.f_141_Torso;
    l0.Head = self.f_141_Head;
    l0.Leg = self.f_141_Leg;
    self[275] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[275];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_275_Success;
    l0.Fail = self.f_275_Fail;
    self[282] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[282];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_282_Success;
    l0.Fail = self.f_282_Fail;
    self[221] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[221];
    l0._graph = self;
    l0.Out = self.f_221_Out;
    self[172] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[172];
    l0._graph = self;
    l0.Out = self.f_172_Out;
    self[177] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[177];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_177_Drawn;
    l0.Holstered = DummyFunction;
    self[176] = cbox:CreateBox("Domino/System/LootEntityListener.lua");
    l0 = self[176];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.OnLoot = self.f_176_OnLoot;
    self[89] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[89];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_89_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[249] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[249];
    l0._graph = self;
    l0.Out = self.f_249_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[158] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[158];
    l0._graph = self;
    l0.Out = self.f_158_Out;
    self[11] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_11_PickedUp;
    self[54] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = self.f_54_Success;
    l0.Fail = self.f_54_Fail;
    self[256] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[256];
    l0._graph = self;
    l0.Out = self.f_256_Out;
    self[117] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[117];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[210] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[210];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_210_Loaded;
    l0.Unloaded = DummyFunction;
    self[25] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_25_Fail;
    self[5] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_5_PickedUp;
    self[160] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[160];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_160_Fail;
    self[156] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[156];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_156_Loaded;
    l0.Unloaded = DummyFunction;
    self[101] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[101];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_101_Damaged;
    l0.Healed = self.f_101_Healed;
    l0.Critical = self.f_101_Critical;
    l0.Killed = self.f_101_Killed;
    l0.Torso = self.f_101_Torso;
    l0.Head = self.f_101_Head;
    l0.Leg = self.f_101_Leg;
    self[130] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[130];
    l0._graph = self;
    l0.Out = self.f_130_Out;
    self[247] = cbox:CreateBox("Domino/System/GroupSizeListener_v4.lua");
    l0 = self[247];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.MemberAdded = DummyFunction;
    l0.MemberRemoved = self.f_247_MemberRemoved;
    self[13] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = self.f_13_Enabled;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_13_PickedUp;
    self[186] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[186];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_186_Fail;
    self[224] = cbox:CreateBox("Domino/System/DiplayTextModifier.lua");
    l0 = self[224];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Displayed = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Blocked = DummyFunction;
    l0.Interrupted = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/PickupListener_v2.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = DummyFunction;
    l0.PickedUp = self.f_18_PickedUp;
    self[187] = cbox:CreateBox("Domino/Library/Sp/Lib_SideQuest.AnimalSQWeaponsClassCheck.lua");
    l0 = self[187];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Success = DummyFunction;
    l0.Fail = self.f_187_Fail;
    self[184] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[184];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_184_Damaged;
    l0.Healed = self.f_184_Healed;
    l0.Critical = self.f_184_Critical;
    l0.Killed = self.f_184_Killed;
    l0.Torso = self.f_184_Torso;
    l0.Head = self.f_184_Head;
    l0.Leg = self.f_184_Leg;
    self[108] = cbox:CreateBox("Domino/System/InventoryWieldListener.lua");
    l0 = self[108];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_108_Drawn;
    l0.Holstered = DummyFunction;
    self[87] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[87];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_87_Loaded;
    l0.Unloaded = DummyFunction;
    self[109] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[109];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_109_Damaged;
    l0.Healed = self.f_109_Healed;
    l0.Critical = self.f_109_Critical;
    l0.Killed = self.f_109_Killed;
    l0.Torso = self.f_109_Torso;
    l0.Head = self.f_109_Head;
    l0.Leg = self.f_109_Leg;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Begining B20";
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
    l0 = self[235];
    l0:Acknowledge();
end;

function export:f_309_Out()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:ClearText();
end;

function export:f_253_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_SideQuest_Hunting_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_200_Stopped;
    l0:Stop();
end;

function export:f_251_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "DOC_020_MAIN";
    l0._graph = self;
    l0.Locked = self.f_59_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
    l0:Get();
    l0 = self[250];
    l0.nameFilter = "Wildlife vision";
    l0:Enable();
end;

function export:f_230_Out()
    local l0;
    self = self._graph;
    l0 = self[249];
    l0:In();
end;

function export:f_233_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "machete";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_152_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_232_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "machete";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_212_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_229_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Stop();
end;

function export:f_234_Out()
    local l0;
    self = self._graph;
    self:en_79();
    l0 = self[79];
    l0:Disable();
    self:en_215();
    l0 = self[215];
    l0:Disable();
    self:en_32();
    l0 = self[32];
    l0:Disable();
    self:en_218();
    l0 = self[218];
    l0:Disable();
    self:en_166();
    l0 = self[166];
    l0:Disable();
    self:en_102();
    l0 = self[102];
    l0:Disable();
    self:en_153();
    l0 = self[153];
    l0:Disable();
    self:en_121();
    l0 = self[121];
    l0:Disable();
    self:en_72();
    l0 = self[72];
    l0:Disable();
    self:en_177();
    l0 = self[177];
    l0:Disable();
    self:en_108();
    l0 = self[108];
    l0:Disable();
end;

function export:f_231_Out()
    local l0;
    self = self._graph;
    self:en_128();
    l0 = self[128];
    l0:Condition(1);
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
    l0 = self[109];
    l0.pawns = self.AnimalToKill_0;
    l0:Enable();
end;

function export:f_90_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_4;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
end;

function export:f_90_Yes()
    local l0;
    self = self._graph;
    self:en_106();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_211_A_neq_B()
    local l0;
    self = self._graph;
    self:en_166();
    l0 = self[166];
    l0:Enable();
end;

function export:f_66_Out_0()
    local l0;
    self = self._graph;
    self:en_203();
    l0 = self[203];
    l0:Dead();
end;

function export:f_62_A_neq_B()
    local l0;
    self = self._graph;
    self:en_218();
    l0 = self[218];
    l0:Enable();
end;

function export:f_274_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[274];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_278_Out;
    l1:FromOasis();
end;

function export:f_154_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[154];
    l1 = self[119];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[54];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[119];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[54];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_154_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[154];
    l1 = self[119];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[54];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[119];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[54];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[119];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_154_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[154];
    l1 = self[119];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[54];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[119];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[54];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_154_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[154];
    l1 = self[119];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[54];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[119];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[54];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_154_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[154];
    l1 = self[119];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[54];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[119];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[54];
    l1.WeaponUsed = l0.emitterName;
    l1.WeaponAllowed = self.WeaponClass;
    l1:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_154_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[154];
    l1 = self[119];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[54];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[119];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[54];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_154_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[154];
    l1 = self[119];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[54];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[119];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[54];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_37_StateStart()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Dead",
        id = "160218",
    };
    l0._graph = self;
    l0.Out = self.f_155_Out;
    l0:FromOasis();
end;

function export:f_37_StateStop()
    local l0;
    self = self._graph;
    l0 = self[143];
    l0.objectiveId = self.RareMissionObjective;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
    self:en_37();
    l0 = self[37];
    l0:Disable();
end;

function export:f_135_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[135];
    l1 = self[18];
    l1.pickupId = l0.ObjectEntity;
    self.Ammo4 = l0.ObjectEntity;
    l0 = self[18];
    l0:Enable();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = self[71];
    self.Pickup6 = l0.ObjectEntity;
    l0 = self[198];
    l0:In(0);
end;

function export:f_128_Out()
    local l0;
    self = self._graph;
    self:en_202();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_127_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = self.AmmoArchetype;
    l0.target = self.Pickup6;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_149_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_167_No()
    local l0;
    self = self._graph;
    l0 = self[182];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "AmmoStart6";
    l0:In();
end;

function export:f_167_Yes()
    local l0;
    self = self._graph;
    l0 = self[138];
    l0:In(0);
end;

function export:f_311_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_311_Out_1()
    local l0;
    self = self._graph;
    l0 = self[117];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_2",
        id = "160215",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_252_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "machete";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_257_A_eq_B;
    l0.A_neq_B = self.f_257_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_106_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_5;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:In();
end;

function export:f_106_Yes()
    local l0;
    self = self._graph;
    self:en_113();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_116_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Ammo4 = l0.spawned;
    l0 = self[87];
    l0.entityId = self.Ammo4;
    l0:Enable();
end;

function export:f_19_A_eq_B()
    local l0;
    self = self._graph;
    self:en_92();
    l0 = self[92];
    l0:In();
end;

function export:f_19_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "rpg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_39_A_eq_B;
    l0.A_neq_B = self.f_39_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_302_Out()
    local l0;
    self = self._graph;
    self:en_306();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_168_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bPickedUpAmmo2;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_20_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_168_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_258_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_188_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = self.AmmoArchetype;
    l0.target = self.Pickup3;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_147_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_237_Out()
    local l0;
    self = self._graph;
    self:en_242();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    l0 = self[73];
    self.Pickup5 = l0.ObjectEntity;
    l0 = self[71];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "Pickup6";
    l0:In();
end;

function export:f_15_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_311_Out_0;
    l0.Out[1] = self.f_311_Out_1;
    l0:In();
end;

function export:f_15_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = self.f_124_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_124_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_197_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[197];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_216_Out;
    l1:FromOasis();
end;

function export:f_197_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_235_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0.Value = true;
    l0._graph = self;
    l0.Out = self.f_263_Out;
    l0:In();
end;

function export:f_276_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_137_No()
    local l0;
    self = self._graph;
    l0 = self[169];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "AmmoStart1";
    l0:In();
end;

function export:f_137_Yes()
    local l0;
    self = self._graph;
    self:en_84();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_269_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[269];
    l1 = self[267];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[266];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[267];
    l1.SourceType = l0.sourceType;
    l1 = self[266];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[267];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_269_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[269];
    l1 = self[267];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[266];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[267];
    l1.SourceType = l0.sourceType;
    l1 = self[266];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[267];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[266];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_269_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[269];
    l1 = self[267];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[266];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[267];
    l1.SourceType = l0.sourceType;
    l1 = self[266];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[267];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_269_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[269];
    l1 = self[267];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[266];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[267];
    l1.SourceType = l0.sourceType;
    l1 = self[266];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[267];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_269_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[269];
    l1 = self[267];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[266];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[267];
    l1.SourceType = l0.sourceType;
    l1 = self[266];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[267];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[267];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_269_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[269];
    l1 = self[267];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[266];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[267];
    l1.SourceType = l0.sourceType;
    l1 = self[266];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[267];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_269_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[269];
    l1 = self[267];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[266];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[267];
    l1.SourceType = l0.sourceType;
    l1 = self[266];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[267];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_138_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "rpg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_185_A_eq_B;
    l0.A_neq_B = self.f_185_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_SideQuest_Hunting_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_129_Stopped;
    l0:Stop();
end;

function export:f_226_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[226];
    self.Ammo3 = l0.ObjectEntity;
    l1 = self[13];
    l1.pickupId = l0.ObjectEntity;
    l1:Enable();
end;

function export:f_93_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[93];
    l1 = self[1];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[192];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[1];
    l1.SourceType = l0.sourceType;
    l1 = self[192];
    l1.SourceType = l0.sourceType;
    l1 = self[1];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[192];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_93_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[93];
    l1 = self[1];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[192];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[1];
    l1.SourceType = l0.sourceType;
    l1 = self[192];
    l1.SourceType = l0.sourceType;
    l1 = self[1];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[192];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[1];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_93_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[93];
    l1 = self[1];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[192];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[1];
    l1.SourceType = l0.sourceType;
    l1 = self[192];
    l1.SourceType = l0.sourceType;
    l1 = self[1];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[192];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_93_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[93];
    l1 = self[1];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[192];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[1];
    l1.SourceType = l0.sourceType;
    l1 = self[192];
    l1.SourceType = l0.sourceType;
    l1 = self[1];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[192];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_93_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[93];
    l1 = self[1];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[192];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[1];
    l1.SourceType = l0.sourceType;
    l1 = self[192];
    l1.SourceType = l0.sourceType;
    l1 = self[1];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[192];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[192];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_93_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[93];
    l1 = self[1];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[192];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[1];
    l1.SourceType = l0.sourceType;
    l1 = self[192];
    l1.SourceType = l0.sourceType;
    l1 = self[1];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[192];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_93_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[93];
    l1 = self[1];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[192];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[1];
    l1.SourceType = l0.sourceType;
    l1 = self[192];
    l1.SourceType = l0.sourceType;
    l1 = self[1];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[192];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_114_Drawn()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:ClearText();
end;

function export:f_114_Enabled()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:DisplayText();
end;

function export:f_59_Locked()
    local l0;
    self = self._graph;
    l0 = self[249];
    l0:Close();
end;

function export:f_202_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_321_Out_0;
    l0.Out[1] = self.f_321_Out_1;
    l0:In();
end;

function export:f_202_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 11;
    l0._graph = self;
    l0.A_lt_B = self.f_296_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_296_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_192_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[192];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_146_Out;
    l1:FromOasis();
end;

function export:f_192_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_185_A_eq_B()
    local l0;
    self = self._graph;
    self:en_159();
    l0 = Boxes[GetPathID("Domino/System/SetArchetype.lua")];
    l0:FromArchetype();
end;

function export:f_185_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "flamethrower";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_171_A_eq_B;
    l0.A_neq_B = self.f_171_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_209_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetArchetype.lua")];
    l0.str = nil;
    l0.archetype = "FC3_Interactive:Pickups/Ammo/Arrow_Bundle_Pickup";
    l0._graph = self;
    l0.Out = self.f_164_Out;
    l0:FromArchetype();
end;

function export:f_209_A_neq_B()
    local l0;
    self = self._graph;
    self:en_139();
    l0 = self[139];
    l0:Start();
end;

function export:f_67_Out()
    local l0;
    self = self._graph;
    l0 = self[67];
    self.Pickup3 = l0.ObjectEntity;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "pistol";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_120_A_eq_B;
    l0.A_neq_B = self.f_120_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_181_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[181];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_44_Out;
    l1:FromOasis();
end;

function export:f_181_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_79_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_236_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_5;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_246_Out;
    l0:In();
end;

function export:f_236_Yes()
    local l0;
    self = self._graph;
    self:en_239();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_212_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "lmg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_52_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "proximitymine";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_211_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "flamethrower";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_110_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "pistol";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_63_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "rpg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_194_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "bow";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_34_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "sniper";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_23_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "ied";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_207_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "assault";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_170_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "shotgun";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_100_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "smg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = self.f_62_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_268_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_72_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_139_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup4;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_85_Yes;
    l0.No = self.f_85_No;
    l0:Entity();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup2;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_168_Yes;
    l0.No = self.f_168_No;
    l0:Entity();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup6;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_68_Yes;
    l0.No = self.f_68_No;
    l0:Entity();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup3;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_150_Yes;
    l0.No = self.f_150_No;
    l0:Entity();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup5;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_33_Yes;
    l0.No = self.f_33_No;
    l0:Entity();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_225_Yes;
    l0.No = self.f_225_No;
    l0:Entity();
end;

function export:f_55_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_97_Out;
    l0:True();
end;

function export:f_203_StateStart()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Dead",
        id = "160218",
    };
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:FromOasis();
end;

function export:f_203_StateStop()
    local l0;
    self = self._graph;
    self:en_203();
    l0 = self[203];
    l0:Disable();
    l0 = self[179];
    l0.group = self.TargetsGroup;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_303_Out_0()
    local l0;
    self = self._graph;
    l0 = self[247];
    l0.group = self.TargetsGroup;
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_313_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_313_Out_1()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_4",
        id = "160213",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_317_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_317_Out_1()
    local l0;
    self = self._graph;
    l0 = self[299];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_8",
        id = "160209",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_4_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.IsRareAnimal;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_175_A_is_True;
    l0.A_is_False = self.f_175_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_34_A_neq_B()
    local l0;
    self = self._graph;
    self:en_72();
    l0 = self[72];
    l0:Enable();
end;

function export:f_243_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_11;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_238_Out;
    l0:In();
end;

function export:f_243_Yes()
    local l0;
    self = self._graph;
    l0 = self[303];
    l0:In(0);
end;

function export:f_81_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_161_Out;
    l0:True();
end;

function export:f_157_Added()
    local l0;
    self = self._graph;
    l0 = self[176];
    l0.entityId = self.AnimalToKill_0;
    l0:Enable();
end;

function export:f_119_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[119];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_86_Out;
    l1:FromOasis();
end;

function export:f_182_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[182];
    l1 = self[183];
    l1.pickupId = l0.ObjectEntity;
    self.Ammo6 = l0.ObjectEntity;
    l0 = self[183];
    l0:Enable();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[224];
    l0.textId = {
        section = "HUD",
        item = "SP_HuntingPOI_Craft_Syringe",
        id = "161823",
    };
    l0.priority = 3;
    l0.displaySlotId = 1;
    l0.queueable = true;
    l0.interruptible = true;
    l0:DisplayText();
end;

function export:f_264_Out()
    local l0;
    self = self._graph;
    self:en_273();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
    l0 = self[269];
    l0.pawns = self.AnimalToKill_8;
    l0:Enable();
end;

function export:f_140_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:True();
end;

function export:f_169_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[169];
    l1 = self[163];
    l1.pickupId = l0.ObjectEntity;
    self.Ammo1 = l0.ObjectEntity;
    l0 = self[163];
    l0:Enable();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = self[141];
    l0.pawns = self.AnimalToKill_6;
    l0:Enable();
    self:en_220();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_218_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_98_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[98];
    l1 = self[11];
    l1.pickupId = l0.ObjectEntity;
    self.Ammo5 = l0.ObjectEntity;
    l0 = self[11];
    l0:Enable();
end;

function export:f_20_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = self.AmmoArchetype;
    l0.target = self.Pickup2;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_3_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_315_Out_0;
    l0.Out[1] = self.f_315_Out_1;
    l0:In();
end;

function export:f_3_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 5;
    l0._graph = self;
    l0.A_lt_B = self.f_99_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_99_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo1 = l0.Target;
end;

function export:f_103_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo4 = l0.Target;
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0.pawns = self.AnimalToKill_3;
    l0:Enable();
    self:en_90();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_163_Enabled()
    local l0;
    self = self._graph;
    self:en_84();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_163_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0:True();
end;

function export:f_74_A_eq_B()
    local l0;
    self = self._graph;
    self:en_73();
    l0 = self[73];
    l0:In();
end;

function export:f_74_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "rpg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_178_A_eq_B;
    l0.A_neq_B = self.f_178_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_239_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_6;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_244_Out;
    l0:In();
end;

function export:f_239_Yes()
    local l0;
    self = self._graph;
    self:en_300();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_314_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_314_Out_1()
    local l0;
    self = self._graph;
    l0 = self[205];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_5",
        id = "160212",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_91_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_0;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:In();
end;

function export:f_91_Yes()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_112_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo3 = l0.Target;
    l0 = self[133];
    l0.pickupId = self.Ammo3;
    l0:Enable();
end;

function export:f_214_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[214];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_38_Out;
    l1:FromOasis();
end;

function export:f_214_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo3 = l0.Target;
end;

function export:f_171_A_eq_B()
    local l0;
    self = self._graph;
    self:en_159();
    l0 = Boxes[GetPathID("Domino/System/SetArchetype.lua")];
    l0:FromArchetype();
end;

function export:f_171_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "bow";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_209_A_eq_B;
    l0.A_neq_B = self.f_209_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_142_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_261_AutoDrawEnabled()
    self = self._graph;
    self:Out();
end;

function export:f_29_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalTokill_1;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_123_Out;
    l0:In();
end;

function export:f_29_Yes()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_84_No()
    local l0;
    self = self._graph;
    l0 = self[83];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "AmmoStart2";
    l0:In();
end;

function export:f_84_Yes()
    local l0;
    self = self._graph;
    self:en_126();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_305_Out()
    local l0;
    self = self._graph;
    self:en_243();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_308_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_8;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_301_Out;
    l0:In();
end;

function export:f_308_Yes()
    local l0;
    self = self._graph;
    self:en_304();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_304_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_9;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_302_Out;
    l0:In();
end;

function export:f_304_Yes()
    local l0;
    self = self._graph;
    self:en_306();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_52_A_neq_B()
    local l0;
    self = self._graph;
    self:en_215();
    l0 = self[215];
    l0:Enable();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_Loaded()
    local l0;
    self = self._graph;
    l0 = self[134];
    l0.PawnEntity = self.Ammo5;
    l0.Destination = self.Pickup5;
    l0:In();
end;

function export:f_189_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Ammo5 = l0.spawned;
    l0 = self[7];
    l0.entityId = self.Ammo5;
    l0:Enable();
end;

function export:f_28_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[28];
    l1 = self[186];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[132];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[186];
    l1.SourceType = l0.sourceType;
    l1 = self[132];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[186];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_28_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[28];
    l1 = self[186];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[132];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[186];
    l1.SourceType = l0.sourceType;
    l1 = self[132];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[186];
    l1.WeaponUsed = l0.emitterName;
    l1.WeaponAllowed = self.WeaponClass;
    l1:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_28_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[28];
    l1 = self[186];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[132];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[186];
    l1.SourceType = l0.sourceType;
    l1 = self[132];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[186];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_28_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[28];
    l1 = self[186];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[132];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[186];
    l1.SourceType = l0.sourceType;
    l1 = self[132];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[186];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_28_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[28];
    l1 = self[186];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[132];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[186];
    l1.SourceType = l0.sourceType;
    l1 = self[132];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[186];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[132];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_28_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[28];
    l1 = self[186];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[132];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[186];
    l1.SourceType = l0.sourceType;
    l1 = self[132];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[186];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_28_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[28];
    l1 = self[186];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[132];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[186];
    l1.SourceType = l0.sourceType;
    l1 = self[132];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[186];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_32_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_136_Out()
    local l0;
    self = self._graph;
    l0 = self[114];
    l0.classFilter = self.WeaponClass;
    l0:Enable();
end;

function export:f_296_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_320_Out_0;
    l0.Out[1] = self.f_320_Out_1;
    l0:In();
end;

function export:f_296_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 10;
    l0._graph = self;
    l0.A_lt_B = self.f_295_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_295_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_SideQuest_Hunting_LP";
    l0._graph = self;
    l0.Started = self.f_252_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_251_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_232_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_233_Out;
    l0:In();
end;

function export:f_241_Out()
    local l0;
    self = self._graph;
    self:en_236();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_159_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetArchetype.lua")];
    self.AmmoArchetype = l0.target;
    self:en_139();
    l0 = self[139];
    l0:Start();
end;

function export:f_312_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_312_Out_1()
    local l0;
    self = self._graph;
    l0 = self[213];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_3",
        id = "160214",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_122_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_95_Out;
    l0:False();
end;

function export:f_200_Stopped()
    self = self._graph;
    self:FailMission();
end;

function export:f_238_Out()
    local l0;
    self = self._graph;
    l0 = self[303];
    l0:In(0);
end;

function export:f_58_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_313_Out_0;
    l0.Out[1] = self.f_313_Out_1;
    l0:In();
end;

function export:f_58_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = self.f_193_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_193_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo2 = l0.Target;
    l0 = self[81];
    l0.pickupId = self.Ammo2;
    l0:Enable();
end;

function export:f_132_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[132];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_61_Out;
    l1:FromOasis();
end;

function export:f_132_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_287_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_11;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_286_Out;
    l0:In();
end;

function export:f_287_Yes()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0:In(0);
end;

function export:f_217_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = self.AmmoArchetype;
    l0.target = self.Pickup4;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_116_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_145_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = self.AmmoArchetype;
    l0.target = self.Pickup5;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_189_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_104_Out()
    local l0;
    self = self._graph;
    l0 = self[157];
    l0.Marker = self.RareMobileMarker_0;
    l0:In();
end;

function export:f_244_Out()
    local l0;
    self = self._graph;
    self:en_300();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_102_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_174_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[174];
    l1 = self[181];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[187];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[181];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[187];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_174_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[174];
    l1 = self[181];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[187];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[181];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[187];
    l1.WeaponUsed = l0.emitterName;
    l1.WeaponAllowed = self.WeaponClass;
    l1:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_174_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[174];
    l1 = self[181];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[187];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[181];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[187];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_174_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[174];
    l1 = self[181];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[187];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[181];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[187];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_174_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[174];
    l1 = self[181];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[187];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[181];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[187];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[181];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_174_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[174];
    l1 = self[181];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[187];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[181];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[187];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_174_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[174];
    l1 = self[181];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[187];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[181];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[187];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_284_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[284];
    l1 = self[281];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[282];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[281];
    l1.SourceType = l0.sourceType;
    l1 = self[282];
    l1.SourceType = l0.sourceType;
    l1 = self[281];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[282];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_284_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[284];
    l1 = self[281];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[282];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[281];
    l1.SourceType = l0.sourceType;
    l1 = self[282];
    l1.SourceType = l0.sourceType;
    l1 = self[281];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[282];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[281];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_284_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[284];
    l1 = self[281];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[282];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[281];
    l1.SourceType = l0.sourceType;
    l1 = self[282];
    l1.SourceType = l0.sourceType;
    l1 = self[281];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[282];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_284_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[284];
    l1 = self[281];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[282];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[281];
    l1.SourceType = l0.sourceType;
    l1 = self[282];
    l1.SourceType = l0.sourceType;
    l1 = self[281];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[282];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_284_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[284];
    l1 = self[281];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[282];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[281];
    l1.SourceType = l0.sourceType;
    l1 = self[282];
    l1.SourceType = l0.sourceType;
    l1 = self[281];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[282];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[282];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_284_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[284];
    l1 = self[281];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[282];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[281];
    l1.SourceType = l0.sourceType;
    l1 = self[282];
    l1.SourceType = l0.sourceType;
    l1 = self[281];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[282];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_284_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[284];
    l1 = self[281];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[282];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[281];
    l1.SourceType = l0.sourceType;
    l1 = self[282];
    l1.SourceType = l0.sourceType;
    l1 = self[281];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[282];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_143_Out()
    local l0;
    self = self._graph;
    l0 = self[41];
    l0.pawns = self.AnimalToKill_0;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalTokill_1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_206_Yes;
    l0.No = self.f_206_No;
    l0:Entity();
end;

function export:f_263_Out()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Send();
end;

function export:f_83_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[83];
    self.Ammo2 = l0.ObjectEntity;
    l1 = self[105];
    l1.pickupId = l0.ObjectEntity;
    l1:Enable();
end;

function export:f_191_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_3;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_64_Out;
    l0:In();
end;

function export:f_191_Yes()
    local l0;
    self = self._graph;
    self:en_90();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_281_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[281];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_285_Out;
    l1:FromOasis();
end;

function export:f_291_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[291];
    l1 = self[288];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[289];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[288];
    l1.SourceType = l0.sourceType;
    l1 = self[289];
    l1.SourceType = l0.sourceType;
    l1 = self[288];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[289];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_291_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[291];
    l1 = self[288];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[289];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[288];
    l1.SourceType = l0.sourceType;
    l1 = self[289];
    l1.SourceType = l0.sourceType;
    l1 = self[288];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[289];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[288];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_291_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[291];
    l1 = self[288];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[289];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[288];
    l1.SourceType = l0.sourceType;
    l1 = self[289];
    l1.SourceType = l0.sourceType;
    l1 = self[288];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[289];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_291_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[291];
    l1 = self[288];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[289];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[288];
    l1.SourceType = l0.sourceType;
    l1 = self[289];
    l1.SourceType = l0.sourceType;
    l1 = self[288];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[289];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_291_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[291];
    l1 = self[288];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[289];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[288];
    l1.SourceType = l0.sourceType;
    l1 = self[289];
    l1.SourceType = l0.sourceType;
    l1 = self[288];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[289];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[289];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_291_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[291];
    l1 = self[288];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[289];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[288];
    l1.SourceType = l0.sourceType;
    l1 = self[289];
    l1.SourceType = l0.sourceType;
    l1 = self[288];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[289];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_291_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[291];
    l1 = self[288];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[289];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[288];
    l1.SourceType = l0.sourceType;
    l1 = self[289];
    l1.SourceType = l0.sourceType;
    l1 = self[288];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[289];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_190_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[190];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_69_Out;
    l1:FromOasis();
end;

function export:f_316_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_316_Out_1()
    local l0;
    self = self._graph;
    l0 = self[222];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_7",
        id = "160210",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_227_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_39_A_eq_B()
    local l0;
    self = self._graph;
    self:en_92();
    l0 = self[92];
    l0:In();
end;

function export:f_39_A_neq_B()
    local l0;
    self = self._graph;
    l0 = self[198];
    l0:In(0);
end;

function export:f_288_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[288];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_292_Out;
    l1:FromOasis();
end;

function export:f_150_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bPickedUpAmmo3;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_188_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_150_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[31];
    self.Pickup2 = l0.ObjectEntity;
    l0 = self[67];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "Pickup3";
    l0:In();
end;

function export:f_47_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[47];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_204_Out;
    l1:FromOasis();
end;

function export:f_47_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[1];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_142_Out;
    l1:FromOasis();
end;

function export:f_273_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_9;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_272_Out;
    l0:In();
end;

function export:f_273_Yes()
    local l0;
    self = self._graph;
    self:en_280();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_259_AutoDrawEnabled()
    self = self._graph;
    self:Out();
end;

function export:f_266_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[266];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_270_Out;
    l1:FromOasis();
end;

function export:f_134_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:False();
end;

function export:f_129_Stopped()
    local l0;
    self = self._graph;
    l0 = self[89];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_301_Out()
    local l0;
    self = self._graph;
    self:en_304();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = self[174];
    l0.pawns = self.AnimalToKill_5;
    l0:Enable();
    self:en_113();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_307_Out()
    local l0;
    self = self._graph;
    self:en_308();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_146_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_289_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[289];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_290_Out;
    l1:FromOasis();
end;

function export:f_289_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_166_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    self:en_240();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_319_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_319_Out_1()
    local l0;
    self = self._graph;
    l0 = self[298];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_10",
        id = "172159",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_216_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_240_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_2;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_237_Out;
    l0:In();
end;

function export:f_240_Yes()
    local l0;
    self = self._graph;
    self:en_242();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_14_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[14];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_219_Out;
    l1:FromOasis();
end;

function export:f_161_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo2 = l0.Target;
end;

function export:f_198_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_137_Yes;
    l0.No = self.f_137_No;
    l0:Entity();
end;

function export:f_265_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_8;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_264_Out;
    l0:In();
end;

function export:f_265_Yes()
    local l0;
    self = self._graph;
    self:en_273();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_9_Loaded()
    local l0;
    self = self._graph;
    l0 = self[208];
    l0.PawnEntity = self.Ammo1;
    l0.Destination = self.Pickup1;
    l0:In();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = self[92];
    self.Pickup4 = l0.ObjectEntity;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "smg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_74_A_eq_B;
    l0.A_neq_B = self.f_74_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_68_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bPickedUpAmmo6;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_127_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_68_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_56_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[56];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_80_Out;
    l1:FromOasis();
end;

function export:f_56_Success()
    local l0;
    self = self._graph;
    l0 = self[104];
    l0.objectiveId = self.RareSkinObjective;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_262_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/InventoryWieldModifier.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.AutoDrawEnabled = self.f_261_AutoDrawEnabled;
    l0.AutoDrawDisabled = DummyFunction;
    l0.Error = DummyFunction;
    l0:EnableAutoDraw();
end;

function export:f_262_A_neq_B()
    self = self._graph;
    self:Out();
end;

function export:f_199_Loaded()
    local l0;
    self = self._graph;
    l0 = self[221];
    l0.PawnEntity = self.Ammo6;
    l0.Destination = self.Pickup6;
    l0:In();
end;

function export:f_255_AutoDrawDisabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/WieldInventory_v3.lua")];
    l0.category = nil;
    l0.class = nil;
    l0.name = nil;
    l0.pawn = nil;
    l0.force = nil;
    l0._graph = self;
    l0.Drew = DummyFunction;
    l0.Holstered = self.f_254_Holstered;
    l0.Error = DummyFunction;
    l0:LuaHolster();
end;

function export:f_121_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    self:en_106();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
    l0 = self[93];
    l0.pawns = self.AnimalToKill_4;
    l0:Enable();
end;

function export:f_193_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_312_Out_0;
    l0.Out[1] = self.f_312_Out_1;
    l0:In();
end;

function export:f_193_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 2;
    l0._graph = self;
    l0.A_lt_B = self.f_15_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_15_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_77_Out()
    local l0;
    self = self._graph;
    l0 = self[154];
    l0.pawns = self.AnimalToKill_7;
    l0:Enable();
    self:en_265();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_162_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[162];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_115_Out;
    l1:FromOasis();
end;

function export:f_162_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_286_Out()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0:In(0);
    l0 = self[291];
    l0.pawns = self.AnimalToKill_11;
    l0:Enable();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Ammo2 = l0.spawned;
    l0 = self[210];
    l0.entityId = self.Ammo2;
    l0:Enable();
end;

function export:f_183_Enabled()
    local l0;
    self = self._graph;
    l0 = self[138];
    l0:In(0);
end;

function export:f_183_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_165_Out;
    l0:True();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_215_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_204_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_250_OnCrafted()
    local l0;
    self = self._graph;
    l0 = self[249];
    l0:Close();
end;

function export:f_165_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo6 = l0.Target;
end;

function export:f_126_No()
    local l0;
    self = self._graph;
    l0 = self[226];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "AmmoStart3";
    l0:In();
end;

function export:f_126_Yes()
    local l0;
    self = self._graph;
    self:en_107();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_290_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_294_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_317_Out_0;
    l0.Out[1] = self.f_317_Out_1;
    l0:In();
end;

function export:f_294_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 7;
    l0._graph = self;
    l0.A_lt_B = self.f_96_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_96_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_295_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_319_Out_0;
    l0.Out[1] = self.f_319_Out_1;
    l0:In();
end;

function export:f_295_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 9;
    l0._graph = self;
    l0.A_lt_B = self.f_297_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_297_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_17_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[17];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_70_Out;
    l1:FromOasis();
end;

function export:f_23_A_neq_B()
    local l0;
    self = self._graph;
    self:en_177();
    l0 = self[177];
    l0:Enable();
end;

function export:f_310_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_310_Out_1()
    local l0;
    self = self._graph;
    l0 = self[118];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_1",
        id = "160216",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo2 = l0.Target;
end;

function export:f_113_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_6;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:In();
end;

function export:f_113_Yes()
    local l0;
    self = self._graph;
    self:en_220();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_107_No()
    local l0;
    self = self._graph;
    l0 = self[135];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "AmmoStart4";
    l0:In();
end;

function export:f_107_Yes()
    local l0;
    self = self._graph;
    self:en_94();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_270_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_306_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_10;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_305_Out;
    l0:In();
end;

function export:f_306_Yes()
    local l0;
    self = self._graph;
    self:en_243();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_152_A_neq_B()
    local l0;
    self = self._graph;
    l0 = self[158];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "Pickup1";
    l0:In();
end;

function export:f_170_A_neq_B()
    local l0;
    self = self._graph;
    self:en_79();
    l0 = self[79];
    l0:Enable();
end;

function export:f_278_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_206_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalTokill_1;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_245_Out;
    l0:In();
end;

function export:f_206_Yes()
    local l0;
    self = self._graph;
    self:en_196();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo4 = l0.Target;
    l0 = self[140];
    l0.pickupId = self.Ammo4;
    l0:Enable();
end;

function export:f_279_Out()
    local l0;
    self = self._graph;
    self:en_287();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
    l0 = self[284];
    l0.pawns = self.AnimalToKill_10;
    l0:Enable();
end;

function export:f_110_A_neq_B()
    local l0;
    self = self._graph;
    self:en_153();
    l0 = self[153];
    l0:Enable();
end;

function export:f_97_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo6 = l0.Target;
end;

function export:f_225_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bPickedUpAmmo1;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_111_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_225_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_318_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_318_Out_1()
    local l0;
    self = self._graph;
    l0 = self[293];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_9",
        id = "172158",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo1 = l0.Target;
end;

function export:f_208_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:False();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo5 = l0.Target;
end;

function export:f_105_Enabled()
    local l0;
    self = self._graph;
    self:en_126();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_105_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:True();
end;

function export:f_179_Enabled()
    local l0;
    self = self._graph;
    l0 = self[179];
    self.TargetsRemaining = l0.memberCount;
    self:en_202();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:In();
end;

function export:f_179_MemberAdded()
    local l0;
    self = self._graph;
    l0 = self[179];
    self.TargetsRemaining = l0.memberCount;
end;

function export:f_179_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[179];
    self.TargetsRemaining = l0.memberCount;
    self:en_128();
    l0 = self[128];
    l0:Condition(0);
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo1 = l0.Target;
    l0 = self[173];
    l0.pickupId = self.Ammo1;
    l0:Enable();
end;

function export:f_242_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_4;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_241_Out;
    l0:In();
end;

function export:f_242_Yes()
    local l0;
    self = self._graph;
    self:en_236();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_321_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_321_Out_1()
    local l0;
    self = self._graph;
    l0 = self[125];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_12",
        id = "172161",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_195_Out()
    local l0;
    self = self._graph;
    l0 = self[184];
    l0.pawns = self.AnimalToKill_2;
    l0:Enable();
    self:en_191();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_41_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[41];
    l1 = self[56];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[17];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[56];
    l1.SourceType = l0.sourceType;
    l1 = self[17];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[56];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_41_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[41];
    l1 = self[56];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[17];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[56];
    l1.SourceType = l0.sourceType;
    l1 = self[17];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[56];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[17];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_41_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[41];
    l1 = self[56];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[17];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[56];
    l1.SourceType = l0.sourceType;
    l1 = self[17];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[56];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_41_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[41];
    l1 = self[56];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[17];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[56];
    l1.SourceType = l0.sourceType;
    l1 = self[17];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[56];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_41_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[41];
    l1 = self[56];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[17];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[56];
    l1.SourceType = l0.sourceType;
    l1 = self[17];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[56];
    l1.WeaponUsed = l0.emitterName;
    l1.WeaponAllowed = self.WeaponClass;
    l1:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_41_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[41];
    l1 = self[56];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[17];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[56];
    l1.SourceType = l0.sourceType;
    l1 = self[17];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[56];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_41_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[41];
    l1 = self[56];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[17];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[56];
    l1.SourceType = l0.sourceType;
    l1 = self[17];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[56];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_246_Out()
    local l0;
    self = self._graph;
    self:en_239();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_70_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_315_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_315_Out_1()
    local l0;
    self = self._graph;
    l0 = self[148];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_6",
        id = "160211",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_124_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_310_Out_0;
    l0.Out[1] = self.f_310_Out_1;
    l0:In();
end;

function export:f_124_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_229_Out;
    l0:In();
    l0 = self[60];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_0",
        id = "160217",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_234_Out;
    l0:In();
end;

function export:f_267_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[267];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_268_Out;
    l1:FromOasis();
end;

function export:f_267_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_50_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo3 = l0.Target;
end;

function export:f_277_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[277];
    l1 = self[275];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[274];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[275];
    l1.SourceType = l0.sourceType;
    l1 = self[274];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[275];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_277_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[277];
    l1 = self[275];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[274];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[275];
    l1.SourceType = l0.sourceType;
    l1 = self[274];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[275];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[274];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_277_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[277];
    l1 = self[275];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[274];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[275];
    l1.SourceType = l0.sourceType;
    l1 = self[274];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[275];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_277_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[277];
    l1 = self[275];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[274];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[275];
    l1.SourceType = l0.sourceType;
    l1 = self[274];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[275];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_277_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[277];
    l1 = self[275];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[274];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[275];
    l1.SourceType = l0.sourceType;
    l1 = self[274];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[275];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[275];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_277_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[277];
    l1 = self[275];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[274];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[275];
    l1.SourceType = l0.sourceType;
    l1 = self[274];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[275];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_277_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[277];
    l1 = self[275];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[274];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[275];
    l1.SourceType = l0.sourceType;
    l1 = self[274];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[275];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_94_No()
    local l0;
    self = self._graph;
    l0 = self[98];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "AmmoStart5";
    l0:In();
end;

function export:f_94_Yes()
    local l0;
    self = self._graph;
    self:en_167();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_272_Out()
    local l0;
    self = self._graph;
    self:en_280();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
    l0 = self[277];
    l0.pawns = self.AnimalToKill_9;
    l0:Enable();
end;

function export:f_173_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:True();
end;

function export:f_133_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_50_Out;
    l0:True();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Ammo1 = l0.spawned;
    l0 = self[9];
    l0.entityId = self.Ammo1;
    l0:Enable();
end;

function export:f_283_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_219_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_257_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/InventoryWieldModifier.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.AutoDrawEnabled = DummyFunction;
    l0.AutoDrawDisabled = self.f_255_AutoDrawDisabled;
    l0.Error = DummyFunction;
    l0:DisableAutoDraw();
end;

function export:f_257_A_neq_B()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_194_A_neq_B()
    local l0;
    self = self._graph;
    self:en_108();
    l0 = self[108];
    l0:Enable();
end;

function export:f_153_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_207_A_neq_B()
    local l0;
    self = self._graph;
    self:en_102();
    l0 = self[102];
    l0:Enable();
end;

function export:f_80_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_180_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_SideQuest_Hunting_LP";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_78_Stopped;
    l0:Stop();
end;

function export:f_2_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_2;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_195_Out;
    l0:In();
end;

function export:f_2_Yes()
    local l0;
    self = self._graph;
    self:en_191();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_151_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo6 = l0.Target;
    l0 = self[55];
    l0.pickupId = self.Ammo6;
    l0:Enable();
end;

function export:f_141_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[141];
    l1 = self[47];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[25];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[47];
    l1.SourceType = l0.sourceType;
    l1 = self[25];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[47];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_141_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[141];
    l1 = self[47];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[25];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[47];
    l1.SourceType = l0.sourceType;
    l1 = self[25];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[47];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[25];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_141_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[141];
    l1 = self[47];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[25];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[47];
    l1.SourceType = l0.sourceType;
    l1 = self[25];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[47];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_141_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[141];
    l1 = self[47];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[25];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[47];
    l1.SourceType = l0.sourceType;
    l1 = self[25];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[47];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_141_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[141];
    l1 = self[47];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[25];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[47];
    l1.SourceType = l0.sourceType;
    l1 = self[25];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[47];
    l1.WeaponUsed = l0.emitterName;
    l1.WeaponAllowed = self.WeaponClass;
    l1:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_141_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[141];
    l1 = self[47];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[25];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[47];
    l1.SourceType = l0.sourceType;
    l1 = self[25];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[47];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_141_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[141];
    l1 = self[47];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[25];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[47];
    l1.SourceType = l0.sourceType;
    l1 = self[25];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[47];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_275_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[275];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_276_Out;
    l1:FromOasis();
end;

function export:f_275_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_282_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[282];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_283_Out;
    l1:FromOasis();
end;

function export:f_282_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_120_A_eq_B()
    local l0;
    self = self._graph;
    self:en_92();
    l0 = self[92];
    l0:In();
end;

function export:f_120_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "smg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_19_A_eq_B;
    l0.A_neq_B = self.f_19_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_196_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_3;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:In();
end;

function export:f_196_Yes()
    local l0;
    self = self._graph;
    self:en_240();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_297_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_318_Out_0;
    l0.Out[1] = self.f_318_Out_1;
    l0:In();
end;

function export:f_297_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 8;
    l0._graph = self;
    l0.A_lt_B = self.f_294_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_294_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_245_Out()
    local l0;
    self = self._graph;
    self:en_196();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_221_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_151_Out;
    l0:False();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo5 = l0.Target;
end;

function export:f_172_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:False();
end;

function export:f_164_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetArchetype.lua")];
    self.AmmoArchetype = l0.target;
    self:en_139();
    l0 = self[139];
    l0:Start();
end;

function export:f_111_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    l0.archetype = self.AmmoArchetype;
    l0.target = self.Pickup1;
    l0.xPos = nil;
    l0.yPos = nil;
    l0.zPos = nil;
    l0.pitch = nil;
    l0.roll = nil;
    l0.yaw = nil;
    l0._graph = self;
    l0.Out = self.f_51_Out;
    l0.Error = DummyFunction;
    l0:In();
end;

function export:f_177_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_176_OnLoot()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = self.RareMobileMarker_0;
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_180_Removed;
    l0:Remove();
end;

function export:f_89_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "machete";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_260_A_eq_B;
    l0.A_neq_B = self.f_260_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_249_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Start();
end;

function export:f_158_Out()
    local l0;
    self = self._graph;
    l0 = self[158];
    self.Pickup1 = l0.ObjectEntity;
    l0 = self[31];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "Pickup2";
    l0:In();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    self:en_167();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_11_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:True();
end;

function export:f_123_Out()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
    l0 = self[28];
    l0.pawns = self.AnimalTokill_1;
    l0:Enable();
end;

function export:f_96_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_316_Out_0;
    l0.Out[1] = self.f_316_Out_1;
    l0:In();
end;

function export:f_96_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 6;
    l0._graph = self;
    l0.A_lt_B = self.f_3_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_3_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_178_A_eq_B()
    local l0;
    self = self._graph;
    self:en_73();
    l0 = self[73];
    l0:In();
end;

function export:f_178_A_neq_B()
    local l0;
    self = self._graph;
    l0 = self[198];
    l0:In(0);
end;

function export:f_54_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[54];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_53_Out;
    l1:FromOasis();
end;

function export:f_54_Success()
    local l0;
    self = self._graph;
    self:en_231();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_256_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[256];
    l1 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l1.Group = l0.ObjectEntity;
    l1._graph = self;
    l1.Out = self.f_258_Out;
    l1:In();
end;

function export:f_285_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_300_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_7;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_307_Out;
    l0:In();
end;

function export:f_300_Yes()
    local l0;
    self = self._graph;
    self:en_308();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_210_Loaded()
    local l0;
    self = self._graph;
    l0 = self[172];
    l0.PawnEntity = self.Ammo2;
    l0.Destination = self.Pickup2;
    l0:In();
end;

function export:f_25_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[25];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_6_Out;
    l1:FromOasis();
end;

function export:f_320_Out_0()
    local l0;
    self = self._graph;
    self:en_309();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_320_Out_1()
    local l0;
    self = self._graph;
    l0 = self[271];
    l0.objectiveId = {
        section = "Hunting Remaining",
        item = "SQA_Remaining_11",
        id = "172160",
    };
    l0.PlayComplete = false;
    l0.StayOnScreen = true;
    l0:SetMissionObjective();
end;

function export:f_5_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_40_Out;
    l0:True();
end;

function export:f_160_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[160];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_144_Out;
    l1:FromOasis();
end;

function export:f_156_Loaded()
    local l0;
    self = self._graph;
    l0 = self[130];
    l0.PawnEntity = self.Ammo3;
    l0.Destination = self.Pickup3;
    l0:In();
end;

function export:f_78_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponClass;
    l0.B = "machete";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_262_A_eq_B;
    l0.A_neq_B = self.f_262_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_99_A_ge_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_314_Out_0;
    l0.Out[1] = self.f_314_Out_1;
    l0:In();
end;

function export:f_99_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 4;
    l0._graph = self;
    l0.A_lt_B = self.f_58_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_58_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_101_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[101];
    l1 = self[197];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[14];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[197];
    l1.SourceType = l0.sourceType;
    l1 = self[14];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[197];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_101_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[101];
    l1 = self[197];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[14];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[197];
    l1.SourceType = l0.sourceType;
    l1 = self[14];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[197];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[14];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_101_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[101];
    l1 = self[197];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[14];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[197];
    l1.SourceType = l0.sourceType;
    l1 = self[14];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[197];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_101_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[101];
    l1 = self[197];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[14];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[197];
    l1.SourceType = l0.sourceType;
    l1 = self[14];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[197];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_101_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[101];
    l1 = self[197];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[14];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[197];
    l1.SourceType = l0.sourceType;
    l1 = self[14];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[197];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[197];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_101_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[101];
    l1 = self[197];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[14];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[197];
    l1.SourceType = l0.sourceType;
    l1 = self[14];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[197];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_101_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[101];
    l1 = self[197];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[14];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[197];
    l1.SourceType = l0.sourceType;
    l1 = self[14];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[197];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_63_A_neq_B()
    local l0;
    self = self._graph;
    self:en_121();
    l0 = self[121];
    l0:Enable();
end;

function export:f_85_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bPickedUpAmmo4;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_217_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_85_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_155_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:FailMission();
end;

function export:f_260_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/InventoryWieldModifier.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.AutoDrawEnabled = self.f_259_AutoDrawEnabled;
    l0.AutoDrawDisabled = DummyFunction;
    l0.Error = DummyFunction;
    l0:EnableAutoDraw();
end;

function export:f_260_A_neq_B()
    self = self._graph;
    self:Out();
end;

function export:f_130_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_112_Out;
    l0:False();
end;

function export:f_247_MemberRemoved()
    local l0;
    self = self._graph;
    l0 = self[248];
    l0.textId = {
        section = "Common Specific Animal Quest",
        item = "SQA_Rare_WrongAnimal",
        id = "166476",
    };
    l0.priority = 3;
    l0.displaySlotId = 1;
    l0.displayTimer = 5;
    l0:DisplayText();
end;

function export:f_33_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.bPickedUpAmmo5;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_145_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_33_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo5 = l0.Target;
    l0 = self[5];
    l0.pickupId = self.Ammo5;
    l0:Enable();
end;

function export:f_13_Enabled()
    local l0;
    self = self._graph;
    self:en_107();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_13_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_65_Out;
    l0:True();
end;

function export:f_292_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_280_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_10;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_279_Out;
    l0:In();
end;

function export:f_280_Yes()
    local l0;
    self = self._graph;
    self:en_287();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_186_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[186];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_227_Out;
    l1:FromOasis();
end;

function export:f_100_A_neq_B()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = self[32];
    l0:Enable();
end;

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.bPickedUpAmmo4 = l0.Target;
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    self:en_94();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_18_PickedUp()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_103_Out;
    l0:True();
end;

function export:f_187_Fail()
    local l0, l1;
    self = self._graph;
    l0 = self[187];
    l1 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l1.Oasis = l0.FailReason;
    l1._graph = self;
    l1.Out = self.f_57_Out;
    l1:FromOasis();
end;

function export:f_184_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[184];
    l1 = self[190];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[162];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[190];
    l1.SourceType = l0.sourceType;
    l1 = self[162];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[190];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_184_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[184];
    l1 = self[190];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[162];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[190];
    l1.SourceType = l0.sourceType;
    l1 = self[162];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[190];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[190];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_184_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[184];
    l1 = self[190];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[162];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[190];
    l1.SourceType = l0.sourceType;
    l1 = self[162];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[190];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_184_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[184];
    l1 = self[190];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[162];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[190];
    l1.SourceType = l0.sourceType;
    l1 = self[162];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[190];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_184_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[184];
    l1 = self[190];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[162];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[190];
    l1.SourceType = l0.sourceType;
    l1 = self[162];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[190];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[162];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_184_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[184];
    l1 = self[190];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[162];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[190];
    l1.SourceType = l0.sourceType;
    l1 = self[162];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[190];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_184_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[184];
    l1 = self[190];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[162];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[190];
    l1.SourceType = l0.sourceType;
    l1 = self[162];
    l1.WeaponUsed = l0.emitterName;
    l1 = self[190];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_108_Drawn()
    local l0;
    self = self._graph;
    self:en_136();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_115_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_149_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Ammo6 = l0.spawned;
    l0 = self[199];
    l0.entityId = self.Ammo6;
    l0:Enable();
end;

function export:f_220_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroup.lua")];
    l0.Entity = self.AnimalToKill_7;
    l0.Group = self.TargetsGroup;
    l0._graph = self;
    l0.Out = self.f_77_Out;
    l0:In();
end;

function export:f_220_Yes()
    local l0;
    self = self._graph;
    self:en_265();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:Entity();
end;

function export:f_87_Loaded()
    local l0;
    self = self._graph;
    l0 = self[122];
    l0.PawnEntity = self.Ammo4;
    l0.Destination = self.Pickup4;
    l0:In();
end;

function export:f_147_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Spawner_v2.lua")];
    self.Ammo3 = l0.spawned;
    l0 = self[156];
    l0.entityId = self.Ammo3;
    l0:Enable();
end;

function export:f_254_Holstered()
    local l0;
    self = self._graph;
    l0 = self[256];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "Weapon";
    l0:In();
end;

function export:f_175_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_0;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_91_Yes;
    l0.No = self.f_91_No;
    l0:Entity();
end;

function export:f_175_A_is_True()
    local l0;
    self = self._graph;
    self:en_37();
    l0 = self[37];
    l0:Dead();
end;

function export:f_144_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:en_253();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_109_Critical()
    local l0, l1;
    self = self._graph;
    l0 = self[109];
    l1 = self[214];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[160];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[214];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[160];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_109_Damaged()
    local l0, l1;
    self = self._graph;
    l0 = self[109];
    l1 = self[214];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[160];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[214];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[160];
    l1.WeaponUsed = l0.emitterName;
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = self[160];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
end;

function export:f_109_Head()
    local l0, l1;
    self = self._graph;
    l0 = self[109];
    l1 = self[214];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[160];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[214];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[160];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_109_Healed()
    local l0, l1;
    self = self._graph;
    l0 = self[109];
    l1 = self[214];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[160];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[214];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[160];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_109_Killed()
    local l0, l1;
    self = self._graph;
    l0 = self[109];
    l1 = self[214];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[160];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[214];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[160];
    l1.WeaponUsed = l0.emitterName;
    l0 = self[214];
    l0.WeaponAllowed = self.WeaponClass;
    l0:In();
    self:en_230();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_109_Leg()
    local l0, l1;
    self = self._graph;
    l0 = self[109];
    l1 = self[214];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[160];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[214];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[160];
    l1.WeaponUsed = l0.emitterName;
end;

function export:f_109_Torso()
    local l0, l1;
    self = self._graph;
    l0 = self[109];
    l1 = self[214];
    l1.WeaponInstigator = l0.instigator;
    l1 = self[160];
    l1.WeaponInstigator = l0.instigator;
    l1.SourceType = l0.sourceType;
    l1 = self[214];
    l1.SourceType = l0.sourceType;
    l1.WeaponUsed = l0.emitterName;
    l1 = self[160];
    l1.WeaponUsed = l0.emitterName;
end;

function export:en_309()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_309_Out;
end;

function export:en_253()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_253_Out;
end;

function export:en_230()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_230_Out;
end;

function export:en_231()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_231_Out;
end;

function export:en_90()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_4;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_90_Yes;
    l0.No = self.f_90_No;
end;

function export:en_37()
    local l0;
    l0 = self[37];
    l0.group = self.AnimalToKill_0;
end;

function export:en_128()
    local l0;
    l0 = self[128];
    l0.AutoReset = true;
end;

function export:en_167()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup6;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_167_Yes;
    l0.No = self.f_167_No;
end;

function export:en_106()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_5;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_106_Yes;
    l0.No = self.f_106_No;
end;

function export:en_73()
    local l0;
    l0 = self[73];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "Pickup5";
end;

function export:en_202()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.TargetsRemaining;
    l0.B = 12;
    l0._graph = self;
    l0.A_lt_B = self.f_202_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = DummyFunction;
    l0.A_ge_B = self.f_202_A_ge_B;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
end;

function export:en_79()
    local l0;
    l0 = self[79];
    l0.classFilter = "assault";
    l0.autoDisable = false;
end;

function export:en_236()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_5;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_236_Yes;
    l0.No = self.f_236_No;
end;

function export:en_72()
    local l0;
    l0 = self[72];
    l0.classFilter = "bow";
    l0.autoDisable = false;
end;

function export:en_139()
    local l0;
    l0 = self[139];
    l0.seconds = 60;
    l0.loop = true;
    l0.nbLoop = 1000;
end;

function export:en_203()
    local l0;
    l0 = self[203];
    l0.group = self.TargetsGroup;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.Marker = self.AreaObjectiveMarker;
end;

function export:en_243()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_11;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_243_Yes;
    l0.No = self.f_243_No;
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.seconds = 60;
    l0.loop = true;
end;

function export:en_218()
    local l0;
    l0 = self[218];
    l0.classFilter = "smg";
    l0.autoDisable = false;
end;

function export:en_239()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_6;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_239_Yes;
    l0.No = self.f_239_No;
end;

function export:en_29()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalTokill_1;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_29_Yes;
    l0.No = self.f_29_No;
end;

function export:en_84()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup2;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_84_Yes;
    l0.No = self.f_84_No;
end;

function export:en_308()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_8;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_308_Yes;
    l0.No = self.f_308_No;
end;

function export:en_304()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_9;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_304_Yes;
    l0.No = self.f_304_No;
end;

function export:en_32()
    local l0;
    l0 = self[32];
    l0.classFilter = "shotgun";
    l0.autoDisable = false;
end;

function export:en_136()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_136_Out;
end;

function export:en_159()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetArchetype.lua")];
    l0.str = nil;
    l0.archetype = "FC3_Interactive:Pickups/Ammo/Small_Explosive_Pickup";
    l0._graph = self;
    l0.Out = self.f_159_Out;
end;

function export:en_287()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_11;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_287_Yes;
    l0.No = self.f_287_No;
end;

function export:en_102()
    local l0;
    l0 = self[102];
    l0.classFilter = "ied";
    l0.autoDisable = false;
end;

function export:en_191()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_3;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_191_Yes;
    l0.No = self.f_191_No;
end;

function export:en_27()
    local l0;
    l0 = self[27];
    l0.textId = {
        section = "HUD",
        item = "SP_WrongWeapon",
        id = "161824",
    };
    l0.priority = 3;
    l0.displaySlotId = 1;
    l0.displayTimer = 500;
end;

function export:en_273()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_9;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_273_Yes;
    l0.No = self.f_273_No;
end;

function export:en_166()
    local l0;
    l0 = self[166];
    l0.classFilter = "proximitymine";
    l0.autoDisable = false;
end;

function export:en_240()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_2;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_240_Yes;
    l0.No = self.f_240_No;
end;

function export:en_265()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_8;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_265_Yes;
    l0.No = self.f_265_No;
end;

function export:en_92()
    local l0;
    l0 = self[92];
    l0.PrefabEntity = self.WeaponPickup;
    l0.ObjectName = "Pickup4";
end;

function export:en_121()
    local l0;
    l0 = self[121];
    l0.classFilter = "pistol";
    l0.autoDisable = false;
end;

function export:en_215()
    local l0;
    l0 = self[215];
    l0.classFilter = "lmg";
    l0.autoDisable = false;
end;

function export:en_126()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup3;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_126_Yes;
    l0.No = self.f_126_No;
end;

function export:en_113()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_6;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_113_Yes;
    l0.No = self.f_113_No;
end;

function export:en_107()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup4;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_107_Yes;
    l0.No = self.f_107_No;
end;

function export:en_306()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_10;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_306_Yes;
    l0.No = self.f_306_No;
end;

function export:en_242()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_4;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_242_Yes;
    l0.No = self.f_242_No;
end;

function export:en_94()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.Pickup5;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_94_Yes;
    l0.No = self.f_94_No;
end;

function export:en_153()
    local l0;
    l0 = self[153];
    l0.classFilter = "flamethrower";
    l0.autoDisable = false;
end;

function export:en_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_2;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_2_Yes;
    l0.No = self.f_2_No;
end;

function export:en_196()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_3;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_196_Yes;
    l0.No = self.f_196_No;
end;

function export:en_177()
    local l0;
    l0 = self[177];
    l0.classFilter = "sniper";
    l0.autoDisable = false;
end;

function export:en_300()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_7;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_300_Yes;
    l0.No = self.f_300_No;
end;

function export:en_280()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_10;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_280_Yes;
    l0.No = self.f_280_No;
end;

function export:en_108()
    local l0;
    l0 = self[108];
    l0.classFilter = "rpg";
    l0.autoDisable = false;
end;

function export:en_220()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = nil;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = self.AnimalToKill_7;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_220_Yes;
    l0.No = self.f_220_No;
end;

-- Empty out anchor definitions
function export:FailMission()
    
end;
function export:Out()
    
end;
_compilerVersion = 24;
