-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: ExitZoneWarningListener
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="WarningZoneTrigger" Type="Nomad|entity{}" />
    <DataIn Name="FailingZoneTrigger" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/UI/DisplayCustomUIMsg.lua");
        cbox:RegisterBox("Domino/System/Gate_v3.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x001af288]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.WarningZoneEntered = DummyFunction;
    self.FailingZoneEntered = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_5_Enter;
    l0.Leave = self.f_5_Leave;
    self[3] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = DummyFunction;
    l0.Leave = self.f_3_Leave;
    self[6] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    l0.Closed = DummyFunction;
    l0.Opened = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.Finished = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Disable()
    local l0;
    self:en_3();
    l0 = self[3];
    l0:Disable();
    self:en_5();
    l0 = self[5];
    l0:Disable();
end;

function export:Enable()
    local l0;
    self:en_5();
    l0 = self[5];
    l0:Enable();
    self:en_3();
    l0 = self[3];
    l0:Enable();
end;

function export:f_5_Enter()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCustomUIMsg.lua")];
    l0:Hide();
end;

function export:f_5_Leave()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:In();
    self:WarningZoneEntered();
end;

function export:f_3_Leave()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_7_Out_0;
    l0.Out[1] = self.f_7_Out_1;
    l0.Out[2] = self.f_7_Out_2;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCustomUIMsg.lua")];
    l0:Display();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.SoundId = "0x001af288";
    l0.SoundType = 20;
    l0:Play();
end;

function export:f_7_Out_0()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Close();
    l0 = self[4];
    l0:Close();
end;

function export:f_7_Out_1()
    local l0;
    self = self._graph;
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCustomUIMsg.lua")];
    l0:Hide();
end;

function export:f_7_Out_2()
    self = self._graph;
    self:FailingZoneEntered();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:In();
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayCustomUIMsg.lua")];
    l0.MessageId = {
        section = "HUD Popups",
        item = "HUDPOPUP_HUD_LEAVINGMISSIONZONE",
        id = "153327",
    };
    l0.Timer = 0;
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.triggerId = self.WarningZoneTrigger;
    l0.autoDisable = false;
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.triggerId = self.FailingZoneTrigger;
    l0.autoDisable = false;
end;

-- Empty out anchor definitions
function export:WarningZoneEntered()
    
end;
function export:FailingZoneEntered()
    
end;
_compilerVersion = 24;
