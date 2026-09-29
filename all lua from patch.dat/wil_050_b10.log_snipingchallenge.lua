-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/wil_050/wil_050_b10/wil_050_b10.domino.xml
-- User graph: LOG_SnipingChallenge
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
        cbox:RegisterBox("Domino/System/GSF_v2.lua");
        cbox:RegisterBox("Domino/System/Player/IgnoreSignal.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
        
        -- Load resources
        cbox:LoadResource([[CSnipingChallenge_CIT020]], "CGSFResource");
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
    self[4] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
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
    self[5] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_5_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/GSF_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0._DynamicAnchors = {
        entity = {
            "InteractiveWeapon/EntityID",
            "EntityToLookAt",
        },
        float = {
            "gCameraYawMinDeviation",
            "gCameraYawMaxDeviation",
            "gCameraPitchMinDeviation",
            "gCameraPitchMaxDeviation",
        },
        bool = {
            "IsStanceCrouch",
        },
    };
    l0.Started = self.f_8_Started;
    l0.Stopped = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = DummyFunction;
    l0.Use = self.f_2_Use;
    self[3] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = self.f_3_Finished;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Mission_Flow/SetMissionObjective_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_6_Out_0;
    l0.Out[1] = self.f_6_Out_1;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.GSFName = "CSnipingChallenge_CIT020";
    l0.entity["InteractiveWeapon/EntityID"] = "2076496693462846357";
    l0.bool["IsStanceCrouch"] = true;
    l0:Start();
end;

function export:f_7_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00166400";
    l0:ForcePlay_Priority();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00165a3a";
    l0:ForcePlay_Priority();
end;

function export:f_8_Started()
    self = self._graph;
    self:Out();
end;

function export:f_2_Use()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "updateshooting";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.seconds = 2;
    l0:Pause();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.seconds = 4;
    l0:Start();
end;

function export:f_6_Out_0()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2076496693462846357";
    l0:Enable();
end;

function export:f_6_Out_1()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.objectiveId = {
        section = "Objectives",
        item = "WIL050_OBJ_TagOliver",
        id = "100386",
    };
    l0:SetMissionObjective();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
