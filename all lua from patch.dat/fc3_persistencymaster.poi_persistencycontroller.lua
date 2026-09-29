-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_persistencymaster.domino.xml
-- User graph: POI_PersistencyController
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
        cbox:RegisterBox("Domino/System/CollectibleListener.lua");
        cbox:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Initialized = DummyFunction;
    self[37] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[37];
    l0._graph = self;
    l0.Enabled = self.f_37_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_37_Collected;
    self[18] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[18];
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_18_Collected;
    self[5] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Enabled = self.f_5_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_5_Collected;
    self[33] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Enabled = self.f_33_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_33_Collected;
    self[9] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_9_Collected;
    self[76] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[76];
    l0._graph = self;
    l0.Enabled = self.f_76_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_76_Collected;
    self[13] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = self.f_13_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_13_Collected;
    self[21] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Enabled = self.f_21_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_21_Collected;
    self[14] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Enabled = self.f_14_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_14_Collected;
    self[53] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Enabled = self.f_53_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_53_Collected;
    self[25] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = self.f_25_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_25_Collected;
    self[30] = cbox:CreateBox("Domino/System/CollectibleListener.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Enabled = self.f_30_Enabled;
    l0.Disabled = DummyFunction;
    l0.Collected = self.f_30_Collected;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Initialize()
    local l0;
    l0 = self[33];
    l0.collectibleId = "2075338873197567329";
    l0:Enable();
end;

function export:f_37_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138304597411046";
    l0.missionLayerId = "18152703106954701";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_37_Enabled()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0.collectibleId = "2075034918498343904";
    l0:Enable();
end;

function export:f_59_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269583008150";
    l0.missionLayerId = "9145468837749142";
    l0._graph = self;
    l0.Activated = self.f_63_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0:In();
end;

function export:f_42_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269555241273";
    l0.missionLayerId = "9145468825442222";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_18_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269437641331";
    l0.missionLayerId = "9145468692382323";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_10_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    l0 = self[76];
    l0.collectibleId = "2075034132091532174";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269437641331";
    l0.missionLayerId = "9145468692382323";
    l0._graph = self;
    l0.Activated = self.f_8_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_38_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "36167066574242687";
    l0.missionLayerId = "138269570657110";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_69_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269704248049";
    l0.missionLayerId = "18152668213774667";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_1_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138280723983760";
    l0.missionLayerId = "18152679233498922";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_8_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269437641331";
    l0.missionLayerId = "138269574399797";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_5_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269704248049";
    l0.missionLayerId = "9145468958989042";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_69_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_5_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269704248049";
    l0.missionLayerId = "9145468958989042";
    l0._graph = self;
    l0.Activated = self.f_66_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    self:Initialized();
end;

function export:f_26_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "18152668069973320";
    l0.missionLayerId = "45174265834730091";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_72_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269546700679";
    l0.missionLayerId = "36167066581430681";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_44_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269555241273";
    l0.missionLayerId = "9145468825442222";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_23_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "18152668069973320";
    l0.missionLayerId = "45174265834730091";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_50_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269561239413";
    l0.missionLayerId = "18152668070769377";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_33_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269555241273";
    l0.missionLayerId = "9145468809982265";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_42_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_33_Enabled()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.collectibleId = "2075337646879549725";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269555241273";
    l0.missionLayerId = "9145468809982265";
    l0._graph = self;
    l0.Activated = self.f_44_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_73_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269546700679";
    l0.missionLayerId = "36167066581430681";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_34_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269559150071";
    l0.missionLayerId = "18152668068718917";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_9_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "18152668069973320";
    l0.missionLayerId = "27159867324714312";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_23_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "18152668069973320";
    l0.missionLayerId = "27159867324714312";
    l0._graph = self;
    l0.Activated = self.f_26_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = self[18];
    l0.collectibleId = "2075325881861020567";
    l0:Enable();
end;

function export:f_76_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269546700679";
    l0.missionLayerId = "9145468801441671";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_73_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_76_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269546700679";
    l0.missionLayerId = "9145468801441671";
    l0._graph = self;
    l0.Activated = self.f_72_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = self[25];
    l0.collectibleId = "2076196705522431480";
    l0:Enable();
end;

function export:f_13_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269562267484";
    l0.missionLayerId = "9145468817008476";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_16_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_13_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269562267484";
    l0.missionLayerId = "9145468817008476";
    l0._graph = self;
    l0.Activated = self.f_11_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = self[14];
    l0.collectibleId = "2075338868787256672";
    l0:Enable();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = self[37];
    l0.collectibleId = "2076944823515908983";
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269561239413";
    l0.missionLayerId = "9145468815980405";
    l0._graph = self;
    l0.Activated = self.f_50_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_36_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "36167066574242687";
    l0.missionLayerId = "138269570657110";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_22_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269559469500";
    l0.missionLayerId = "9145468814210492";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_10_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269437641331";
    l0.missionLayerId = "138269574399797";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_21_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269559469500";
    l0.missionLayerId = "36167066579872325";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_22_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_21_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269559469500";
    l0.missionLayerId = "36167066579872325";
    l0._graph = self;
    l0.Activated = self.f_17_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = self[9];
    l0.collectibleId = "2075309747237557775";
    l0:Enable();
end;

function export:f_14_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "36167066574242687";
    l0.missionLayerId = "45174265828983679";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_36_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_14_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "36167066574242687";
    l0.missionLayerId = "45174265828983679";
    l0._graph = self;
    l0.Activated = self.f_38_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_59_Out;
    l0:In();
end;

function export:f_17_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269559469500";
    l0.missionLayerId = "9145468814210492";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_11_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269562267484";
    l0.missionLayerId = "18152668071814031";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_56_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269570614075";
    l0.missionLayerId = "36167066589850325";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_3_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138280723983760";
    l0.missionLayerId = "18152679233498922";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_53_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269570614075";
    l0.missionLayerId = "9145468825355067";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_55_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_53_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269570614075";
    l0.missionLayerId = "9145468825355067";
    l0._graph = self;
    l0.Activated = self.f_56_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = self[21];
    l0.collectibleId = "2075298819613922980";
    l0:Enable();
end;

function export:f_55_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269570614075";
    l0.missionLayerId = "36167066589850325";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_16_Deactivated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269562267484";
    l0.missionLayerId = "18152668071814031";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
end;

function export:f_63_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269583008150";
    l0.missionLayerId = "18152668092568095";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_29_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269559150071";
    l0.missionLayerId = "18152668068718917";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_25_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138280723983760";
    l0.missionLayerId = "9145479978724753";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_3_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_25_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138280723983760";
    l0.missionLayerId = "9145479978724753";
    l0._graph = self;
    l0.Activated = self.f_1_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = self[5];
    l0.collectibleId = "2075350885698904658";
    l0:Enable();
end;

function export:f_66_Activated()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269704248049";
    l0.missionLayerId = "18152668213774667";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_30_Collected()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269559150071";
    l0.missionLayerId = "9145468813891063";
    l0._graph = self;
    l0.Activated = DummyFunction;
    l0.Deactivated = self.f_34_Deactivated;
    l0.Disabled = DummyFunction;
    l0:Deactivate();
end;

function export:f_30_Enabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0.missionBlockId = "138269559150071";
    l0.missionLayerId = "9145468813891063";
    l0._graph = self;
    l0.Activated = self.f_29_Activated;
    l0.Deactivated = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Activate();
    l0 = self[53];
    l0.collectibleId = "2075327055372754578";
    l0:Enable();
end;

-- Empty out anchor definitions
function export:Initialized()
    
end;
_compilerVersion = 24;
