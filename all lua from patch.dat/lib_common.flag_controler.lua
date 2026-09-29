-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: Flag_controler
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SafeHouse" Type="Nomad|entity{}" />
    <DataIn Name="SpawnPoint" Type="Nomad|entity{}" />
    <DataIn Name="Animals" Type="Nomad|group" />
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
        cbox:RegisterBox("Domino/System/Player/ActionMapModifier.lua");
        cbox:RegisterBox("Domino/System/AI/Scripted/AIScriptControlListener_v3.lua");
        cbox:RegisterBox("Domino/System/AI/Scripted/AIScriptControlModifier.lua");
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/UI/DisplaySuccessScreenUI.lua");
        cbox:RegisterBox("Domino/System/MaterialOverride.lua");
        cbox:RegisterBox("Domino/System/GadgetWieldListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        cbox:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua");
        cbox:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cbox:RegisterBox("Domino/System/GetSafeHouseState.lua");
        cbox:RegisterBox("Domino/System/Player/GivePlayerOutpostXPBonus.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
        cbox:RegisterBox("Domino/System/IsPawnAlive.lua");
        cbox:RegisterBox("Domino/System/Player/IsPlayerInQTE.lua");
        cbox:RegisterBox("Domino/System/ListReader.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSkipListener.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PawnGadgetCheck.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/Narrative/PlaySequence_v7.lua");
        cbox:RegisterBox("Domino/System/PlaySimpleAnimation.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SafeHouseListener.lua");
        cbox:RegisterBox("Domino/System/SafeHouseModifier_v2.lua");
        cbox:RegisterBox("Domino/System/SetBoolean.lua");
        cbox:RegisterBox("Domino/System/SetInteger.lua");
        cbox:RegisterBox("Domino/System/Player/SetHudMode.lua");
        cbox:RegisterBox("Domino/System/SetOasis.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cbox:RegisterBox("Domino/System/Narrative/StopMetaSequence_v3.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/WeaponVisibilityModifier.lua");
        cbox:RegisterBox("Domino/System/Player/WieldInventory_v3.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0019bf20]], "CSoundResource");
        cbox:LoadResource([[graphics\characters\_common\animations\flag_wave.mab]], "CAnimationResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.FlagCinematicSceneEntity = nil;
    self.Flag = nil;
    self.MetaSequenceId = 0;
    self.eplayer = nil;
    self.OpenedCage = false;
    self.AnimalList = {
    };
    self.UnlockCondition = {
        section = "",
        item = "",
        id = "",
    };
    self.AdditionalXP = 0;
    self.Animal_outpost = nil;
    self.Needsystem = false;
    self[6] = cbox:CreateBox("Domino/System/SafeHouseListener.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = self.f_6_Enabled;
    l0.Disabled = DummyFunction;
    l0.Unlocked = self.f_6_Unlocked;
    self[24] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSkipListener.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.SignalReceived = self.f_24_SignalReceived;
    self[60] = cbox:CreateBox("Domino/System/AI/Scripted/AIScriptControlListener_v3.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.AllAcquired = DummyFunction;
    l0.AllReleased = DummyFunction;
    l0.PawnAcquired = self.f_60_PawnAcquired;
    l0.PawnReleased = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[38] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Out = self.f_38_Out;
    self[29] = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0.EndOfList = self.f_29_EndOfList;
    self[40] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Out = self.f_40_Out;
    self[41] = cbox:CreateBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
    l0 = self[41];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_41_True;
    l0.False = self.f_41_False;
    self[5] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_5_Received;
    self[77] = cbox:CreateBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_77_True;
    l0.False = DummyFunction;
    self[78] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[78];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_78_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    self[75] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[75];
    l0._graph = self;
    l0.Out = self.f_75_Out;
    self[57] = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v7.lua");
    l0 = self[57];
    l0._graph = self;
    l0._DynamicAnchors = {
        SPOut = {
            "StartFadeToBlack",
        },
    };
    l0.Started = self.f_57_Started;
    l0.Paused = DummyFunction;
    l0.Finished = self.f_57_Finished;
    l0.Stopped = self.f_57_Stopped;
    l0.Skipped = self.f_57_Skipped;
    l0.SPOut["StartFadeToBlack"] = self.f_57_SPOut__StartFadeToBlack_;
    self[10] = cbox:CreateBox("Domino/System/PlaySimpleAnimation.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Played = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.AnimFinished = DummyFunction;
    self[82] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[82];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_82_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_12_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[48] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[48];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_48_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    self[51] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[51];
    l0._graph = self;
    l0.Enabled = self.f_51_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_51_Received;
    self[25] = cbox:CreateBox("Domino/System/WeaponVisibilityModifier.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    self[34] = cbox:CreateBox("Domino/System/GadgetWieldListener.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Enabled = self.f_34_Enabled;
    l0.Disabled = DummyFunction;
    l0.Drawn = DummyFunction;
    l0.Holstered = self.f_34_Holstered;
    self[50] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Enabled = self.f_50_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_50_Received;
    self[15] = cbox:CreateBox("Domino/System/WeaponVisibilityModifier.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    self[28] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_28_Received;
    self[52] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Enabled = self.f_52_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_52_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[82];
    l0.seconds = 5;
    l0:Start();
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0.Group = self.Animals;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:In();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_6_Enabled()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.message = "CageOpened";
    l0:Enable();
end;

function export:f_6_Unlocked()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IsPlayerInQTE.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_31_True;
    l0.False = self.f_31_False;
    l0:In();
end;

function export:f_24_SignalReceived()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = self[57];
    l0:Skip();
end;

function export:f_21_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = false;
    l0._graph = self;
    l0.Out = self.f_22_Out;
    l0:Enable();
end;

function export:f_30_Out()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l1 = self[36];
    l1.Group = l0.LocalPlayer;
    l1.SoundId = "0x0019bf20";
    l1:ForcePlay_Priority();
end;

function export:f_60_PawnAcquired()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_61_Out;
    l0:True();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Freezebrain";
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

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:Disable();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = self[38];
    self.FlagCinematicSceneEntity = l0.ObjectEntity;
    l0 = self[41];
    l0.entityId = self.SpawnPoint;
    l0:In();
end;

function export:f_29_EndOfList()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_29_Out()
    local l0, l1;
    self = self._graph;
    l0 = self[29];
    l1 = Boxes[GetPathID("Domino/System/IsPawnAlive.lua")];
    l1.Pawn = l0.Data;
    l1._graph = self;
    l1.Out = DummyFunction;
    l1.True = self.f_11_True;
    l1.False = self.f_11_False;
    l1:In();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    self.AdditionalXP = l0.Target;
end;

function export:f_74_Out()
    self = self._graph;
    self:Out();
end;

function export:f_40_Out()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.eplayer = l0.LocalPlayer;
    l0 = self[25];
    l0.pawn = self.eplayer;
    l0:Invisible();
end;

function export:f_67_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerOutpostXPBonus.lua")];
    l0.XP = self.AdditionalXP;
    l0._graph = self;
    l0.BonusGiven = DummyFunction;
    l0.NoBonus = DummyFunction;
    l0:Undetected();
end;

function export:f_67_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.AdditionalXP;
    l0.B = 50;
    l0._graph = self;
    l0.A_lt_B = self.f_68_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_68_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_41_False()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_41_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_5_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    l0.Bool = nil;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:True();
end;

function export:f_77_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetSafeHouseState.lua")];
    l0.safeHouseId = self.SafeHouse;
    l0._graph = self;
    l0.Locked = DummyFunction;
    l0.Unlocked = self.f_2_Unlocked;
    l0:In();
end;

function export:f_78_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:NormalMode();
end;

function export:f_73_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.AdditionalXP;
    l0.B = 1000;
    l0._graph = self;
    l0.A_lt_B = self.f_67_A_lt_B;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_67_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_73_Out_1()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0:In(0);
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    self.Flag = l0.ObjectEntity;
    l0 = Boxes[GetPathID("Domino/System/MaterialOverride.lua")];
    l0.target = self.Flag;
    l0.UseLightMaterial = true;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = self[75];
    self.Flag = l0.ObjectEntity;
    l0 = Boxes[GetPathID("Domino/System/MaterialOverride.lua")];
    l0.target = self.Flag;
    l0.UseLightMaterial = true;
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicleType_9 = l0.vehicleType;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = "Wingsuit Paraglider";
    l0.B = self._sld_vehicleType_9;
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = DummyFunction;
    l0.A_neq_B = DummyFunction;
    l0.A_contains_B = self.f_18_A_contains_B;
    l0.A_ncontains_B = self.f_18_A_ncontains_B;
    l0:In();
end;

function export:f_13_Enabled()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_19_DeactivatedMB()
    self = self._graph;
    self:Out();
end;

function export:f_11_False()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = self[29];
    l0:Read();
end;

function export:f_11_True()
    local l0;
    self = self._graph;
    self:en_43();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Needsystem;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = DummyFunction;
    l0.A_is_False = self.f_62_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_62_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/Scripted/AIScriptControlModifier.lua")];
    l0.targets = self.Animals;
    l0._graph = self;
    l0.TryAcquireOut = self.f_59_TryAcquireOut;
    l0.TryReleaseOut = DummyFunction;
    l0.Error = DummyFunction;
    l0:TryAcquire();
end;

function export:f_2_Unlocked()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0.ObjectName = "Flag";
    l0:In();
end;

function export:f_68_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerOutpostXPBonus.lua")];
    l0.XP = self.AdditionalXP;
    l0._graph = self;
    l0.BonusGiven = DummyFunction;
    l0.NoBonus = DummyFunction;
    l0:NoAlarmsTriggered();
end;

function export:f_68_A_lt_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.AdditionalXP;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_70_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = DummyFunction;
    l0:In();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplaySuccessScreenUI.lua")];
    l0.locId = self.UnlockCondition;
    l0._graph = self;
    l0.Displayed = self.f_49_Displayed;
    l0:Display();
    l0 = self[10];
    l0.target = self.Flag;
    l0.animation = [[graphics\characters\_common\animations\flag_wave.mab]];
    l0.loopAnim = true;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.Needsystem;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_54_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_65_TryReleaseOut()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "UnFreezebrain";
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

function export:f_57_Finished()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0:Disable();
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
end;

function export:f_57_Skipped()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
end;

function export:f_57_SPOut__StartFadeToBlack_()
    local l0;
    self = self._graph;
    self:en_58();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Enable();
end;

function export:f_57_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/SetHudMode.lua")];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:CinematicMode();
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Disable();
    l0 = self[1];
    l0.ObjectName = "Flag";
    l0:In();
    l0 = self[24];
    l0:Enable();
end;

function export:f_57_Stopped()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0:Stop();
end;

function export:f_82_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.message = "OutpostUndetected";
    l0:Enable();
    l0 = self[77];
    l0.entityId = self.SafeHouse;
    l0:In();
end;

function export:f_12_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_57();
    l0 = self[57];
    l0:Play();
end;

function export:f_48_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "JAS_100_OUTPOST_UNLOCKED";
    l0._graph = self;
    l0.Out = self.f_72_Out;
    l0:In();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    self.MetaSequenceId = l0.ID;
    l0 = self[12];
    l0.seconds = 0.5;
    l0:Start();
    self:en_37();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Enable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    self.AnimalList = l0.Pawns;
    self:en_29();
    l0 = self[29];
    l0:Read();
end;

function export:f_54_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/Scripted/AIScriptControlModifier.lua")];
    l0.targets = self.Animals;
    l0._graph = self;
    l0.TryAcquireOut = DummyFunction;
    l0.TryReleaseOut = self.f_65_TryReleaseOut;
    l0.Error = DummyFunction;
    l0:TryRelease();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SafeHouseModifier_v2.lua")];
    l0.SafeHouseEntity = self.SafeHouse;
    l0.HideUIInfo = nil;
    l0._graph = self;
    l0.Unlocked = DummyFunction;
    l0.Locked = DummyFunction;
    l0.Freezed = DummyFunction;
    l0.Unfreezed = DummyFunction;
    l0.DeactivateMBOnUnlockDone = DummyFunction;
    l0.NoDeactivateMBOnUnlockDone = DummyFunction;
    l0.DeactivatedMB = self.f_19_DeactivatedMB;
    l0:DeactivateMB();
end;

function export:f_51_Enabled()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.safehouseId = self.SafeHouse;
    l0:Enable();
end;

function export:f_51_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Outposts",
        item = "OUTPOSTS_OUTPOSTUNLOCKED",
        id = "111340",
    };
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0:FromOasis();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact";
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:Pop();
end;

function export:f_49_Displayed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_73_Out_0;
    l0.Out[1] = self.f_73_Out_1;
    l0:In();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[38];
    l0.ObjectName = "FlagCinematicSceneEntity";
    l0:In();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.OpenedCage = l0.Target;
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = self.eplayer;
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_21_Disabled;
    l0:SetDisabled();
end;

function export:f_56_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    self.AdditionalXP = l0.Target;
end;

function export:f_35_InHands()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.categoryFilter = "binoculars";
    l0:Enable();
end;

function export:f_35_InInventory()
    local l0;
    self = self._graph;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_35_NotFound()
    local l0;
    self = self._graph;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_39_A_is_False()
    local l0;
    self = self._graph;
    self:en_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_39_A_is_True()
    local l0;
    self = self._graph;
    self:en_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.UnlockCondition = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 50;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:FromInteger();
end;

function export:f_34_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/WieldInventory_v3.lua")];
    l0.category = "binoculars";
    l0.class = nil;
    l0.name = nil;
    l0.pawn = nil;
    l0.force = true;
    l0._graph = self;
    l0.Drew = DummyFunction;
    l0.Holstered = DummyFunction;
    l0.Error = DummyFunction;
    l0:LuaHolster();
end;

function export:f_34_Holstered()
    local l0;
    self = self._graph;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_50_Enabled()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.message = "OutpostNoAlarmsTriggered";
    l0:Enable();
end;

function export:f_50_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Outposts",
        item = "UNDETECTED TAKEOVER",
        id = "154986",
    };
    l0._graph = self;
    l0.Out = self.f_55_Out;
    l0:FromOasis();
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    self.AdditionalXP = l0.Target;
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.pawn = self.eplayer;
    l0:Visible();
    self:en_58();
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0:Disable();
end;

function export:f_59_TryAcquireOut()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0.targets = self.Animals;
    l0:Enable();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.UnlockCondition = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 0;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_56_Out;
    l0:FromInteger();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = self.eplayer;
    l0._graph = self;
    l0.Enabled = self.f_13_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean.lua")];
    self.Needsystem = l0.Target;
end;

function export:f_28_Received()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0:Push();
    self:en_42();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck.lua")];
    l0.pawn = nil;
    l0.categoryName = "binoculars";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.InHands = self.f_35_InHands;
    l0.InInventory = self.f_35_InInventory;
    l0.NotFound = self.f_35_NotFound;
    l0:In();
end;

function export:f_55_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.UnlockCondition = l0.Target;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = 1000;
    l0.String = nil;
    l0.Float = nil;
    l0.UseFloor = nil;
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:FromInteger();
end;

function export:f_52_Enabled()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0.message = "Outpostclearwithreinforcement";
    l0:Enable();
end;

function export:f_52_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Outposts",
        item = "NOALARMBONUS",
        id = "154987",
    };
    l0._graph = self;
    l0.Out = self.f_45_Out;
    l0:FromOasis();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_70_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GivePlayerOutpostXPBonus.lua")];
    l0.XP = self.AdditionalXP;
    l0._graph = self;
    l0.BonusGiven = DummyFunction;
    l0.NoBonus = DummyFunction;
    l0:ClearWithReinforcement();
end;

function export:f_18_A_contains_B()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.Destination = self.SpawnPoint;
    l0.LoadingScreen = false;
    l0:In();
end;

function export:f_18_A_ncontains_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = self.OpenedCage;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_39_A_is_True;
    l0.A_is_False = self.f_39_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_31_False()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0:Push();
end;

function export:f_31_True()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.message = "QTE_Done";
    l0:Enable();
end;

function export:en_42()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_42_Out;
end;

function export:en_44()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
end;

function export:en_43()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_43_Out;
end;

function export:en_29()
    local l0;
    l0 = self[29];
    l0.Input = self.AnimalList;
end;

function export:en_37()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_57()
    local l0;
    l0 = self[57];
    l0.MetaSequenceID = self.MetaSequenceId;
    l0.SceneEntity = self.FlagCinematicSceneEntity;
    l0.SequenceFile = "Sequences/fc3_main/fc3_outpostcinematic/Flag_Sequence.seq";
    l0.cleanupArrows = false;
end;

function export:en_33()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_33_Out;
end;

function export:en_20()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact";
    l0._graph = self;
    l0.Out = self.f_20_Out;
end;

function export:en_32()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v3.lua")];
    l0.ID = self.MetaSequenceId;
    l0.ContextFlags = nil;
    l0._graph = self;
    l0.Out = self.f_32_Out;
end;

function export:en_58()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
