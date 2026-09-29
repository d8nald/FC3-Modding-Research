-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b20/bam_030_b20.domino.xml
-- User graph: PlayDialog
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
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018b26a.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x0018b26a]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Player = nil;
    self[3] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.Player = l0.LocalPlayer;
    l0 = self[1];
    l0.triggerId = "2076122206942863399";
    l0:Enable();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Group = self.Player;
    l0.TargetEntity = self.Player;
    l0.SoundId = "0x0018b26a";
    l0:ForcePlay_Priority();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
