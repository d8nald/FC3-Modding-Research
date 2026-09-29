-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_persistencymaster.domino.xml
-- User graph: PersistencyController
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.C0_PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.C3_PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.C4_PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.C7_PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.D4_PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.D5_PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.E6_PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.G3_PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.POI_PersistencyController.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.C3_PersistencyController.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.POI_PersistencyController.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.C0_PersistencyController.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.D5_PersistencyController.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.D4_PersistencyController.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.E6_PersistencyController.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.C7_PersistencyController.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Initialized = self.f_8_Initialized;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.G3_PersistencyController.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.C4_PersistencyController.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[4];
    l0:Initialize();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Initialize();
end;

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Initialize();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Initialize();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Initialize();
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Initialize();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Initialize();
end;

function export:f_8_Initialized()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Initialize();
end;

function export:f_6_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_1_Initialized()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Initialize();
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
