-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: EVT_Transition00
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
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Coop/AllPlayers/TeleportPlayer.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.RealtreePreparation = DummyFunction;
    self.ePlayer = nil;
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
    self[3] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_3_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    l0:In();
end;

function export:f_5_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:Disable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_6_Out()
    self = self._graph;
    self:Completed();
end;

function export:f_7_TimeElapsed()
    self = self._graph;
    self:RealtreePreparation();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Coop/AllPlayers/TeleportPlayer.lua")];
    l0.PlayerEntity = self.ePlayer;
    l0.DestinationEntity = "2073128002985663470";
    l0.LookAt = "2073128012932455410";
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:Teleport();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.seconds = 3;
    l0:Start();
    l0 = self[7];
    l0.seconds = 1.5;
    l0:Start();
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
function export:RealtreePreparation()
    
end;
_compilerVersion = 24;
