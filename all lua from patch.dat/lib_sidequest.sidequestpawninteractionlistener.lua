-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: SideQuestPawnInteractionListener
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Pawn" Type="Nomad|entity{}" />
    <DataIn Name="IgnoreOrientation" Type="Core|bool" />
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
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/PawnInteractionListener_v2.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetSessionGlobal.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.PlayerInteracted = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Acknowledged = self.f_7_Acknowledged;
    l0.NotAcknowledged = self.f_7_NotAcknowledged;
    self[1] = cbox:CreateBox("Domino/System/PawnInteractionListener_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.PlayerInteracted = self.f_1_PlayerInteracted;
    self[2] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = self.f_2_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_2_Received;
    self[3] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_3_Received;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Enable()
    local l0;
    l0 = self[7];
    l0:IsAcknowledged();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0:In();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Disable();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Disable();
    self:en_2();
    l0 = self[2];
    l0:Disable();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:PlayerInteracted();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0:In();
end;

function export:f_7_Acknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_7_NotAcknowledged()
    local l0;
    self = self._graph;
    self:en_2();
    l0 = self[2];
    l0:Enable();
end;

function export:f_1_PlayerInteracted()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0:In();
end;

function export:f_2_Enabled()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:Enable();
end;

function export:f_2_Received()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
    l0:In();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_3_Received()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0.Value = true;
    l0._graph = self;
    l0.Out = self.f_6_Out;
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.Pawn = self.Pawn;
    l0.IgnoreOrientation = self.IgnoreOrientation;
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.message = "PhoneCallStart";
    l0.autoDisable = false;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.message = "PhoneCallEnd";
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
function export:PlayerInteracted()
    
end;
_compilerVersion = 24;
