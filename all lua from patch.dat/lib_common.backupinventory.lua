-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_common.domino.xml
-- User graph: BackupInventory
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
        cbox:RegisterBox("Domino/System/Player/ManageInventory_v4.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Finished = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Finished = self.f_4_Finished;
    self[2] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Finished = self.f_2_Finished;
    self[3] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Finished = self.f_3_Finished;
    self[1] = cbox:CreateBox("Domino/System/Player/ManageInventory_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Finished = self.f_1_Finished;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Backup()
    local l0;
    l0 = self[2];
    l0:BackupInventory();
end;

function export:Restore()
    local l0;
    l0 = self[3];
    l0:RemoveAll();
end;

function export:f_4_Finished()
    self = self._graph;
    self:Finished();
end;

function export:f_2_Finished()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:RemoveAll();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:RestoreInventory();
end;

function export:f_1_Finished()
    self = self._graph;
    self:Finished();
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 24;
