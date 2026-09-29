-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_b20e/bam_060_b20e.domino.xml
-- User graph: BAM_060_B20E
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM_060_B20_KnifeFight_GSM.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Success = DummyFunction;
    self.Fail = DummyFunction;
    self.MetaSequenceID = 0;
    self.meta = 0;
    self.player = nil;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Acknowledged = self.f_5_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[33];
    l0._graph = self;
    self[34] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[34];
    l0._graph = self;
    self[15] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM_060_B20_KnifeFight_GSM.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Success = self.f_15_Success;
    l0.Fail = self.f_15_Fail;
    l0.Out_Started = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[4];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[5];
    l0:Acknowledge();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[4];
    l0:Fail();
end;

function export:f_5_Acknowledged()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Start();
    self:en_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
    self:en_3();
    l0:ToScreen();
end;

function export:f_15_Fail()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0:Fail();
end;

function export:f_15_Success()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.Save = false;
    l0:Complete();
end;

function export:en_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "MissionBlock bam_060_B20E";
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

-- Empty out anchor definitions
function export:Success()
    
end;
function export:Fail()
    
end;
_compilerVersion = 24;
