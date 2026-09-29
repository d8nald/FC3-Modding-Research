-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_poisquestsmaster.domino.xml
-- User graph: FC3_POIsQuestsMaster
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C3_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C4_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C5_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C6_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C7_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D3_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D4_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D5_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D6_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D7_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.E6_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.F2_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.F3_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.F4_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.F5_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.G2_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.G3_POIsQuests.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.G4_POIsQuests.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C3_POIsQuests.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    self[13] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.G4_POIsQuests.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Initialized = self.f_13_Initialized;
    self[11] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C6_POIsQuests.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Initialized = self.f_11_Initialized;
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C5_POIsQuests.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Initialized = self.f_8_Initialized;
    self[17] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.F3_POIsQuests.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Initialized = self.f_17_Initialized;
    self[12] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.E6_POIsQuests.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Initialized = self.f_12_Initialized;
    self[15] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.G2_POIsQuests.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Initialized = self.f_15_Initialized;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D6_POIsQuests.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D4_POIsQuests.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D5_POIsQuests.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Initialized = self.f_10_Initialized;
    self[18] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.F4_POIsQuests.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Initialized = self.f_18_Initialized;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C4_POIsQuests.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D3_POIsQuests.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    self[19] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.F5_POIsQuests.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Initialized = self.f_19_Initialized;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.D7_POIsQuests.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.C7_POIsQuests.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    self[16] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.F2_POIsQuests.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Initialized = self.f_16_Initialized;
    self[14] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.G3_POIsQuests.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Initialized = self.f_14_Initialized;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[2];
    l0:Initialize();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Initialize();
end;

function export:f_13_Initialized()
    local l0;
    self = self._graph;
    self:Initialized();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting POI Quests Content Initialization ... Done.";
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
    l0:ToScreen();
end;

function export:f_11_Initialized()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Initialize();
end;

function export:f_8_Initialized()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:Initialize();
end;

function export:f_17_Initialized()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0:Initialize();
end;

function export:f_12_Initialized()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:Initialize();
end;

function export:f_15_Initialized()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:Initialize();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Initialize();
end;

function export:f_6_Initialized()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Initialize();
end;

function export:f_10_Initialized()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Initialize();
end;

function export:f_18_Initialized()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:Initialize();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Initialize();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Initialize();
end;

function export:f_19_Initialized()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Initialize();
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Initialize();
end;

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Initialize();
end;

function export:f_16_Initialized()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Initialize();
end;

function export:f_14_Initialized()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Initialize();
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
