-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_030/bam_030_b50/bam_030_b50.domino.xml
-- User graph: Init
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
        cbox:RegisterBox("Domino/System/CompoundObjectModifier_v2.lua");
        cbox:RegisterBox("Domino/System/UI/OverridePlayerMapPosition.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B40/BAM_030_B40.PlayMusic.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
        cbox:RegisterBox("Domino/System/SetWaterLevel.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_030/BAM_030_B40/BAM_030_B40.PlayMusic.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ResetTimeOfDay.lua");
    l0 = self[4];
    l0._graph = self;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 135.5;
    l0.World = "fc3_main";
    l0.SectorId = 3678;
    l0._graph = self;
    l0.Out = self.f_19_Out;
    l0:SetWaterLevel();
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076712188564743458";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_11_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076674643810335401";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_9_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
    l0 = Boxes[GetPathID("Domino/System/UI/OverridePlayerMapPosition.lua")];
    l0.posX = 2620;
    l0.posY = 1117;
    l0.posZ = 102;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:Enable();
    l0 = self[4];
    l0.Hour = 10;
    l0.Minute = 32;
    l0:Start();
    l0 = self[14];
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_21_Out;
    l0:In();
end;

function export:f_29_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531031210050223";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_31_Disabled;
    l0:SetDisabled();
end;

function export:f_1_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076712304258327846";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_5_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_23_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2078204815743135668";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_41_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_21_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531019187077797";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_40_Disabled;
    l0:SetDisabled();
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531019187077797";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_17_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_36_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531039017747125";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_24_Disabled;
    l0:SetDisabled();
end;

function export:f_20_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531024666935977";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_26_Disabled;
    l0:SetDisabled();
end;

function export:f_28_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531036924789427";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_39_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_39_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531039017747125";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_25_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_32_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531044069786297";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_23_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 135.5;
    l0.World = "fc3_main";
    l0.SectorId = 3839;
    l0._graph = self;
    l0.Out = self.f_8_Out;
    l0:SetWaterLevel();
end;

function export:f_25_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531041498677943";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_32_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_33_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531044069786297";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_37_Disabled;
    l0:SetDisabled();
end;

function export:f_5_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076712325586363690";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_2_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_7_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076712208454133028";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_6_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_37_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078204815743135668";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_38_Disabled;
    l0:SetDisabled();
end;

function export:f_6_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076712314637133096";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_1_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_38_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2078204810946949042";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_31_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531036924789427";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_36_Disabled;
    l0:SetDisabled();
end;

function export:f_40_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531022039204519";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_20_Disabled;
    l0:SetDisabled();
end;

function export:f_17_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531022039204519";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_34_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_8_Out()
    self = self._graph;
    self:Out();
end;

function export:f_27_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531031210050223";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_28_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 135.5;
    l0.World = "fc3_main";
    l0.SectorId = 3837;
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:SetWaterLevel();
end;

function export:f_41_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2078204810946949042";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_30_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531027265307307";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_35_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_11_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2076712170634093852";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_7_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetWaterLevel.lua")];
    l0.Level = 135.5;
    l0.World = "fc3_main";
    l0.SectorId = 3838;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:SetWaterLevel();
end;

function export:f_15_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531029421179565";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_29_Disabled;
    l0:SetDisabled();
end;

function export:f_2_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2076193103194154768";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0:SetDisabled();
end;

function export:f_18_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076674649996933805";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = DummyFunction;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_34_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531024666935977";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_30_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_35_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077531029421179565";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_27_Disabled;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_9_DamageableChanged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompoundObjectModifier_v2.lua")];
    l0.targets = "2076674428151801720";
    l0.forcedStateId = nil;
    l0._graph = self;
    l0.DamageableChanged = self.f_18_DamageableChanged;
    l0.StateChanged = DummyFunction;
    l0.Destroyed = DummyFunction;
    l0:SetUnDamageable();
end;

function export:f_24_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531041498677943";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_33_Disabled;
    l0:SetDisabled();
end;

function export:f_26_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077531027265307307";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_15_Disabled;
    l0:SetDisabled();
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 24;
