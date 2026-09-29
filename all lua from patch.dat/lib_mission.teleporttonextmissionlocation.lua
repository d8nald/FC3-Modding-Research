-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_mission.domino.xml
-- User graph: TeleportToNextMissionLocation
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Destination" Type="Nomad|entity{}" />
    <DataIn Name="Delay" Type="Core|float" />
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionCompleteNotify.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PawnInvincibleState.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Teleported = DummyFunction;
    self.ePlayer = nil;
    self[1] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_1_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionCompleteNotify.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[3] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:WithoutSuccessMessage()
    local l0;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0:In();
end;

function export:WithSuccessMessage()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:UnsetInvincible();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:In();
end;

function export:f_9_Out_0()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.Destination = self.Destination;
    l0:In();
end;

function export:f_9_Out_1()
    self = self._graph;
    self:Out();
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact_qte";
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:Pop();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/Player/ActionMapModifier.lua")];
    l0.Player = nil;
    l0.ActionMapName = "narrative_interact_qte";
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:Push();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState.lua")];
    l0.Pawn = self.ePlayer;
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:SetInvincible();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.seconds = self.Delay;
    l0:Start();
end;

function export:f_3_Out()
    self = self._graph;
    self:Teleported();
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 2,
    };
    l0.Out[0] = self.f_9_Out_0;
    l0.Out[1] = self.f_9_Out_1;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Teleported()
    
end;
_compilerVersion = 24;
