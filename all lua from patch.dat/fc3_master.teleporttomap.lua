-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: TeleportToMap
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
        cbox:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cbox:RegisterBox("Domino/System/TeleportEntity.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[22] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_22_Execute;
    self[19] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_19_Execute;
    self[20] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_25_Execute;
    self[30] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_30_Execute;
    self[3] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_3_Execute;
    self[33] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_33_Execute;
    self[4] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_10_Execute;
    self[2] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_1_Execute;
    self[7] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_18_Execute;
    self[27] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_27_Execute;
    self[31] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_31_Execute;
    self[15] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_14_Execute;
    self[6] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_6_Execute;
    self[23] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_23_Execute;
    self[36] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_16_Execute;
    self[13] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_13_Execute;
    self[34] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_8_Execute;
    self[35] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_35_Execute;
    self[29] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[26] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[9] = cbox:CreateBox("Domino/System/TeleportEntity.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[30];
    l0.Name = "G2";
    l0.Loop = true;
    l0:Enable();
    l0 = self[16];
    l0.Name = "D5";
    l0.Loop = true;
    l0:Enable();
    l0 = self[10];
    l0.Name = "C7";
    l0.Loop = true;
    l0:Enable();
    l0 = self[18];
    l0.Name = "D7";
    l0.Loop = true;
    l0:Enable();
    l0 = self[14];
    l0.Name = "D6";
    l0.Loop = true;
    l0:Enable();
    l0 = self[25];
    l0.Name = "F4";
    l0.Loop = true;
    l0:Enable();
    l0 = self[33];
    l0.Name = "G4";
    l0.Loop = true;
    l0:Enable();
    l0 = self[19];
    l0.Name = "D4";
    l0.Loop = true;
    l0:Enable();
    l0 = self[3];
    l0.Name = "C6";
    l0.Loop = true;
    l0:Enable();
    l0 = self[6];
    l0.Name = "C5";
    l0.Loop = true;
    l0:Enable();
    l0 = self[8];
    l0.Name = "C4";
    l0.Loop = true;
    l0:Enable();
    l0 = self[1];
    l0.Name = "C3";
    l0.Loop = true;
    l0:Enable();
    l0 = self[13];
    l0.Name = "D3";
    l0.Loop = true;
    l0:Enable();
    l0 = self[22];
    l0.Name = "F2";
    l0.Loop = true;
    l0:Enable();
    l0 = self[27];
    l0.Name = "F3";
    l0.Loop = true;
    l0:Enable();
    l0 = self[23];
    l0.Name = "F5";
    l0.Loop = true;
    l0:Enable();
    l0 = self[31];
    l0.Name = "E6";
    l0.Loop = true;
    l0:Enable();
    l0 = self[35];
    l0.Name = "G3";
    l0.Loop = true;
    l0:Enable();
end;

function export:f_22_Execute()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.Destination = "2075736467553919395";
    l0:In();
end;

function export:f_19_Execute()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Destination = "2075742183496879584";
    l0:In();
end;

function export:f_25_Execute()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.Destination = "2075779089609788546";
    l0:In();
end;

function export:f_30_Execute()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.Destination = "2075670486603271285";
    l0:In();
end;

function export:f_3_Execute()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Destination = "2075779018887532253";
    l0:In();
end;

function export:f_33_Execute()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.Destination = "2075713954344080169";
    l0:In();
end;

function export:f_10_Execute()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Destination = "2075890675978610197";
    l0:In();
end;

function export:f_1_Execute()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Destination = "2073378669121767362";
    l0:In();
end;

function export:f_18_Execute()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Destination = "2076014348926461493";
    l0:In();
end;

function export:f_27_Execute()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.Destination = "2075035421577848352";
    l0:In();
end;

function export:f_31_Execute()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.Destination = "2074866193277130394";
    l0:In();
end;

function export:f_14_Execute()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Destination = "2075807177590705063";
    l0:In();
end;

function export:f_6_Execute()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Destination = "2073747198499107783";
    l0:In();
end;

function export:f_23_Execute()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.Destination = "2075753162028878851";
    l0:In();
end;

function export:f_16_Execute()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Destination = "2075902631485642926";
    l0:In();
end;

function export:f_13_Execute()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.Destination = "2073485320390707784";
    l0:In();
end;

function export:f_8_Execute()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Destination = "2070970213884493871";
    l0:In();
end;

function export:f_35_Execute()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.Destination = "2075668786414885294";
    l0:In();
end;

-- Empty out anchor definitions
_compilerVersion = 24;
