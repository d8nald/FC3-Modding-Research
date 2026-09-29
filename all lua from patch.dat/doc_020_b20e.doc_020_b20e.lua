-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: DOC_020_B20E
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
        cbox:RegisterBox("Domino/System/Player/ActionMapModifier.lua");
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.DIA_HallucinationDialogs.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_DrunkWalk.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_HauntedGreenhouse.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_RealtreesB02.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_RockDoors.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_WeaponAndHudModifier.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EXO_ExoticLadder.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_EnvOverride.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_Trigger.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/NoWeaponMode.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PickupState.lua");
        cbox:RegisterBox("Domino/System/PlayerLookAtModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.SND_B02_VoicesBeforeDeadTrees.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.SND_B02_VoicesBeforeVines.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0002fa99]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94ce]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94cd]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94d0]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94ca]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A939A]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94b4]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94c8]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A9399]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94c7]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94b0]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94cf]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.ePlayer = nil;
    self.MetaID = 0;
    self.trip_05 = 0;
    self.MushroomTrip_05_LP = 0;
    self[28] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Acknowledged = self.f_28_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[3];
    l0._graph = self;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[1];
    l0._graph = self;
    self[50] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Started = self.f_50_Started;
    l0.Finished = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_21_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Started = self.f_24_Started;
    l0.Finished = DummyFunction;
    self[32] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_WeaponAndHudModifier.lua");
    l0 = self[32];
    l0._graph = self;
    l0.HUDRemoved = DummyFunction;
    l0.HUDRestored = DummyFunction;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EXO_ExoticLadder.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Completed = self.f_5_Completed;
    self[38] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_38_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[25] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_RealtreesB02.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Completed = DummyFunction;
    l0.DialogDone = DummyFunction;
    self[33] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_Trigger.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Completed = self.f_33_Completed;
    self[23] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.SND_B02_VoicesBeforeDeadTrees.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Completed = DummyFunction;
    self[31] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_EnvOverride.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Completed = DummyFunction;
    self[57] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Started = self.f_57_Started;
    l0.Finished = DummyFunction;
    self[42] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[42];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_42_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[22] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.SND_B02_VoicesBeforeVines.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Completed = DummyFunction;
    self[63] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlock_v2.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Initialized = DummyFunction;
    l0.Enabled = self.f_63_Enabled;
    l0.Completed = DummyFunction;
    l0.Failed = DummyFunction;
    self[46] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[46];
    l0._graph = self;
    l0.Started = self.f_46_Started;
    l0.Finished = DummyFunction;
    self[36] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_DrunkWalk.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Stopped = DummyFunction;
    l0.Started = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_26_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[53] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Started = self.f_53_Started;
    l0.Finished = DummyFunction;
    self[29] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.FX_Trigger.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Completed = self.f_29_Completed;
    self[72] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[72];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_72_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_9_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/PlayerLookAtModifier_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Done = self.f_10_Done;
    self[35] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_RockDoors.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Completed = self.f_35_Completed;
    l0.Started = DummyFunction;
    l0.StartDialogs = self.f_35_StartDialogs;
    self[73] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_WeaponAndHudModifier.lua");
    l0 = self[73];
    l0._graph = self;
    l0.HUDRemoved = DummyFunction;
    l0.HUDRestored = self.f_73_HUDRestored;
    self[44] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Started = self.f_44_Started;
    l0.Finished = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[19] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.EVT_HauntedGreenhouse.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Completed = DummyFunction;
    l0.TurnOffDrunkWalk = self.f_19_TurnOffDrunkWalk;
    l0.PlayerInsideGreenhouse = self.f_19_PlayerInsideGreenhouse;
    l0.PlayerIsInDarkRoom = self.f_19_PlayerIsInDarkRoom;
    self[49] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[49];
    l0._graph = self;
    l0.Started = self.f_49_Started;
    l0.Finished = DummyFunction;
    self[54] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Started = self.f_54_Started;
    l0.Finished = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Started = self.f_15_Started;
    l0.Finished = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Out = self.f_61_Out;
    self[67] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = self.f_67_Leave;
    l0.Use = DummyFunction;
    self[27] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Started = self.f_27_Started;
    l0.Finished = DummyFunction;
    self[79] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[79];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_79_Out;
    self[14] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_14_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[76] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.DIA_HallucinationDialogs.lua");
    l0 = self[76];
    l0._graph = self;
    l0.done = self.f_76_done;
    self[11] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "no_sprint_gameplay";
    l0._graph = self;
    l0.Out = self.f_77_Out;
    l0:Set();
end;

function export:OnLeaveZone()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_DOC020_OnDrugs";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_39_Stopped;
    l0:Stop();
end;

function export:Start()
    
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:Stop();
end;

function export:f_28_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:Send();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_SPE_DOC020_OnDrugs";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0:Start();
    l0 = self[22];
    l0:Start();
    l0 = self[33];
    l0.DisablePostFX = "postfx:mush_postfx.01";
    l0.EnablePostFX = "postfx:mush_postfx.02";
    l0:StartWithNoTrigger();
    l0 = self[5];
    l0:Start();
end;

function export:f_50_Started()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94b0";
    l0.SoundType = 12;
    l0:Play();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 5 stopped.";
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

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = self[72];
    l0.triggerId = "2077037152895560512";
    l0:Enable();
end;

function export:f_21_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = false;
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0:Enable();
end;

function export:f_24_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 3 started.";
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
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073487343366451585";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_68_Out;
    l0:SetEnabled();
end;

function export:f_5_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "default";
    l0._graph = self;
    l0.Out = self.f_78_Out;
    l0:Set();
end;

function export:f_38_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94c7";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.triggerId = "2073318705208506330";
    l0:Enable();
end;

function export:f_33_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Started postFX 02.";
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

function export:f_77_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:Acknowledge();
end;

function export:f_41_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0.Hour = 12;
    l0.Minute = 0;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:IncrementTimeOfDay();
end;

function export:f_57_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound OneShots stopped.";
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

function export:f_70_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Hiding original ladder. 2nd try for checkpoint purpose.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
    l0.color = "blue";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_42_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Save = false;
    l0:Complete();
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:Enable();
end;

function export:f_63_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "9145428952565708";
    l0.missionLayerId = "36167026716788689";
    l0._graph = self;
    l0.Activated = self.f_65_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_46_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 4 stopped.";
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

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = self[67];
    l0.triggerId = "2073487343366451585";
    l0:Enable();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    l0 = self[79];
    l0.param[0] = "ShowUIElement";
    l0.param[1] = "reticule";
    l0:In();
end;

function export:f_26_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94ca";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138226480296123";
    l0.missionLayerId = "45174228794458609";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_41_Disabled;
    l0:Disable();
end;

function export:f_53_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 1 stopped.";
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

function export:f_39_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_MIS_MVT1_SPE_DOC020_OnDrugs_Negative";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_66_Stopped;
    l0:Stop();
end;

function export:f_29_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Started postFX 04.";
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

function export:f_72_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2077344539990836795";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = DummyFunction;
    l0:Remove();
end;

function export:f_66_Stopped()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/NoWeaponMode.lua")];
    l0.pawn = nil;
    l0.useAnims = nil;
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:Off();
end;

function export:f_9_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073318705208506330";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_20_Out;
    l0:SetEnabled();
    l0 = self[46];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94cf";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_10_Done()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:Start();
    l0 = self[32];
    l0:Remove();
    l0 = self[29];
    l0.DisablePostFX = "postfx:mush_postfx.03";
    l0.EnablePostFX = "postfx:mush_postfx.04";
    l0:StartWithNoTrigger();
    l0 = self[31];
    l0:Start();
    l0 = self[35];
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/PickupState.lua")];
    l0.Pickup = "2073459703779700844";
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:SetAsNotPickable();
    l0 = self[14];
    l0.seconds = 1;
    l0:Start();
    l0 = self[11];
    l0.Entity = "2073307679278767487";
    l0.SoundId = "0x000A9399";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[23];
    l0:Start();
end;

function export:f_35_Completed()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94cd";
    l0.SoundType = 12;
    l0:Play();
    l0 = self[38];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_35_StartDialogs()
    local l0;
    self = self._graph;
    l0 = self[76];
    l0:In();
end;

function export:f_60_Out()
    local l0;
    self = self._graph;
    l0 = self[73];
    l0:Restore();
end;

function export:f_73_HUDRestored()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Fail();
end;

function export:f_44_Started()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.seconds = 1;
    l0:Start();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 3 stopped.";
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

function export:f_19_PlayerInsideGreenhouse()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94c8";
    l0.SoundType = 12;
    l0:Play();
    l0 = self[63];
    l0.missionBlockId = "9145428952565708";
    l0:Enable();
end;

function export:f_19_PlayerIsInDarkRoom()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94d0";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_19_TurnOffDrunkWalk()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:In();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x0002fa99";
    l0.SoundType = 12;
    l0:Play();
    l0 = self[18];
    l0.Entity = "2073307679278767487";
    l0.SoundId = "0x000A939A";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[53];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94b4";
    l0.SoundType = 12;
    l0:Play();
    l0 = self[42];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.triggerId = "2073101807596342485";
    l0:Enable();
end;

function export:f_49_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 5 started.";
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

function export:f_54_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 1 started";
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

function export:f_15_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 2 stopped.";
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

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073101807596342485";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:SetEnabled();
    l0 = self[19];
    l0:Start();
end;

function export:f_65_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Pre-loading beat 4.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
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

function export:f_61_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "BASE_C3_DOC_CAVE_Hide_Ladder";
    l0._graph = self;
    l0.Out = self.f_70_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_71_Out_0;
    l0.Out[1] = self.f_71_Out_1;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "DOC01 Beat 02 started.";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 10;
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

function export:f_67_Leave()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94ce";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_27_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 4 started.";
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

function export:f_71_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2077037152895560512";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:SetEnabled();
end;

function export:f_71_Out_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = false;
    l0._graph = self;
    l0.Out = self.f_60_Out;
    l0:Disable();
end;

function export:f_14_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:Start();
end;

function export:f_76_done()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:PlayDialog();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.lookTarget = "2073128012932455410";
    l0:LookAtEntity();
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
