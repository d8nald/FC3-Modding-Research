-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_main.domino.xml
-- User graph: ULC_020_MAIN
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
    luaDepTable[1] = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B20/ULC_020_B20.ULC_020_B20.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B10/ULC_020_B10.ULC_020_B10.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B05/ULC_020_B05.ULC_020_B05.lua";
    luaDepTable[4] = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B90/ULC_020_B90.ULC_020_B90.lua";
    luaDepTable[5] = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30.lua";
    luaDepTable[6] = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40.lua";
    luaDepTable[7] = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B08/ULC_020_B08.ULC_020_B08.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.AddMissionLocationMarker.lua");
        cbox:RegisterBox("Domino/System/BroadcastMessage.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionNormalEnd.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_MAIN.globals.lua");
        
        -- Load resources
    end;
end;

function export:Init(cbox)
    local l0;
    self[14] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Initialized = self.f_14_Initialized;
    l0.Completed = self.f_14_Completed;
    l0.Failed = self.f_14_Failed;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Completed = self.f_4_Completed;
    l0.Failed = self.f_4_Failed;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Completed = self.f_5_Completed;
    l0.Failed = self.f_5_Failed;
    self[2] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionNormalEnd.lua");
    l0 = self[2];
    l0._graph = self;
    self[7] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    l0.Completed = self.f_7_Completed;
    l0.Failed = self.f_7_Failed;
    self[9] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    l0.Completed = self.f_9_Completed;
    l0.Failed = self.f_9_Failed;
    self[15] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Initialized = self.f_15_Initialized;
    l0.Completed = self.f_15_Completed;
    l0.Failed = self.f_15_Failed;
    self[11] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlock.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Initialized = self.f_11_Initialized;
    l0.Completed = self.f_11_Completed;
    l0.Failed = self.f_11_Failed;
    self[1] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.AddMissionLocationMarker.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Added = self.f_1_Added;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[1];
    l0.Marker = "2076306915645731385";
    l0:In();
end;

function export:Scan()
    local l0;
    self:en_7();
    l0 = self[7];
    l0:Scan();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Fail();
end;

function export:f_8_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "TeleportToULC_020_B10";
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_8_A_is_True()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:In();
end;

function export:f_14_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_12_A_is_True;
    l0.A_is_False = self.f_12_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_14_Failed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_14_Initialized()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:Scan();
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
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_5_Completed()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:In();
end;

function export:f_5_Failed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:Scan();
end;

function export:f_12_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0.Message = "TeleportToULC_020_B90";
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_12_A_is_True()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_7_Completed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = Globals.ULC_020_MAIN.IsReloaded;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_8_A_is_True;
    l0.A_is_False = self.f_8_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_7_Failed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Scan();
end;

function export:f_9_Completed()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:In();
end;

function export:f_9_Failed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:Scan();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:In();
end;

function export:f_15_Completed()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:In();
end;

function export:f_15_Failed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_15_Initialized()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:Scan();
end;

function export:f_11_Completed()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:In();
end;

function export:f_11_Failed()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_11_Initialized()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:Scan();
end;

function export:f_1_Added()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = self[7];
    l0:In();
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_6_Out;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.MissionBlockId = "27159880211183198";
    l0.MissionScript = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B40/ULC_020_B40.ULC_020_B40.lua";
    l0.DBGSpawn = "2076594917418760756";
    l0.EndSpawn = "2076306828936884787";
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.MissionBlockId = "108224670404684399";
    l0.MissionScript = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B90/ULC_020_B90.ULC_020_B90.lua";
    l0.DBGSpawn = "2076306828936884787";
    l0.EndSpawn = "2076306828936884787";
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.MissionBlockId = "36167066560931988";
    l0.MissionScript = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B10/ULC_020_B10.ULC_020_B10.lua";
    l0.DBGSpawn = "2076620045110224994";
    l0.EndSpawn = "2075334813797059760";
end;

function export:en_7()
    local l0;
    l0 = self[7];
    l0.MissionBlockId = "27159877109661168";
    l0.MissionScript = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B05/ULC_020_B05.ULC_020_B05.lua";
    l0.DBGSpawn = "2076306813378114097";
    l0.EndSpawn = "2075334808671620268";
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.MissionBlockId = "138282446909793";
    l0.MissionScript = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B30/ULC_020_B30.ULC_020_B30.lua";
    l0.DBGSpawn = "2076594799795796528";
    l0.EndSpawn = "2076594917418760756";
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.MissionBlockId = "138282692314326";
    l0.MissionScript = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B08/ULC_020_B08.ULC_020_B08.lua";
    l0.DBGSpawn = "2075334808671620268";
    l0.EndSpawn = "2076620045110224994";
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.MissionBlockId = "63188664325231723";
    l0.MissionScript = "Domino/user/fc3/FC3_DLC_ULC/ULC_020/ULC_020_B20/ULC_020_B20.ULC_020_B20.lua";
    l0.DBGSpawn = "2075334813797059760";
    l0.EndSpawn = "2076594799795796528";
end;

-- Empty out anchor definitions
_compilerVersion = 24;
