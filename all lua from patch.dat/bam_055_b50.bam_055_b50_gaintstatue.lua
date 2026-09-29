-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_055/bam_055_b50/bam_055_b50.domino.xml
-- User graph: BAM_055_B50_GaintStatue
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
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.sVisible = true;
    self[1] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_1_Enter;
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
    self[16] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_16_Enter;
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
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    self:en_4();
    l0 = self[4];
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076082005197464086";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_13_Disabled;
    l0:SetDisabled();
    self:en_16();
    l0 = self[16];
    l0:Enable();
end;

function export:f_1_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076659138489754855";
    l0._graph = self;
    l0.Enabled = self.f_3_Enabled;
    l0.Disabled = DummyFunction;
    l0:SetEnabled();
end;

function export:f_5_Disabled()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_5_Enabled()
    local l0;
    self = self._graph;
    self:en_7();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_18_Disabled()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_18_Enabled()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_23_Disabled()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_23_Enabled()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_17_Disabled()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_17_Enabled()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_9_Disabled()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_7_Disabled()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_7_Enabled()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_8_Disabled()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_8_Enabled()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_15_Enter()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_2_Disabled()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
    self:en_4();
    l0 = self[4];
    l0:Disable();
    self:en_1();
    l0 = self[1];
    l0:Enable();
end;

function export:f_25_Disabled()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_25_Enabled()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_19_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Lights On";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:en_16();
    l0 = self[16];
    l0:Disable();
    self:en_15();
    l0 = self[15];
    l0:Enable();
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_19_Enabled()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:Disable();
    self:en_16();
    l0 = self[16];
    l0:Enable();
    self:en_25();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Lights Off";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_16_Enter()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_28_Disabled()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_28_Enabled()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_11_Disabled()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_11_Enabled()
    local l0;
    self = self._graph;
    self:en_12();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_26_Disabled()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_26_Enabled()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_4_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076659138489754855";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
    l0:SetDisabled();
end;

function export:f_13_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076104063178511139";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_3_Enabled()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
    self:en_1();
    l0 = self[1];
    l0:Disable();
    self:en_4();
    l0 = self[4];
    l0:Enable();
end;

function export:f_6_Disabled()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_6_Enabled()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_20_Disabled()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_20_Enabled()
    local l0;
    self = self._graph;
    self:en_19();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_12_Disabled()
    local l0;
    self = self._graph;
    self:en_23();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_12_Enabled()
    local l0;
    self = self._graph;
    self:en_23();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:f_10_Disabled()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetDisabled();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetEnabled();
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.triggerId = "2076660161549706355";
end;

function export:en_5()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2075152759950152865";
    l0._graph = self;
    l0.Enabled = self.f_5_Enabled;
    l0.Disabled = self.f_5_Disabled;
end;

function export:en_24()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076754164379034646";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_18()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076109281171612127";
    l0._graph = self;
    l0.Enabled = self.f_18_Enabled;
    l0.Disabled = self.f_18_Disabled;
end;

function export:en_23()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077929698448386472";
    l0._graph = self;
    l0.Enabled = self.f_23_Enabled;
    l0.Disabled = self.f_23_Disabled;
end;

function export:en_17()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076716452886352765";
    l0._graph = self;
    l0.Enabled = self.f_17_Enabled;
    l0.Disabled = self.f_17_Disabled;
end;

function export:en_9()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077929689371912612";
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = self.f_9_Disabled;
end;

function export:en_7()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076576711180292651";
    l0._graph = self;
    l0.Enabled = self.f_7_Enabled;
    l0.Disabled = self.f_7_Disabled;
end;

function export:en_8()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077929670344452508";
    l0._graph = self;
    l0.Enabled = self.f_8_Enabled;
    l0.Disabled = self.f_8_Disabled;
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.triggerId = "2076758420150555585";
end;

function export:en_25()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076754150581871634";
    l0._graph = self;
    l0.Enabled = self.f_25_Enabled;
    l0.Disabled = self.f_25_Disabled;
end;

function export:en_19()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076740374839174156";
    l0._graph = self;
    l0.Enabled = self.f_19_Enabled;
    l0.Disabled = self.f_19_Disabled;
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.triggerId = "2076758440570524613";
end;

function export:en_28()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077930537063834412";
    l0._graph = self;
    l0.Enabled = self.f_28_Enabled;
    l0.Disabled = self.f_28_Disabled;
end;

function export:en_11()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076564209033811066";
    l0._graph = self;
    l0.Enabled = self.f_11_Enabled;
    l0.Disabled = self.f_11_Disabled;
end;

function export:en_26()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077808565254367173";
    l0._graph = self;
    l0.Enabled = self.f_26_Enabled;
    l0.Disabled = self.f_26_Disabled;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.triggerId = "2076660173641884791";
end;

function export:en_6()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2075969890361024384";
    l0._graph = self;
    l0.Enabled = self.f_6_Enabled;
    l0.Disabled = self.f_6_Disabled;
end;

function export:en_20()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2076740380159648784";
    l0._graph = self;
    l0.Enabled = self.f_20_Enabled;
    l0.Disabled = self.f_20_Disabled;
end;

function export:en_27()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077929685177608608";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
end;

function export:en_12()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077808407496107947";
    l0._graph = self;
    l0.Enabled = self.f_12_Enabled;
    l0.Disabled = self.f_12_Disabled;
end;

function export:en_10()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0.dynamicLightId = "2077808508134238143";
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = self.f_10_Disabled;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
