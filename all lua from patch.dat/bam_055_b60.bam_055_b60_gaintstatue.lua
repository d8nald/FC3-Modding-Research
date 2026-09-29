-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b60/bam_055_b60.domino.xml
-- User graph: BAM_055_B60_GaintStatue
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
        cbox:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self[15] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_15_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_13_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[10] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_10_Enter;
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
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_11();
    l0 = self[11];
    l0:Enable();
    self:en_13();
    l0 = self[13];
    l0:Enable();
    self:en_15();
    l0 = self[15];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076659138489754855";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_15_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076659138489754855";
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_13_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076659138489754855";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
    l0:SetDisabled();
end;

function export:f_4_Disabled()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_4_Enabled()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_2_Disabled()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Enable();
    self:en_13();
    l0 = self[13];
    l0:Disable();
end;

function export:f_9_Disabled()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:Enable();
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
    self:en_11();
    l0 = self[11];
    l0:Disable();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
    self:en_10();
    l0 = self[10];
    l0:Disable();
    self:en_11();
    l0 = self[11];
    l0:Enable();
end;

function export:f_10_Enter()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_11_Enter()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_7_Disabled()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_7_Enabled()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_6_Disabled()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_6_Enabled()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_5_Disabled()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_5_Enabled()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    self:en_13();
    l0 = self[13];
    l0:Enable();
    self:en_15();
    l0 = self[15];
    l0:Disable();
end;

function export:f_8_Disabled()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_8_Enabled()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_14_Disabled()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_14_Enabled()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.triggerId = "2076660161549706355";
end;

function export:en_13()
    local l0;
    l0 = self[13];
    l0.triggerId = "2076660173641884791";
end;

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076716452886352765";
    l0._graph = self;
    l0.Enabled = self.f_4_Enabled;
    l0.Disabled = self.f_4_Disabled;
end;

function export:en_12()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076754164379034646";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076740374839174156";
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = self.f_9_Disabled;
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.triggerId = "2076758420150555585";
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.triggerId = "2076758440570524613";
end;

function export:en_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076754150581871634";
    l0._graph = self;
    l0.Enabled = self.f_7_Enabled;
    l0.Disabled = self.f_7_Disabled;
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076757634108625464";
    l0._graph = self;
    l0.Enabled = self.f_6_Enabled;
    l0.Disabled = self.f_6_Disabled;
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076109281171612127";
    l0._graph = self;
    l0.Enabled = self.f_5_Enabled;
    l0.Disabled = self.f_5_Disabled;
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076757689091756607";
    l0._graph = self;
    l0.Enabled = self.f_8_Enabled;
    l0.Disabled = self.f_8_Disabled;
end;

function export:en_14()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076740380159648784";
    l0._graph = self;
    l0.Enabled = self.f_14_Enabled;
    l0.Disabled = self.f_14_Disabled;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
