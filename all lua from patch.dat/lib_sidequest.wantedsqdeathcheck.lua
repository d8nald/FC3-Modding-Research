-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/library/sp/lib_sidequest.domino.xml
-- User graph: WantedSQDeathCheck
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="target" Type="Nomad|entity{}" />
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
        cbox:RegisterBox("Domino/System/CompareEntity.lua");
        cbox:RegisterBox("Domino/System/CompareStrings.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cbox:RegisterBox("Domino/System/HealthListener_v4.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/PawnKillListener.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.KilledSuccess = DummyFunction;
    self.KilledFail = DummyFunction;
    self.killedSourceType = "";
    self.killedInstigator = nil;
    self[2] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_2_KillSuccess;
    l0.KillFail = self.f_2_KillFail;
    self[25] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[25];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_25_Out_0;
    l0.ResetOut = DummyFunction;
    self[4] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_4_KillSuccess;
    l0.KillFail = self.f_4_KillFail;
    self[9] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[9];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 11,
    };
    l0.Out = self.f_9_Out;
    self[32] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_32_KillSuccess;
    l0.KillFail = self.f_32_KillFail;
    self[35] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[35];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_35_KillSuccess;
    l0.KillFail = self.f_35_KillFail;
    self[29] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_29_KillSuccess;
    l0.KillFail = self.f_29_KillFail;
    self[1] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_1_KillSuccess;
    l0.KillFail = self.f_1_KillFail;
    self[43] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[43];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_43_KillSuccess;
    l0.KillFail = self.f_43_KillFail;
    self[3] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_3_KillSuccess;
    l0.KillFail = self.f_3_KillFail;
    self[15] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[15];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_15_KillSuccess;
    l0.KillFail = self.f_15_KillFail;
    self[20] = cbox:CreateBox("Domino/System/HealthListener_v4.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Damaged = self.f_20_Damaged;
    l0.Healed = self.f_20_Healed;
    l0.Critical = self.f_20_Critical;
    l0.Killed = self.f_20_Killed;
    l0.Torso = self.f_20_Torso;
    l0.Head = self.f_20_Head;
    l0.Leg = self.f_20_Leg;
    self[38] = cbox:CreateBox("Domino/System/PawnKillListener.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.KillSuccess = self.f_38_KillSuccess;
    l0.KillFail = self.f_38_KillFail;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Disable()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Disable();
    self:en_2();
    l0 = self[2];
    l0:Disable();
    self:en_3();
    l0 = self[3];
    l0:Disable();
    self:en_4();
    l0 = self[4];
    l0:Disable();
    self:en_15();
    l0 = self[15];
    l0:Disable();
    self:en_20();
    l0 = self[20];
    l0:Disable();
    self:en_29();
    l0 = self[29];
    l0:Disable();
    self:en_32();
    l0 = self[32];
    l0:Disable();
    self:en_35();
    l0 = self[35];
    l0:Disable();
    self:en_38();
    l0 = self[38];
    l0:Disable();
    self:en_43();
    l0 = self[43];
    l0:Disable();
end;

function export:Enable()
    local l0;
    self:en_1();
    l0 = self[1];
    l0:Enable();
    self:en_2();
    l0 = self[2];
    l0:Enable();
    self:en_3();
    l0 = self[3];
    l0:Enable();
    self:en_4();
    l0 = self[4];
    l0:Enable();
    self:en_15();
    l0 = self[15];
    l0:Enable();
    self:en_20();
    l0 = self[20];
    l0:Enable();
    self:en_29();
    l0 = self[29];
    l0:Enable();
    self:en_32();
    l0 = self[32];
    l0:Enable();
    self:en_35();
    l0 = self[35];
    l0:Enable();
    self:en_38();
    l0 = self[38];
    l0:Enable();
    self:en_43();
    l0 = self[43];
    l0:Enable();
end;

function export:f_2_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(1);
end;

function export:f_2_KillSuccess()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "MeleeTakedown";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:KilledSuccess();
end;

function export:f_25_Out_0()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(10);
end;

function export:f_21_A_eq_B()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "WeaponMeleeAttack";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:KilledSuccess();
end;

function export:f_21_A_neq_B()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In(0);
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self._sld_LocalPlayer_8 = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0.Entity1 = self._sld_LocalPlayer_8;
    l0.Entity2 = self.killedInstigator;
    l0._graph = self;
    l0.Equal = self.f_5_Equal;
    l0.NotEqual = self.f_5_NotEqual;
    l0:In();
end;

function export:f_4_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(4);
end;

function export:f_4_KillSuccess()
    local l0;
    self = self._graph;
    self:KilledSuccess();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "knifeThrowTakedown";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_24_No()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0.A = self.killedSourceType;
    l0.B = "WeaponMeleeAttack";
    l0.IgnoreCase = nil;
    l0._graph = self;
    l0.A_eq_B = self.f_21_A_eq_B;
    l0.A_neq_B = self.f_21_A_neq_B;
    l0.A_contains_B = DummyFunction;
    l0.A_ncontains_B = DummyFunction;
    l0:In();
end;

function export:f_24_Yes()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In(0);
end;

function export:f_9_Out()
    self = self._graph;
    self:KilledFail();
end;

function export:f_32_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(6);
end;

function export:f_32_KillSuccess()
    local l0;
    self = self._graph;
    self:KilledSuccess();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "water_td_double";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_35_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(7);
end;

function export:f_35_KillSuccess()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ledge_td_single";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:KilledSuccess();
end;

function export:f_29_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(5);
end;

function export:f_29_KillSuccess()
    local l0;
    self = self._graph;
    self:KilledSuccess();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "water_td_single";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_1_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(2);
end;

function export:f_1_KillSuccess()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "above_takedown_kill";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:KilledSuccess();
end;

function export:f_43_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(9);
end;

function export:f_43_KillSuccess()
    local l0;
    self = self._graph;
    self:KilledSuccess();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "is_chain_takedown";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_17_Equal()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:In(0);
end;

function export:f_17_NotEqual()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_13 = l0.vehicle;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0.Entity1 = self._sld_vehicle_13;
    l0.Entity2 = self.killedInstigator;
    l0._graph = self;
    l0.Equal = self.f_17_Equal;
    l0.NotEqual = self.f_17_NotEqual;
    l0:In();
end;

function export:f_3_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(0);
end;

function export:f_3_KillSuccess()
    local l0;
    self = self._graph;
    self:KilledSuccess();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "WeaponMeleeKill";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:f_15_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(3);
end;

function export:f_15_KillSuccess()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "double_td_above";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    self:KilledSuccess();
end;

function export:f_20_Critical()
    local l0;
    self = self._graph;
    l0 = self[20];
    self.killedInstigator = l0.instigator;
    self.killedSourceType = l0.sourceType;
end;

function export:f_20_Damaged()
    local l0;
    self = self._graph;
    l0 = self[20];
    self.killedInstigator = l0.instigator;
    self.killedSourceType = l0.sourceType;
end;

function export:f_20_Head()
    local l0;
    self = self._graph;
    l0 = self[20];
    self.killedInstigator = l0.instigator;
    self.killedSourceType = l0.sourceType;
end;

function export:f_20_Healed()
    local l0;
    self = self._graph;
    l0 = self[20];
    self.killedInstigator = l0.instigator;
    self.killedSourceType = l0.sourceType;
end;

function export:f_20_Killed()
    local l0;
    self = self._graph;
    l0 = self[20];
    self.killedInstigator = l0.instigator;
    self.killedSourceType = l0.sourceType;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
end;

function export:f_20_Leg()
    local l0;
    self = self._graph;
    l0 = self[20];
    self.killedInstigator = l0.instigator;
    self.killedSourceType = l0.sourceType;
end;

function export:f_20_Torso()
    local l0;
    self = self._graph;
    l0 = self[20];
    self.killedInstigator = l0.instigator;
    self.killedSourceType = l0.sourceType;
end;

function export:f_5_Equal()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l0.str = self.killedSourceType;
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
    l0.Yes = self.f_24_Yes;
    l0.No = self.f_24_No;
    l0:String();
end;

function export:f_5_NotEqual()
    self = self._graph;
    self:KilledSuccess();
end;

function export:f_38_KillFail()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0:Condition(8);
end;

function export:f_38_KillSuccess()
    local l0;
    self = self._graph;
    self:KilledSuccess();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "ledge_td_double";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = "yellow";
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = DummyFunction;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
end;

function export:en_2()
    local l0;
    l0 = self[2];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "MeleeTakedown";
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "knifeThrowTakedown";
end;

function export:en_32()
    local l0;
    l0 = self[32];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "water_td_double";
end;

function export:en_35()
    local l0;
    l0 = self[35];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "ledge_td_single";
end;

function export:en_29()
    local l0;
    l0 = self[29];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "water_td_single";
end;

function export:en_1()
    local l0;
    l0 = self[1];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "above_takedown_kill";
end;

function export:en_43()
    local l0;
    l0 = self[43];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "is_chain_takedown";
end;

function export:en_3()
    local l0;
    l0 = self[3];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "WeaponMeleeKill";
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "double_td_above";
end;

function export:en_20()
    local l0;
    l0 = self[20];
    l0.pawns = self.target;
end;

function export:en_38()
    local l0;
    l0 = self[38];
    l0.pawns = self.target;
    l0.sourceReasonFilter = "ledge_td_double";
end;

-- Empty out anchor definitions
function export:KilledSuccess()
    
end;
function export:KilledFail()
    
end;
_compilerVersion = 24;
