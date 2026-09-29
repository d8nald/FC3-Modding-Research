-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_playnarrativescenes.domino.xml
-- User graph: PlayScene
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SceneName" Type="Core|string" />
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
        cbox:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cbox:RegisterBox("Domino/System/Player/IgnoreSignal.lua");
        cbox:RegisterBox("Domino/System/Player/InputListener_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/StringConcatenate.lua");
        cbox:RegisterBox("Domino/System/SystemConsoleCommand.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Finished = DummyFunction;
    self.Command = "";
    self[9] = cbox:CreateBox("Domino/System/SystemConsoleCommand.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    self[8] = cbox:CreateBox("Domino/System/Player/InputListener_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.SignalReceived = self.f_8_SignalReceived;
    self[5] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_5_Execute;
    self[2] = cbox:CreateBox("Domino/System/SystemConsoleCommand.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = self.f_2_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Play()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate.lua")];
    l0.Input = "MissionZoneSpawn ";
    l0.String = self.SceneName;
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:WithString();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate.lua")];
    self._sld_Target_6 = l0.Target;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    self:en_4();
    l0:ToConsole();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate.lua")];
    self.Command = l0.Target;
    l0 = self[2];
    l0.Command = self.Command;
    l0:In();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Enable();
    self:en_8();
    l0 = self[8];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate.lua")];
    l0.Input = self.SceneName;
    l0.String = " started.";
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:WithString();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:Disable();
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate.lua")];
    l0:WithString();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate.lua")];
    self.Command = l0.Target;
    l0 = self[9];
    l0.Command = self.Command;
    l0:In();
end;

function export:f_8_SignalReceived()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Disable();
    self:en_1();
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate.lua")];
    l0:WithString();
end;

function export:f_5_Execute()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/IgnoreSignal.lua")];
    l0.pawn = nil;
    l0.signal = "jump";
    l0.ignore = false;
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_2_Out()
    self = self._graph;
    self:Finished();
end;

function export:en_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate.lua")];
    l0.Input = "MissionZoneKill ";
    l0.String = self.SceneName;
    l0.Integer = nil;
    l0.Float = nil;
    l0.Boolean = nil;
    l0._graph = self;
    l0.Out = self.f_1_Out;
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = self._sld_Target_6;
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

function export:en_8()
    local l0;
    l0 = self[8];
    l0.signal = "jump";
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.Name = "NextScene";
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 24;
