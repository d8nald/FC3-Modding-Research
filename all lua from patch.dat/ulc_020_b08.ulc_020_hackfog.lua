-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_dlc_ulc/ulc_020/ulc_020_b08/ulc_020_b08.domino.xml
-- User graph: ULC_020_HackFog
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
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/OverrideEnvironment.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[23] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[23];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_23_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_7_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[12] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_12_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_25_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[16] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_16_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[11] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_11_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[15] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_15_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_17_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_4_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[22] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[22];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_22_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_13_Out_0;
    l0.Out[1] = self.f_13_Out_1;
    l0.Out[2] = self.f_13_Out_2;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_8_Out_0;
    l0.Out[1] = self.f_8_Out_1;
    l0.Out[2] = self.f_8_Out_2;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_20_Out_0;
    l0.Out[1] = self.f_20_Out_1;
    l0.Out[2] = self.f_20_Out_2;
    l0:In();
end;

function export:f_8_Out_0()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.triggerId = "2075625296874314525";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_8_Out_1()
    local l0;
    self = self._graph;
    l0 = self[4];
    l0.triggerId = "2076808428019261409";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_8_Out_2()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2077943921561843695";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_23_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 3;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog_tunne01";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_7_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 1;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_20_Out_0()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.triggerId = "2077944041539909635";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_20_Out_1()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.triggerId = "2077944067729143815";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_20_Out_2()
    local l0;
    self = self._graph;
    l0 = self[22];
    l0.triggerId = "2077944088841173003";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_13_Out_0()
    local l0;
    self = self._graph;
    l0 = self[15];
    l0.triggerId = "2077943955938359287";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_13_Out_1()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.triggerId = "2077943992718211067";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_13_Out_2()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.triggerId = "2077945075914047862";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_12_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 3;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog_tunne01";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_25_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 3;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog_tunne01";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_16_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 2;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_11_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 2;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 3;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog_tunne01";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_15_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 1;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_17_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 1;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog_tunne01";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Disable();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0.triggerId = "2078052793387598038";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 2;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    self:Out();
    l0 = self[23];
    l0.triggerId = "2076975044312962272";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_22_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment.lua")];
    l0.pawn = nil;
    l0.transitionTime = 2;
    l0.wind = nil;
    l0.shadow = nil;
    l0.cloud = nil;
    l0.lighting = nil;
    l0.exposure = nil;
    l0.fog = "SHA_Quest_ULCs:ULC20.ULC20_fog_tunne01";
    l0.sky = nil;
    l0.stormFactor = nil;
    l0.adaptiveBloom = nil;
    l0.motionBlur = nil;
    l0.depthOfField = nil;
    l0.zoomFov = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:Enable();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
