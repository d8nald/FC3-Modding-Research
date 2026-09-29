-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: LOG_LockBinocular
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GadgetWieldListener.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/GodMode.lua");
        cbox:RegisterBox("Domino/System/GosmReset.lua");
        cbox:RegisterBox("Domino/System/Player/IgnoreSignal.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PawnGadgetCheck.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/PlayerLookAtModifier_v2.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ResetInputs.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
        cbox:RegisterBox("Domino/System/Player/WieldInventory_v3.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00166400.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00166400]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00165a3a.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00165a3a]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.ePlayer = nil;
    self[35] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_35_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_5_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
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
    self[8] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_8_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_33_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = self.f_11_Out;
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
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[18] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_18_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/System/GadgetWieldListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0.Drawn = self.f_3_Drawn;
    l0.Holstered = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/PlayerLookAtModifier_v2.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Done = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_37_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/GosmReset.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = self.f_32_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:In();
end;

function export:f_35_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact_qte";
    l0._graph = self;
    l0.Out = self.f_25_Out;
    l0:Push();
end;

function export:f_5_Finished()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.seconds = 2;
    l0:Start();
end;

function export:f_6_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00165a3a";
    l0:ForcePlay_Priority();
end;

function export:f_1_Drew()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "DREW";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_1_Error()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ERROR";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_15_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = self.ePlayer;
    l0.signal = "updateshooting ";
    l0.ignore = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_15_Out_1()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.categoryFilter = "binoculars";
    l0:Enable();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "PUSH";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = self[33];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "look_at_tattoo_next";
    l0.ignore = nil;
    l0._graph = self;
    l0.Out = self.f_38_Out;
    l0:In();
end;

function export:f_8_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00166400";
    l0:ForcePlay_Priority();
end;

function export:f_33_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = self.f_29_Out;
    l0:Disable();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "cinematicfadetoblack";
    l0._graph = self;
    l0.Out = self.f_23_Out;
    l0:Enable();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnGadgetCheck.lua")];
    l0.pawn = self.ePlayer;
    l0.categoryName = "binoculars";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.InHands = self.f_24_InHands;
    l0.InInventory = self.f_24_InInventory;
    l0.NotFound = DummyFunction;
    l0:In();
    l0 = self[34];
    l0.lookTarget = "2076939490441580669";
    l0.lockTime = 1;
    l0:LookAtEntity();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:Enable();
end;

function export:f_10_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Destination = "2077192507237619182";
    l0.LoadingScreen = false;
    l0.LoadSynch = false;
    l0:In();
end;

function export:f_24_InHands()
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
    l0.Holstered = self.f_36_Holstered;
    l0.Error = DummyFunction;
    l0:LuaHolster();
end;

function export:f_24_InInventory()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = self[32];
    l0:Reset();
end;

function export:f_12_Out()
    self = self._graph;
    self:Out();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "STARTBINOCULAR";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_15_Out_0;
    l0.Out[1] = self.f_15_Out_1;
    l0:In();
end;

function export:f_9_Out_1()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.objectiveId = {
        section = "Objectives",
        item = "WIL050_OBJ_TagOliver",
        id = "100386",
    };
    l0:SetMissionObjective();
end;

function export:f_18_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.Out[1] = self.f_9_Out_1;
    l0:In();
end;

function export:f_3_Drawn()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "DRAWN";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact_qte";
    l0._graph = self;
    l0.Out = self.f_26_Out;
    l0:Pop();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/WieldInventory_v3.lua")];
    l0.category = "binoculars";
    l0.class = nil;
    l0.name = nil;
    l0.pawn = nil;
    l0.force = true;
    l0._graph = self;
    l0.Drew = self.f_1_Drew;
    l0.Holstered = DummyFunction;
    l0.Error = self.f_1_Error;
    l0:LuaDrawGadget();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ENABLE";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = 60;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToAll();
end;

function export:f_39_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/GodMode.lua")];
    l0.ShowDamage = nil;
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:Disable();
end;

function export:f_37_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = self[32];
    l0:Reset();
end;

function export:f_36_Holstered()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.seconds = 0.2;
    l0:Start();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ResetInputs.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:In();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "monocular_exoticgameplay";
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:Push();
end;

function export:f_38_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "look_at_tattoo_end";
    l0.ignore = nil;
    l0._graph = self;
    l0.Out = self.f_39_Out;
    l0:In();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.seconds = 1;
    l0:Start();
end;

function export:en_32()
    local l0;
    l0 = self[32];
    l0.target = self.ePlayer;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
