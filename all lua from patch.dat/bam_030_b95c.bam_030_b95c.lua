-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b95c/bam_030_b95c.domino.xml
-- User graph: BAM_030_B95C
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
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/WaitingPlayGame.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.ePlayer = nil;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[5];
    l0._graph = self;
    self[13] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    self[17] = cbox:CreateBox("Domino/System/WaitingPlayGame.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = self.f_17_Out;
    self[11] = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSkippableScenePlayer.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = self.f_11_Started;
    l0.Finished = self.f_11_Finished;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Acknowledged = self.f_3_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[3];
    l0:Acknowledge();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Start();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0:Stop();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "fadetowhite";
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:Disable();
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.SceneEntity = "2076224564299312059";
    l0.SequenceFile = "Sequences/FC3_Main/BAM_030_B95C/BAM_030_B95C.seq";
    l0.Black_Length = 0.2;
    l0.Is_skippable = true;
    l0.IsThereALoopDuringFadeIn = false;
    l0.KeepGodMode = false;
    l0.KeepHUDMode = false;
    l0.KeepWeaponHolstered = false;
    l0.bNoWeaponMode = false;
    l0:Start_withnofade();
end;

function export:f_12_Stopped()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_11_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "#6667209E";
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
end;

function export:f_11_Started()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Send();
end;

function export:f_3_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0.Hour = 8;
    l0.Minute = 0;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:SetTimeOfDay();
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    self:en_8();
    l0:ToConsole();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:In();
end;

function export:en_12()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "MUS_CIN_BAM_030_BuckAngry";
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Stopped = self.f_12_Stopped;
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "BAM_030_B95C started.";
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
end;

-- Empty out anchor definitions
_compilerVersion = 24;
