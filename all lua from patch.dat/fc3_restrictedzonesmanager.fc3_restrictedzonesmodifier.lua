-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_restrictedzonesmanager.domino.xml
-- User graph: FC3_RestrictedZonesModifier
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneMission.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[31] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    self[36] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Out = self.f_36_Out;
    self[26] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[26];
    l0._graph = self;
    l0.Out = self.f_26_Out;
    self[22] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneMission.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Out = self.f_22_Out;
    self[27] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    self[29] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Out = self.f_29_Out;
    self[20] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneMission.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Out = self.f_20_Out;
    self[21] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneMission.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    self[35] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    self[25] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    self[34] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Out = self.f_34_Out;
    self[23] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Out = self.f_23_Out;
    self[32] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = self.f_32_Out;
    self[24] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    self[28] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Out = self.f_28_Out;
    self[30] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    self[33] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneOutpost.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = self.f_33_Out;
    self[19] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.EnableRestrictZoneMission.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Out = self.f_19_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:DisableAll()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "138303250934074";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_1_Disabled;
    l0:Disable();
end;

function export:EnableAll()
    local l0;
    l0 = self[23];
    l0.SafeHouseID = "2075019202128775234";
    l0.MissionBlockLayer = "138303250934074";
    l0:Enable();
end;

function export:f_5_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "45174299524968466";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_6_Disabled;
    l0:Disable();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.MissionName = "SAM_015_MAIN";
    l0.MissionBlockLayer = "153260690585237596";
    l0:Enable();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = self[35];
    l0.SafeHouseID = "2075019584586387496";
    l0.MissionBlockLayer = "81203096544030344";
    l0:Enable();
end;

function export:f_26_Out()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0.SafeHouseID = "2075005070363074554";
    l0.MissionBlockLayer = "36167100270212362";
    l0:Enable();
end;

function export:f_22_Out()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.MissionName = "SQC_100_MAIN";
    l0.MissionBlockLayer = "144253491327359463";
    l0:Enable();
end;

function export:f_6_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "54181498779730142";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_7_Disabled;
    l0:Disable();
end;

function export:f_17_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "144253491327359463";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_18_Disabled;
    l0:Disable();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0.SafeHouseID = "2075034651543495372";
    l0.MissionBlockLayer = "45174299524968466";
    l0:Enable();
end;

function export:f_29_Out()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.SafeHouseID = "2075036196918008368";
    l0.MissionBlockLayer = "63188698034487318";
    l0:Enable();
end;

function export:f_8_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "72195897289273098";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_9_Disabled;
    l0:Disable();
end;

function export:f_7_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "63188698034487318";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_8_Disabled;
    l0:Disable();
end;

function export:f_20_Out()
    self = self._graph;
    self:Out();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.MissionName = "SQC_070_MAIN";
    l0.MissionBlockLayer = "135246292072613012";
    l0:Enable();
end;

function export:f_12_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "108224694308295953";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_13_Disabled;
    l0:Disable();
end;

function export:f_2_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "18152701760706570";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_3_Disabled;
    l0:Disable();
end;

function export:f_16_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "135246292072613012";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_17_Disabled;
    l0:Disable();
end;

function export:f_18_Disabled()
    self = self._graph;
    self:Out();
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = self[34];
    l0.SafeHouseID = "2075240344718460041";
    l0.MissionBlockLayer = "90210295798784206";
    l0:Enable();
end;

function export:f_9_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "81203096544030344";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_10_Disabled;
    l0:Disable();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[26];
    l0.SafeHouseID = "2075019193519972403";
    l0.MissionBlockLayer = "27159901015458708";
    l0:Enable();
end;

function export:f_15_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "126239092817866439";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_16_Disabled;
    l0:Disable();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.SafeHouseID = "2075228337311064983";
    l0.MissionBlockLayer = "99217495053538759";
    l0:Enable();
end;

function export:f_23_Out()
    local l0;
    self = self._graph;
    l0 = self[24];
    l0.SafeHouseID = "2075017128093684779";
    l0.MissionBlockLayer = "9145502505691987";
    l0:Enable();
end;

function export:f_4_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "36167100270212362";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_5_Disabled;
    l0:Disable();
end;

function export:f_1_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "9145502505691987";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
    l0:Disable();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0.SafeHouseID = "2075020887569991351";
    l0.MissionBlockLayer = "117231893563057006";
    l0:Enable();
end;

function export:f_11_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "99217495053538759";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_12_Disabled;
    l0:Disable();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.SafeHouseID = "2075019136297082876";
    l0.MissionBlockLayer = "18152701760706570";
    l0:Enable();
end;

function export:f_28_Out()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.SafeHouseID = "2075033278363998634";
    l0.MissionBlockLayer = "54181498779730142";
    l0:Enable();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.SafeHouseID = "2075019053218404521";
    l0.MissionBlockLayer = "72195897289273098";
    l0:Enable();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.SafeHouseID = "2075020887580477168";
    l0.MissionBlockLayer = "108224694308295953";
    l0:Enable();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.MissionName = "SQC_060_MAIN";
    l0.MissionBlockLayer = "126239092817866439";
    l0:Enable();
end;

function export:f_13_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "117231893563057006";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_14_Disabled;
    l0:Disable();
end;

function export:f_3_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "27159901015458708";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_4_Disabled;
    l0:Disable();
end;

function export:f_14_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "153260690585237596";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_15_Disabled;
    l0:Disable();
end;

function export:f_10_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138298420147252";
    l0.missionLayerId = "90210295798784206";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = self.f_11_Disabled;
    l0:Disable();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
