-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_outpostsmanager.domino.xml
-- User graph: FC3_OutpostsManager
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Activated = DummyFunction;
    self[19] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Activated = self.f_19_Activated;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Activated = self.f_7_Activated;
    self[15] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Activated = self.f_15_Activated;
    self[13] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Activated = self.f_13_Activated;
    self[34] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Activated = self.f_34_Activated;
    self[31] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Activated = self.f_31_Activated;
    self[11] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Activated = self.f_11_Activated;
    self[23] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Activated = self.f_23_Activated;
    self[33] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Activated = self.f_33_Activated;
    self[28] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Activated = self.f_28_Activated;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Activated = self.f_9_Activated;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Activated = self.f_5_Activated;
    self[32] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Activated = self.f_32_Activated;
    self[12] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Activated = self.f_12_Activated;
    self[30] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Activated = self.f_30_Activated;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Activated = self.f_1_Activated;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Activated = self.f_3_Activated;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Activated = self.f_6_Activated;
    self[18] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Activated = self.f_18_Activated;
    self[24] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Activated = self.f_24_Activated;
    self[25] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Activated = self.f_25_Activated;
    self[26] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Activated = self.f_26_Activated;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Activated = self.f_10_Activated;
    self[20] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Activated = self.f_20_Activated;
    self[22] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Activated = self.f_22_Activated;
    self[36] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Activated = self.f_36_Activated;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Activated = self.f_4_Activated;
    self[21] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Activated = self.f_21_Activated;
    self[27] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Activated = self.f_27_Activated;
    self[16] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Activated = self.f_16_Activated;
    self[29] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Activated = self.f_29_Activated;
    self[35] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Activated = self.f_35_Activated;
    self[14] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Activated = self.f_14_Activated;
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.OutpostManager.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Activated = self.f_8_Activated;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = self[1];
    l0.SafeHouse = "2075022551815300295";
    l0.Message = "C3_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_19_Activated()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.SafeHouse = "2074925459272906609";
    l0.Message = "E6_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_7_Activated()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.SafeHouse = "2075032598351978902";
    l0.Message = "C7_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_15_Activated()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.SafeHouse = "2075033162481668799";
    l0.Message = "D7_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_13_Activated()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.SafeHouse = "2075033173290390263";
    l0.Message = "D7_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_34_Activated()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.SafeHouse = "2075228337311064983";
    l0.Message = "G3_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_31_Activated()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.SafeHouse = "2075019584586387496";
    l0.Message = "G2_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_11_Activated()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.SafeHouse = "2075021717226394652";
    l0.Message = "D5_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_23_Activated()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.SafeHouse = "2075019053218404521";
    l0.Message = "G2_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_33_Activated()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.SafeHouse = "2075020887580477168";
    l0.Message = "G4_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_28_Activated()
    local l0;
    self = self._graph;
    l0 = self[23];
    l0.SafeHouse = "2075036196918008368";
    l0.Message = "F5_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_9_Activated()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.SafeHouse = "2075037429567330860";
    l0.Message = "D3_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_5_Activated()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.SafeHouse = "2075032004369324334";
    l0.Message = "C6_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_32_Activated()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.SafeHouse = "2075020887569991351";
    l0.Message = "G4_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_12_Activated()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.SafeHouse = "2075434421994924221";
    l0.Message = "D4_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_30_Activated()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.SafeHouse = "2075240344718460041";
    l0.Message = "G3_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_1_Activated()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.SafeHouse = "2075228574880633702";
    l0.Message = "C4_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_3_Activated()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.SafeHouse = "2075033284131166112";
    l0.Message = "C5_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_6_Activated()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.SafeHouse = "2075034805988235247";
    l0.Message = "C5_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_18_Activated()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.SafeHouse = "2075036162686195124";
    l0.Message = "D5_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_24_Activated()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.SafeHouse = "2075033278363998634";
    l0.Message = "F5_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_25_Activated()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.SafeHouse = "2075019136297082876";
    l0.Message = "F3_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_26_Activated()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.SafeHouse = "2075019193519972403";
    l0.Message = "F3_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_10_Activated()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.SafeHouse = "2075034202742460856";
    l0.Message = "C7_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_20_Activated()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.SafeHouse = "2075035208804993423";
    l0.Message = "D6_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_22_Activated()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.SafeHouse = "2075019202128775234";
    l0.Message = "F2_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_36_Activated()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.SafeHouse = "2075019687640456521";
    l0.Message = "E6_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_4_Activated()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.SafeHouse = "2075834596452213647";
    l0.Message = "C4_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_21_Activated()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.SafeHouse = "2075005070363074554";
    l0.Message = "F4_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_27_Activated()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.SafeHouse = "2075034651543495372";
    l0.Message = "F4_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_16_Activated()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.SafeHouse = "2075435977079269646";
    l0.Message = "D4_2_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_29_Activated()
    self = self._graph;
    self:Activated();
end;

function export:f_35_Activated()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.SafeHouse = "2075017128093684779";
    l0.Message = "F2_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_14_Activated()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.SafeHouse = "2075033159744886303";
    l0.Message = "D6_1_OutpostIsUnlocked";
    l0:Activate();
end;

function export:f_8_Activated()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.SafeHouse = "2075032794949491050";
    l0.Message = "C6_2_OutpostIsUnlocked";
    l0:Activate();
end;

-- Empty out anchor definitions
function export:Activated()
    
end;
_compilerVersion = 24;
