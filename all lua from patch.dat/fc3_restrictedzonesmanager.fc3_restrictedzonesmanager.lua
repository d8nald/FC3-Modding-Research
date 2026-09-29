-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_restrictedzonesmanager.domino.xml
-- User graph: FC3_RestrictedZonesManager
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Activated = DummyFunction;
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Activated = self.f_8_Activated;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Activated = self.f_1_Activated;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Activated = self.f_7_Activated;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Activated = self.f_2_Activated;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Activated = self.f_10_Activated;
    self[18] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Activated = self.f_18_Activated;
    self[16] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Activated = self.f_16_Activated;
    self[17] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Activated = self.f_17_Activated;
    self[15] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Activated = self.f_15_Activated;
    self[13] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Activated = self.f_13_Activated;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Activated = self.f_9_Activated;
    self[11] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Activated = self.f_11_Activated;
    self[12] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Activated = self.f_12_Activated;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Activated = self.f_4_Activated;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Activated = self.f_6_Activated;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Activated = self.f_5_Activated;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Activated = self.f_3_Activated;
    self[14] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.RestrictedZoneManager.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Activated = self.f_14_Activated;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    local l0;
    l0 = self[3];
    l0.Message = "F2_2_OutpostIsUnlocked";
    l0.MissionBlockLayer = "138303250934074";
    l0:Activate();
end;

function export:f_8_Activated()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.Message = "SAM_015_IsCompleted";
    l0.MissionBlockLayer = "153260690585237596";
    l0:Activate();
end;

function export:f_1_Activated()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.Message = "G3_2_OutpostIsUnlocked";
    l0.MissionBlockLayer = "90210295798784206";
    l0:Activate();
end;

function export:f_7_Activated()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.Message = "F4_1_OutpostIsUnlocked";
    l0.MissionBlockLayer = "36167100270212362";
    l0:Activate();
end;

function export:f_2_Activated()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Message = "G2_1_OutpostIsUnlocked";
    l0.MissionBlockLayer = "72195897289273098";
    l0:Activate();
end;

function export:f_10_Activated()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Message = "F5_1_OutpostIsUnlocked";
    l0.MissionBlockLayer = "54181498779730142";
    l0:Activate();
end;

function export:f_18_Activated()
    self = self._graph;
    self:Activated();
end;

function export:f_16_Activated()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.Message = "SQC_070_IsCompleted";
    l0.MissionBlockLayer = "135246292072613012";
    l0:Activate();
end;

function export:f_17_Activated()
    local l0;
    self = self._graph;
    l0 = self[18];
    l0.Message = "SQC_100_IsCompleted";
    l0.MissionBlockLayer = "144253491327359463";
    l0:Activate();
end;

function export:f_15_Activated()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.Message = "SQC_060_IsCompleted";
    l0.MissionBlockLayer = "126239092817866439";
    l0:Activate();
end;

function export:f_13_Activated()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0.Message = "G2_2_OutpostIsUnlocked";
    l0.MissionBlockLayer = "81203096544030344";
    l0:Activate();
end;

function export:f_9_Activated()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.Message = "F3_1_OutpostIsUnlocked";
    l0.MissionBlockLayer = "27159901015458708";
    l0:Activate();
end;

function export:f_11_Activated()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.Message = "F5_2_OutpostIsUnlocked";
    l0.MissionBlockLayer = "63188698034487318";
    l0:Activate();
end;

function export:f_12_Activated()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Message = "F4_2_OutpostIsUnlocked";
    l0.MissionBlockLayer = "45174299524968466";
    l0:Activate();
end;

function export:f_4_Activated()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0.Message = "G3_1_OutpostIsUnlocked";
    l0.MissionBlockLayer = "99217495053538759";
    l0:Activate();
end;

function export:f_6_Activated()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Message = "G4_1_OutpostIsUnlocked";
    l0.MissionBlockLayer = "108224694308295953";
    l0:Activate();
end;

function export:f_5_Activated()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.Message = "F3_2_OutpostIsUnlocked";
    l0.MissionBlockLayer = "18152701760706570";
    l0:Activate();
end;

function export:f_3_Activated()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Message = "F2_1_OutpostIsUnlocked";
    l0.MissionBlockLayer = "9145502505691987";
    l0:Activate();
end;

function export:f_14_Activated()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.Message = "G4_2_OutpostIsUnlocked";
    l0.MissionBlockLayer = "117231893563057006";
    l0:Activate();
end;

-- Empty out anchor definitions
function export:Activated()
    
end;
_compilerVersion = 24;
