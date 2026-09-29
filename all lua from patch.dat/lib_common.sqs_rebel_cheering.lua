-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: SQS_Rebel_Cheering
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
        cbox:RegisterBox("Domino/System/GetEntityInScriptPrefab.lua");
        cbox:RegisterBox("Domino/System/Coop/Group/GroupUseSTP.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/AI/PawnSetImpairedState.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Rebel = nil;
    self.Cheer = nil;
    self.CallPlayer = nil;
    self.Player = nil;
    self.BattleField = nil;
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
    self[12] = cbox:CreateBox("Domino/System/Coop/Group/GroupUseSTP.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0.Done = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    self[6] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[9] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_9_Received;
    self[4] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[2] = cbox:CreateBox("Domino/System/GetEntityInScriptPrefab.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
    self[1] = cbox:CreateBox("Domino/System/Coop/Group/GroupUseSTP.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0.Done = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_3_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = self.Cheer;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/AI/PawnSetImpairedState.lua")];
    l0.Group = self.Rebel;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:NotImpaired();
    l0 = self[12];
    l0.Group = self.Rebel;
    l0.NamesSTP = "Smoke";
    l0.Random = false;
    l0.Teleport = false;
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.ObjectName = "Cheer";
    l0:In();
end;

function export:f_12_Out()
    self = self._graph;
    self:Out();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    self.Cheer = l0.ObjectEntity;
    l0 = self[2];
    l0.ObjectName = "CallPlayer";
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    self.Rebel = l0.ObjectEntity;
    l0 = self[4];
    l0.ObjectName = "BattleField";
    l0:In();
end;

function export:f_9_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = self.CallPlayer;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
    l0 = self[1];
    l0.Group = self.Rebel;
    l0.NamesSTP = "Cheer";
    l0.Random = false;
    l0.Teleport = false;
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[4];
    self.BattleField = l0.ObjectEntity;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = self.Rebel;
    l0.Battlefield = self.BattleField;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:SetBattlefield();
    l0 = Boxes[GetPathID("Domino/System/AI/PawnSetImpairedState.lua")];
    l0.Group = self.Rebel;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:FullyImpaired();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    self.CallPlayer = l0.ObjectEntity;
    l0 = self[9];
    l0.message = "SQS_SUCCESS";
    l0:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.seconds = 10;
    l0:Start();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.Player = l0.LocalPlayer;
    l0 = self[6];
    l0.ObjectName = "Rebel";
    l0:In();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
