-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: AnimalSQWeaponsClassCheck
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="WeaponUsed" Type="Core|string" />
    <DataIn Name="WeaponAllowed" Type="Core|string" />
    <DataIn Name="WeaponInstigator" Type="Nomad|entity{}" />
    <DataIn Name="SourceType" Type="Core|string" />
</InputReflection> 
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
        cbox:RegisterBox("Domino/System/CompareIntegers.lua");
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/GetWeaponClass.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/SetOasis.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.Fail = DummyFunction;
    self.Success = DummyFunction;
    self.weaponClass = 0;
    self[114] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[114];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_114_Out_0;
    l0.ResetOut = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.SourceType;
    l0.B = "WeaponMeleeAttack";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_25_A_eq_B;
    l0.A_neq_B = self.f_25_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_21_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_21_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.SourceType;
    l0.B = "FirePropagation";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_8_A_eq_B;
    l0.A_neq_B = self.f_8_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_4_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_4_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_Flamethrower",
        id = "160229",
    };
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0:FromOasis();
end;

function export:f_115_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_115_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_RPG",
        id = "160227",
    };
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:FromOasis();
end;

function export:f_13_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_13_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_Shotgun",
        id = "160222",
    };
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:FromOasis();
end;

function export:f_25_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_25_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetWeaponClass.lua")];
    l0.pawn = self.WeaponInstigator;
    l0.weaponName = self.WeaponUsed;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:f_110_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponUsed;
    l0.B = "";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_112_A_eq_B;
    l0.A_neq_B = self.f_112_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_110_Yes()
    local l0;
    self = self._graph;
    self:en_66();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:String();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "WeaponUsed is Nil";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_62_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_62_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponUsed;
    l0.B = "FireStickyStream";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_21_A_eq_B;
    l0.A_neq_B = self.f_21_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_65_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_65_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.SourceType;
    l0.B = "Player Attack";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_56_A_eq_B;
    l0.A_neq_B = self.f_56_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_114_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "pistol";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_5_A_eq_B;
    l0.A_neq_B = self.f_5_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_5_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 1;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_51_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_51_A_ne_B;
    l0:In();
end;

function export:f_5_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "smg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_15_A_eq_B;
    l0.A_neq_B = self.f_15_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_17_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 15;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_12_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_12_A_ne_B;
    l0:In();
end;

function export:f_17_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "lmg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_20_A_eq_B;
    l0.A_neq_B = self.f_20_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_15_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 3;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_30_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_30_A_ne_B;
    l0:In();
end;

function export:f_15_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "shotgun";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_22_A_eq_B;
    l0.A_neq_B = self.f_22_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_55_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_55_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_Bow",
        id = "160224",
    };
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:FromOasis();
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_56_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_56_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_Machete",
        id = "160225",
    };
    l0._graph = self;
    l0.Out = self.f_53_Out;
    l0:FromOasis();
end;

function export:f_116_A_eq_B()
    local l0;
    self = self._graph;
    self:Success();
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "SourceType is Empty";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_116_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.SourceType;
    l0.B = "Generic";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_121_A_eq_B;
    l0.A_neq_B = self.f_121_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_20_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 6;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_16_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_16_A_ne_B;
    l0:In();
end;

function export:f_20_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "assault";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_10_A_eq_B;
    l0.A_neq_B = self.f_10_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_64_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_64_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_Sniper",
        id = "160226",
    };
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:FromOasis();
end;

function export:f_43_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_43_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_Assault",
        id = "160223",
    };
    l0._graph = self;
    l0.Out = self.f_109_Out;
    l0:FromOasis();
end;

function export:f_66_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.SourceType;
    l0.B = "";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_116_A_eq_B;
    l0.A_neq_B = self.f_116_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_66_Yes()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "SourceType is Nil";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    self:Success();
end;

function export:f_60_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_60_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponUsed;
    l0.B = "RPG-7_Rocket";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_117_A_eq_B;
    l0.A_neq_B = self.f_117_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetWeaponClass.lua")];
    self.weaponClass = l0.weaponClass;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = self.WeaponUsed;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_110_Yes;
    l0.No = self.f_110_No;
    l0:String();
end;

function export:f_112_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "WeaponUsed is Empty";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "green";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:en_66();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0:String();
end;

function export:f_112_A_neq_B()
    local l0;
    self = self._graph;
    l0 = self[114];
    l0:In(0);
end;

function export:f_58_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_8_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_8_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.SourceType;
    l0.B = "FlameThrowerBurn";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_4_A_eq_B;
    l0.A_neq_B = self.f_4_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_11_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 9;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_62_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_62_A_ne_B;
    l0:In();
end;

function export:f_11_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "rpg";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_54_A_eq_B;
    l0.A_neq_B = DummyFunction;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_22_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 4;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_13_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_13_A_ne_B;
    l0:In();
end;

function export:f_22_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "machete";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_52_A_eq_B;
    l0.A_neq_B = self.f_52_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_53_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_121_A_eq_B()
    local l0;
    self = self._graph;
    self:en_111();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    self:Success();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "SourceType is Generic";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "red";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_121_A_neq_B()
    local l0;
    self = self._graph;
    l0 = self[114];
    l0:In(0);
end;

function export:f_117_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_117_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.SourceType;
    l0.B = "FirePropagation";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_24_A_eq_B;
    l0.A_neq_B = self.f_24_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_54_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 7;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_60_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_60_A_ne_B;
    l0:In();
end;

function export:f_10_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 2;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_43_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_43_A_ne_B;
    l0:In();
end;

function export:f_10_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "flamethrower";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_11_A_eq_B;
    l0.A_neq_B = self.f_11_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_6_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_51_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_51_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_Pistol",
        id = "160219",
    };
    l0._graph = self;
    l0.Out = self.f_6_Out;
    l0:FromOasis();
end;

function export:f_52_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 0;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_65_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_65_A_ne_B;
    l0:In();
end;

function export:f_52_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "sniper";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_7_A_eq_B;
    l0.A_neq_B = self.f_7_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_12_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_12_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponUsed;
    l0.B = "arrow";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_55_A_eq_B;
    l0.A_neq_B = self.f_55_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_24_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_24_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.SourceType;
    l0.B = "FirePropagation";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_115_A_eq_B;
    l0.A_neq_B = self.f_115_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_16_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_16_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_LMG",
        id = "160221",
    };
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:FromOasis();
end;

function export:f_30_A_eq_B()
    self = self._graph;
    self:Success();
end;

function export:f_30_A_ne_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    l0.Oasis = {
        section = "Common",
        item = "SQA_Fail_Weapon_SMG",
        id = "160220",
    };
    l0._graph = self;
    l0.Out = self.f_58_Out;
    l0:FromOasis();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetOasis.lua")];
    self.FailReason = l0.Target;
    self:Fail();
end;

function export:f_7_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0.A = self.weaponClass;
    l0.B = 5;
    l0._graph = self;
    l0.A_lt_B = DummyFunction;
    l0.A_le_B = DummyFunction;
    l0.A_eq_B = self.f_64_A_eq_B;
    l0.A_ge_B = DummyFunction;
    l0.A_gt_B = DummyFunction;
    l0.A_ne_B = self.f_64_A_ne_B;
    l0:In();
end;

function export:f_7_A_neq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.WeaponAllowed;
    l0.B = "bow";
    l0.IgnoreCase = true;
    l0._graph = self;
    l0.A_eq_B = self.f_17_A_eq_B;
    l0.A_neq_B = self.f_17_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:en_111()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Drowning";
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
end;

function export:en_66()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = self.SourceType;
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.ent = nil;
    l0.anim = nil;
    l0.group = nil;
    l0.oasis = nil;
    l0.sound = nil;
    l0.script = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Yes = self.f_66_Yes;
    l0.No = self.f_66_No;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:Fail()
    
end;
function export:Success()
    
end;
_compilerVersion = 24;
