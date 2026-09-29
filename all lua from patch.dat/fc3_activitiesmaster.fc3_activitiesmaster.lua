-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_activitiesmaster.domino.xml
-- User graph: FC3_ActivitiesMaster
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C3_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C4_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C5_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C6_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C7_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.D3_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.D4_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.D6_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.D7_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.E6_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.F2_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.F3_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.F4_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.F5_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.G2_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.G3_Activities.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.G4_Activities.lua");
        cbox:RegisterBox("Domino/System/MessageListener_v3.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[11] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.F4_Activities.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Initialized = self.f_11_Initialized;
    self[15] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.G4_Activities.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Initialized = self.f_15_Initialized;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.D4_Activities.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Initialized = self.f_3_Initialized;
    self[12] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.G3_Activities.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Initialized = self.f_12_Initialized;
    self[10] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.D7_Activities.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Initialized = self.f_10_Initialized;
    self[9] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C6_Activities.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Initialized = self.f_9_Initialized;
    self[13] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.D3_Activities.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Initialized = self.f_13_Initialized;
    self[8] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C5_Activities.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Initialized = self.f_8_Initialized;
    self[16] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.F2_Activities.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Initialized = self.f_16_Initialized;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.F3_Activities.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    self[18] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_18_Received;
    self[17] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C4_Activities.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Initialized = self.f_17_Initialized;
    self[19] = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self[19];
    l0._graph = self;
    l0.Enabled = self.f_19_Enabled;
    l0.Disabled = DummyFunction;
    l0.Received = self.f_19_Received;
    self[4] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.E6_Activities.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Initialized = self.f_4_Initialized;
    self[6] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.F5_Activities.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Initialized = self.f_6_Initialized;
    self[2] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.D6_Activities.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Initialized = self.f_2_Initialized;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C7_Activities.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.C3_Activities.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Initialized = self.f_7_Initialized;
    self[14] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.G2_Activities.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Initialized = self.f_14_Initialized;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[7];
    l0:Initialize();
    self:en_18();
    l0 = self[18];
    l0:Enable();
end;

function export:f_25_Added()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_25_Removed()
    local l0;
    self = self._graph;
    self:en_32();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_24_Added()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_24_Removed()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_11_Initialized()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Initialize();
end;

function export:f_15_Initialized()
    self = self._graph;
    self:Initialized();
end;

function export:f_3_Initialized()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:Initialize();
end;

function export:f_12_Initialized()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0:Initialize();
end;

function export:f_30_Added()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_30_Removed()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_21_Added()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_21_Removed()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_10_Initialized()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0:Initialize();
end;

function export:f_9_Initialized()
    local l0;
    self = self._graph;
    l0 = self[1];
    l0:Initialize();
end;

function export:f_13_Initialized()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Initialize();
end;

function export:f_31_Added()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_31_Removed()
    local l0;
    self = self._graph;
    self:en_30();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_8_Initialized()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Initialize();
end;

function export:f_16_Initialized()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Initialize();
end;

function export:f_22_Added()
    local l0;
    self = self._graph;
    self:en_23();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_22_Removed()
    local l0;
    self = self._graph;
    self:en_23();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_32_Added()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_32_Removed()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_27_Added()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_27_Removed()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0:Initialize();
end;

function export:f_29_Added()
    local l0;
    self = self._graph;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_29_Removed()
    local l0;
    self = self._graph;
    self:en_33();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_18_Received()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
    l0 = self[19];
    l0.message = "OnExclusiveMissionStop";
    l0:Enable();
end;

function export:f_28_Added()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_28_Removed()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_17_Initialized()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Initialize();
end;

function export:f_19_Enabled()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_19_Received()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
    self:en_18();
    l0 = self[18];
    l0:Enable();
end;

function export:f_23_Added()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_23_Removed()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_4_Initialized()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:Initialize();
end;

function export:f_6_Initialized()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:Initialize();
end;

function export:f_2_Initialized()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:Initialize();
end;

function export:f_1_Initialized()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Initialize();
end;

function export:f_26_Added()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Add();
end;

function export:f_26_Removed()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0:Remove();
end;

function export:f_7_Initialized()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0:Initialize();
end;

function export:f_14_Initialized()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0:Initialize();
end;

function export:en_25()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887360879998982";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_25_Added;
    l0.Removed = self.f_25_Removed;
end;

function export:en_20()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_24()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887204526838037";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_24_Added;
    l0.Removed = self.f_24_Removed;
end;

function export:en_30()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887660860820864";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_30_Added;
    l0.Removed = self.f_30_Removed;
end;

function export:en_21()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076901588649135596";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_21_Added;
    l0.Removed = self.f_21_Removed;
end;

function export:en_31()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887570853150675";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_31_Added;
    l0.Removed = self.f_31_Removed;
end;

function export:en_22()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887494988701219";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_22_Added;
    l0.Removed = self.f_22_Removed;
end;

function export:en_32()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887769799473988";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_32_Added;
    l0.Removed = self.f_32_Removed;
end;

function export:en_27()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887601473663206";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_27_Added;
    l0.Removed = self.f_27_Removed;
end;

function export:en_29()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887732788935094";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_29_Added;
    l0.Removed = self.f_29_Removed;
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.message = "OnExclusiveMissionStart";
end;

function export:en_28()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887290321320487";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_28_Added;
    l0.Removed = self.f_28_Removed;
end;

function export:en_33()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
end;

function export:en_23()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887397200590905";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_23_Added;
    l0.Removed = self.f_23_Removed;
end;

function export:en_26()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2076887669358482879";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_26_Added;
    l0.Removed = self.f_26_Removed;
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
