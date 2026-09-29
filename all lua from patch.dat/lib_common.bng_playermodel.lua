-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: BNG_PlayerModel
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
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionGetState.lua");
        cbox:RegisterBox("Domino/System/ShowTattoo.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/Player/SwitchPawnPlayer.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Player/SwitchPawnPlayer.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    self[6] = cbox:CreateBox("Domino/System/Player/SwitchPawnPlayer.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    self[8] = cbox:CreateBox("Domino/System/Player/SwitchPawnPlayer.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    self[2] = cbox:CreateBox("Domino/System/Player/SwitchPawnPlayer.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Restore()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_220_MAIN";
    l0._graph = self;
    l0.Locked = self.f_5_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_5_Completed;
    l0.Failed = DummyFunction;
    l0.Hidden = self.f_5_Hidden;
    l0.Invalid = DummyFunction;
    l0:Get();
end;

function export:Set()
    local l0;
    l0 = self[2];
    l0.str = "player:MainCharacter/PawnPlayer";
    l0:FromString();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0:ShowTattoo();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0:ShowTattoo();
end;

function export:f_5_Completed()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.str = "player:MainCharacter/PawnPlayer.PawnPlayer_MissingFinger";
    l0:FromString();
end;

function export:f_5_Hidden()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_5_Locked()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:In();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0:ShowTattoo();
end;

function export:f_9_TattooShown()
    self = self._graph;
    self:Out();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0:ShowTattoo();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.str = "player:MainCharacter/PawnPlayer.PawnPlayer_Privateer";
    l0:FromString();
end;

function export:f_3_Failed()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_3_Locked()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_1_TattooHidden()
    self = self._graph;
    self:Out();
end;

function export:f_2_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0._graph = self;
    l0.TattooShown = DummyFunction;
    l0.TattooHidden = self.f_1_TattooHidden;
    l0:HideTattoo();
end;

function export:f_4_Completed()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.str = "player:MainCharacter/PawnPlayer.PawnPlayer_Privateer_MissingFinger_Bandaged";
    l0:FromString();
end;

function export:f_4_Failed()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:f_4_Locked()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0:Get();
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ShowTattoo.lua")];
    l0._graph = self;
    l0.TattooShown = self.f_9_TattooShown;
    l0.TattooHidden = DummyFunction;
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "JAS_190_MAIN";
    l0._graph = self;
    l0.Locked = self.f_3_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_3_Completed;
    l0.Failed = self.f_3_Failed;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/MissionGetState.lua")];
    l0.missionName = "HOY_040_MAIN";
    l0._graph = self;
    l0.Locked = self.f_4_Locked;
    l0.Running = DummyFunction;
    l0.Acknowledged = DummyFunction;
    l0.Completed = self.f_4_Completed;
    l0.Failed = self.f_4_Failed;
    l0.Hidden = DummyFunction;
    l0.Invalid = DummyFunction;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
