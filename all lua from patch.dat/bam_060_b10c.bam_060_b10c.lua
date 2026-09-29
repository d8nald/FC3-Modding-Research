-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_b10c/bam_060_b10c.domino.xml
-- User graph: BAM_060_B10C
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
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM_060_B20_KnifeFight_GSM.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM_060_BambiIntroSequence.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_ObjectiveManager.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Door.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/PhysicsModifier.lua");
        cbox:RegisterBox("Domino/System/Player/PostFx.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/SendPlayGame_v2.lua");
        cbox:RegisterBox("Domino/System/SendUiEvent.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/UsableComponentModifier.lua");
        cbox:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.globals.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.MetaSequenceID = 0;
    self.MetasequenceID = 0;
    self.player = nil;
    self[2] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    self[21] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[21];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_21_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[29] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockComplete.lua");
    l0 = self[29];
    l0._graph = self;
    self[8] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Out = self.f_8_Out;
    self[6] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Acknowledged = self.f_6_Acknowledged;
    l0.NotAcknowledged = DummyFunction;
    self[24] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[24];
    l0._graph = self;
    l0.Out = self.f_24_Out;
    l0.OnPush = self.f_24_OnPush;
    l0.OnPull = self.f_24_OnPull;
    l0.OnClosed = self.f_24_OnClosed;
    self[25] = cbox:CreateBox("Domino/System/SendPlayGame_v2.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Out = self.f_25_Out;
    self[10] = cbox:CreateBox("Domino/System/Door.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0.OnPush = DummyFunction;
    l0.OnPull = DummyFunction;
    l0.OnClosed = DummyFunction;
    self[7] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_ObjectiveManager.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Done = self.f_7_Done;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Done = DummyFunction;
    l0.Out = DummyFunction;
    self[28] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[28];
    l0._graph = self;
    self[30] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM_060_B20_KnifeFight_GSM.lua");
    l0 = self[30];
    l0._graph = self;
    l0.Success = self.f_30_Success;
    l0.Fail = self.f_30_Fail;
    l0.Out_Started = self.f_30_Out_Started;
    self[20] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_ObjectiveManager.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Done = self.f_20_Done;
    self[19] = cbox:CreateBox("Domino/System/SendUiEvent.lua");
    l0 = self[19];
    l0._graph = self;
    l0._DynamicAnchors = {
        param = 2,
    };
    l0.Out = self.f_19_Out;
    self[5] = cbox:CreateBox("Domino/System/Mission_Flow/MissionBlockFail.lua");
    l0 = self[5];
    l0._graph = self;
    self[16] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_16_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[3] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM_060_BambiIntroSequence.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Done = self.f_3_Done;
    self[13] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[13];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_13_Out;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_9_Out;
    l0:In();
end;

function export:OnLeaveZone()
    local l0;
    l0 = self[5];
    l0:Fail();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0:Start();
end;

function export:f_22_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0:Send();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Acknowledge();
end;

function export:f_21_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:Disable();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:Assassinate();
end;

function export:f_12_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2072889958957328467";
    l0:Enable();
end;

function export:f_8_Out()
    local l0;
    self = self._graph;
    l0 = self[21];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_6_Acknowledged()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    self:en_4();
    l0:ToConsole();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.BAM_060_MAIN.KnifeFightFailed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_1_A_is_True;
    l0.A_is_False = self.f_1_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_24_OnClosed()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Condition(1);
    self:en_24();
    l0 = self[24];
    l0:StopListening();
end;

function export:f_24_OnPull()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToScreen();
    self:en_17();
    l0:ToConsole();
end;

function export:f_24_OnPush()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:ToConsole();
    self:en_17();
    l0:ToScreen();
end;

function export:f_24_Out()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0.triggerId = "2075501980823855860";
    l0:Enable();
end;

function export:f_9_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.BAM_060_MAIN.KnifeFightFailed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_15_A_is_True;
    l0.A_is_False = self.f_15_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/VisibilityModifier.lua")];
    l0.targets = "2077937726415460020";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = self.f_31_Disabled;
    l0:SetDisabled();
end;

function export:f_25_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:BringKnife();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0:Condition(0);
end;

function export:f_7_Done()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:StartListening();
    self:en_24();
    l0:SetAsUsable();
end;

function export:f_30_Fail()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:Fail();
end;

function export:f_30_Out_Started()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.BAM_060_MAIN.KnifeFightFailed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_22_A_is_True;
    l0.A_is_False = DummyFunction;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_30_Success()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0:ClearAll();
end;

function export:f_20_Done()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0.Save = false;
    l0:Complete();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[6];
    l0:Acknowledge();
end;

function export:f_1_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[25];
    l0:Send();
end;

function export:f_1_A_is_True()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_11_Out;
    l0:In();
end;

function export:f_32_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PhysicsModifier.lua")];
    l0.targets = "2077937726415460020";
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Started = DummyFunction;
    l0:SetDisabled();
end;

function export:f_16_Enter()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.Door = "2077192011407968596";
    l0:SetAsUnusable();
end;

function export:f_31_Disabled()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UsableComponentModifier.lua")];
    l0.Entity = "2077937726415460020";
    l0._graph = self;
    l0.Out = self.f_32_Out;
    l0:SetUnusable();
end;

function export:f_3_Done()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0:Start();
end;

function export:f_15_A_is_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/PostFx.lua")];
    l0.Player = nil;
    l0.PostFxName = "blackscreenfx";
    l0._graph = self;
    l0.Out = self.f_12_Out;
    l0:Disable();
end;

function export:f_15_A_is_True()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0.param[0] = "HideUIElement";
    l0.param[1] = "Radar|Reticule|Ammo|objectiveindicator";
    l0:In();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:Start();
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.Door = "2077192011407968596";
end;

function export:en_17()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Bammbi door used";
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

function export:en_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "MissionBlock BAM_060_B10C started.";
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

-- Empty out anchor definitions
_compilerVersion = 24;
