-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: EXO_ExoticLadder
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/GetEntityInPrefab.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/Library/Coop/Helpers.PostFX.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[CVineClimbingGameplay]], "CGSFResource");
        cbox:LoadResource([[sndres0x000a94b4]], "CSoundResource");
        cbox:LoadResource([[sndres0x000a94cc]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00165650.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00165650]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A9397]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.ePlayer = nil;
    self.ExoticLadder = nil;
    self[7] = cbox:CreateBox("Domino/Library/Coop/Helpers.PostFX.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = self.f_7_Enabled;
    l0.Disabled = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/GetEntityInPrefab.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Out = self.f_16_Out;
    self[5] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_19_Received;
    self[8] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Started = self.f_10_Started;
    l0.Finished = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
    self[3] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[3];
    l0._graph = self;
    l0._DynamicAnchors = {
        entity = {
            "Ladder",
            "First_Vine_Point",
            "Second_Vine_Point",
        },
        bool = {
            "EnableDebug",
        },
    };
    l0.Started = DummyFunction;
    l0.Stopped = self.f_3_Stopped;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
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
    self[12] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Started = self.f_12_Started;
    l0.Finished = DummyFunction;
    self[4] = cbox:CreateBox("Domino/Library/Coop/Helpers.PostFX.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_4_Disabled;
    self[6] = cbox:CreateBox("Domino/System/Coop/Entity/IsEntityLoaded.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.True = self.f_6_True;
    l0.False = self.f_6_False;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = self[6];
    l0.entityId = "2078490314877736445";
    l0:In();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0:In();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = self[9];
    l0.message = "dolly_zoom_started";
    l0:Enable();
    l0 = self[16];
    l0.PrefabEntity = "2073584274467993400";
    l0.ObjectName = "ladders/ladder_vines10m_0";
    l0:In();
    l0 = self[19];
    l0.message = "DisablePostFX";
    l0:Enable();
    l0 = self[2];
    l0.message = "vine_climbing_ended";
    l0:Enable();
end;

function export:f_7_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Started mush_postfx.03";
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

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    self.ExoticLadder = l0.ObjectEntity;
    l0 = self[3];
    l0.GSFName = "CVineClimbingGameplay";
    l0.entity["Ladder"] = self.ExoticLadder;
    l0.entity["First_Vine_Point"] = "2073403098251930447";
    l0.entity["Second_Vine_Point"] = "2073403264386214747";
    l0:Start();
end;

function export:f_19_Received()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.PostFxName = "postfx:mush_postfx.02";
    l0:Disable();
end;

function export:f_10_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 2 started.";
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

function export:f_9_Received()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.seconds = 0.5;
    l0:Start();
    l0 = self[8];
    l0.Entity = "2073307718644404568";
    l0.SoundId = "0x000A9397";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[12];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94b4";
    l0.SoundType = 12;
    l0:Play();
end;

function export:f_3_Stopped()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.PostFxName = "postfx:mush_postfx.03";
    l0:Enable();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Entity = self.ePlayer;
    l0.SoundId = "0x000a94cc";
    l0.SoundType = 12;
    l0:Play();
    self:Completed();
end;

function export:f_18_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00165650";
    l0:ForcePlay_Priority();
end;

function export:f_12_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Trip sound 01 stopped.";
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

function export:f_4_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Stopped mush_postfx.02";
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

function export:f_6_False()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0:In();
end;

function export:f_6_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2078490314877736445";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:In();
end;

function export:en_11()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
_compilerVersion = 24;
