-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_hubandchainquests/sqc_010/sqc_010_main.domino.xml
-- User graph: SQC_010_MAIN
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
    luaDepTable[1] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_MAIN.SQC_010_B20.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_MAIN.SQC_010_B10.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.AddMissionLocationMarker.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionNormalEnd.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetSessionGlobal.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Completed = self.f_4_Completed;
    l0.Failed = self.f_4_Failed;
    self[7] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Acknowledged = DummyFunction;
    l0.NotAcknowledged = self.f_7_NotAcknowledged;
    self[1] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.AddMissionLocationMarker.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Added = self.f_1_Added;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    l0.Completed = self.f_3_Completed;
    l0.Failed = self.f_3_Failed;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionNormalEnd.lua");
    l0 = self[2];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.Marker = "2076800961805845464";
    l0.LocalizedText = {
        section = "Objectives",
        item = "SQC_010_OBJ_10",
        id = "119316",
    };
    l0:In();
end;

function export:Scan()
    local l0;
    self:en_3();
    l0 = self[3];
    l0:Scan();
end;

function export:f_5_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Fail();
end;

function export:f_4_Completed()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Complete();
end;

function export:f_4_Failed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0.Value = true;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_1_Added()
    local l0;
    self = self._graph;
    self:en_3();
    l0 = self[3];
    l0:In();
    l0 = self[7];
    l0:IsAcknowledged();
end;

function export:f_3_Completed()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_3_Failed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Scan();
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_5_Out;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.MissionBlockId = "138277634207121";
    l0.MissionScript = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_MAIN.SQC_010_B20.lua";
    l0.DBGSpawn = "2075798852312511246";
    l0.EndSpawn = "2075798852312511246";
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.MissionBlockId = "45174270286913800";
    l0.MissionScript = "Domino/user/fc3/FC3_HubAndChainQuests/SQC_010/SQC_010_MAIN.SQC_010_B10.lua";
    l0.DBGSpawn = "2076124921102102687";
    l0.EndSpawn = "2076124921102102687";
end;

-- Empty out anchor definitions
_compilerVersion = 24;
