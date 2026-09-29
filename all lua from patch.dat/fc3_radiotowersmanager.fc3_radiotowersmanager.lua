-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_radiotowersmanager.domino.xml
-- User graph: FC3_RadioTowersManager
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Activated = DummyFunction;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Activated = self.f_2_Activated;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Activated = self.f_4_Activated;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Activated = self.f_1_Activated;
    self[15] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Activated = self.f_15_Activated;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Activated = self.f_3_Activated;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Activated = self.f_6_Activated;
    self[18] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Activated = self.f_18_Activated;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Activated = self.f_5_Activated;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Activated = self.f_10_Activated;
    self[12] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Activated = self.f_12_Activated;
    self[17] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Activated = self.f_17_Activated;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Activated = self.f_9_Activated;
    self[13] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Activated = self.f_13_Activated;
    self[11] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Activated = self.f_11_Activated;
    self[14] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Activated = self.f_14_Activated;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Activated = self.f_7_Activated;
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Activated = self.f_8_Activated;
    self[16] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.RadioTowerManager.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Activated = self.f_16_Activated;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = self[1];
    l0.RadioTower = "2073378669121767367";
    l0.Message = "C3_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_2_Activated()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.RadioTower = "2073747198411027337";
    l0.Message = "C5_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_4_Activated()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.RadioTower = "2075890675978610201";
    l0.Message = "C7_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_1_Activated()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.RadioTower = "2075643923713233333";
    l0.Message = "C4_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_15_Activated()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.RadioTower = "2075779089609788550";
    l0.Message = "F4_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_3_Activated()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.RadioTower = "2075779018887532257";
    l0.Message = "C6_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_6_Activated()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.RadioTower = "2073485320390707789";
    l0.Message = "D3_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_18_Activated()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.RadioTower = "2075668786414885298";
    l0.Message = "G3_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_5_Activated()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.RadioTower = "2074866193277130398";
    l0.Message = "E6_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_10_Activated()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.RadioTower = "2075742183496879588";
    l0.Message = "D4_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_12_Activated()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.RadioTower = "2075670486603271289";
    l0.Message = "G2_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_17_Activated()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.RadioTower = "2075035421577848356";
    l0.Message = "F3_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_9_Activated()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.RadioTower = "2075902631485642930";
    l0.Message = "D5_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_13_Activated()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.RadioTower = "2075753162028878855";
    l0.Message = "F5_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_11_Activated()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.RadioTower = "2075736467553919399";
    l0.Message = "F2_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_14_Activated()
    self = self._graph;
    self:Activated();
end;

function export:f_7_Activated()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.RadioTower = "2076014348926461497";
    l0.Message = "D7_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_8_Activated()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.RadioTower = "2075807177590705067";
    l0.Message = "D6_RadioTowerIsUnlocked";
    l0:Activate();
end;

function export:f_16_Activated()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.RadioTower = "2075713954344080173";
    l0.Message = "G4_RadioTowerIsUnlocked";
    l0:Activate();
end;

-- Empty out anchor definitions
function export:Activated()
    
end;
_compilerVersion = 24;
