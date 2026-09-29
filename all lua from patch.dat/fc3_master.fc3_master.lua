-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_master/fc3_master.domino.xml
-- User graph: FC3_Master
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
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.BNG_OptionalMissions.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter01.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter02.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter03.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter04.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter05.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter06.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter07.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter08.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter09.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Chapter10.lua");
        cbox:RegisterBox("Domino/System/CheckAutorunEnabled.lua");
        cbox:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_Encounters/Libs/Encounter_DbgStat.Encounter_DbgStst.lua");
        cbox:RegisterBox("Domino/System/EntityStatusListener.lua");
        cbox:RegisterBox("Domino/System/Player/EquipCostume.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.FC3_ActivitiesMaster.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.FC3_OutpostsManager.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.FC3_POIsQuestsMaster.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.FC3_RadioTowersManager.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.FC3_RestrictedZonesManager.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_SideQuestsMaster.FC3_SideQuestsMaster.lua");
        cbox:RegisterBox("Domino/System/GetCurrentGameMode.lua");
        cbox:RegisterBox("Domino/System/IndexList.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.Initialization.lua");
        cbox:RegisterBox("Domino/System/IsValueNil_v2.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.PersistencyController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayNarrativeScenes.lua");
        cbox:RegisterBox("Domino/System/Print_v2.lua");
        cbox:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cbox:RegisterBox("Domino/System/SetInteger.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SystemConsoleCommand.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportController.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.TeleportToMap.lua");
        cbox:RegisterBox("Domino/user/fc3/fc3_master/fc3_master.ULC.lua");
    end;
end;

function export:Init(cbox)
    local l0;
    self.iCurrActSelect = 6;
    self[31] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RadioTowersManager.FC3_RadioTowersManager.lua");
    l0 = self[31];
    l0._graph = self;
    l0.Activated = self.f_31_Activated;
    self[56] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter04.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Initialized = self.f_56_Initialized;
    l0.Completed = self.f_56_Completed;
    self[58] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter06.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Initialized = self.f_58_Initialized;
    l0.Completed = self.f_58_Completed;
    self[60] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter08.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Initialized = self.f_60_Initialized;
    l0.Completed = self.f_60_Completed;
    self[14] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PlayNarrativeScenes.PlayNarrativeScenes.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Finished = self.f_14_Finished;
    self[9] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Enabled = self.f_9_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_9_Loaded;
    l0.Unloaded = DummyFunction;
    self[28] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_POIsQuestsMaster.FC3_POIsQuestsMaster.lua");
    l0 = self[28];
    l0._graph = self;
    l0.Initialized = self.f_28_Initialized;
    self[50] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Enabled = self.f_50_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_50_Loaded;
    l0.Unloaded = DummyFunction;
    self[25] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[25];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_25_Execute;
    self[12] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_SideQuestsMaster.FC3_SideQuestsMaster.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Initialized = self.f_12_Initialized;
    self[18] = cbox:CreateBox("Domino/user/fc3/FC3_Encounters/Libs/Encounter_DbgStat.Encounter_DbgStst.lua");
    l0 = self[18];
    l0._graph = self;
    self[10] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Enabled = self.f_10_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_10_Loaded;
    l0.Unloaded = DummyFunction;
    self[6] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_6_Execute;
    self[8] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = self.f_8_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_8_Loaded;
    l0.Unloaded = DummyFunction;
    self[55] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter03.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Initialized = self.f_55_Initialized;
    l0.Completed = self.f_55_Completed;
    self[20] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = self.f_20_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_20_Loaded;
    l0.Unloaded = DummyFunction;
    self[54] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter02.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Initialized = self.f_54_Initialized;
    l0.Completed = self.f_54_Completed;
    self[89] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[89];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_89_Loaded;
    l0.Unloaded = DummyFunction;
    self[16] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.ULC.lua");
    l0 = self[16];
    l0._graph = self;
    l0.Initialized = self.f_16_Initialized;
    l0.Completed = DummyFunction;
    self[57] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter05.lua");
    l0 = self[57];
    l0._graph = self;
    l0.Initialized = self.f_57_Initialized;
    l0.Completed = self.f_57_Completed;
    self[2] = cbox:CreateBox("Domino/System/IndexList.lua");
    l0 = self[2];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 10,
    };
    l0.Output[0] = self.f_2_Output_0;
    l0.Output[1] = self.f_2_Output_1;
    l0.Output[2] = self.f_2_Output_2;
    l0.Output[3] = self.f_2_Output_3;
    l0.Output[4] = self.f_2_Output_4;
    l0.Output[5] = self.f_2_Output_5;
    l0.Output[6] = self.f_2_Output_6;
    l0.Output[7] = self.f_2_Output_7;
    l0.Output[8] = self.f_2_Output_8;
    l0.Output[9] = self.f_2_Output_9;
    self[3] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_TeleportMaster.TeleportController.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = self.f_3_Out;
    self[52] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Enabled = self.f_52_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_52_Loaded;
    l0.Unloaded = DummyFunction;
    self[27] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Initialization.lua");
    l0 = self[27];
    l0._graph = self;
    l0.Initialized = DummyFunction;
    l0.Activated = self.f_27_Activated;
    self[5] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.BNG_OptionalMissions.lua");
    l0 = self[5];
    l0._graph = self;
    l0.Initialized = self.f_5_Initialized;
    l0.Started = DummyFunction;
    self[62] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter10.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Initialized = self.f_62_Initialized;
    l0.Completed = self.f_62_Completed;
    self[36] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_ActivitiesMaster.FC3_ActivitiesMaster.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Initialized = self.f_36_Initialized;
    self[48] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[48];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_48_Execute;
    self[17] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_17_Execute;
    self[53] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter01.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Initialized = self.f_53_Initialized;
    l0.Completed = self.f_53_Completed;
    self[61] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter09.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Initialized = self.f_61_Initialized;
    l0.Completed = self.f_61_Completed;
    self[29] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_OutpostsManager.FC3_OutpostsManager.lua");
    l0 = self[29];
    l0._graph = self;
    l0.Activated = self.f_29_Activated;
    self[63] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Initialization.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Initialized = self.f_63_Initialized;
    l0.Activated = DummyFunction;
    self[1] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_PersistencyMaster.PersistencyController.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Initialized = self.f_1_Initialized;
    self[33] = cbox:CreateBox("Domino/System/SystemConsoleCommand.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Out = DummyFunction;
    self[7] = cbox:CreateBox("Domino/user/fc3/fc3_master/FC3_RestrictedZonesManager.FC3_RestrictedZonesManager.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Activated = self.f_7_Activated;
    self[44] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[44];
    l0._graph = self;
    l0.Enabled = self.f_44_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_44_Loaded;
    l0.Unloaded = DummyFunction;
    self[59] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.Chapter07.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Initialized = self.f_59_Initialized;
    l0.Completed = self.f_59_Completed;
    self[21] = cbox:CreateBox("Domino/user/fc3/fc3_master/fc3_master.TeleportToMap.lua");
    l0 = self[21];
    l0._graph = self;
    self[46] = cbox:CreateBox("Domino/System/IndexList.lua");
    l0 = self[46];
    l0._graph = self;
    l0._DynamicAnchors = {
        Output = 10,
    };
    l0.Output[0] = self.f_46_Output_0;
    l0.Output[1] = self.f_46_Output_1;
    l0.Output[2] = self.f_46_Output_2;
    l0.Output[3] = self.f_46_Output_3;
    l0.Output[4] = self.f_46_Output_4;
    l0.Output[5] = self.f_46_Output_5;
    l0.Output[6] = self.f_46_Output_6;
    l0.Output[7] = self.f_46_Output_7;
    l0.Output[8] = self.f_46_Output_8;
    l0.Output[9] = self.f_46_Output_9;
    self[34] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_34_Execute;
    self[77] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[77];
    l0._graph = self;
    l0.Enabled = self.f_77_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_77_Loaded;
    l0.Unloaded = DummyFunction;
    self[47] = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self[47];
    l0._graph = self;
    l0.Enabled = self.f_47_Enabled;
    l0.Disabled = DummyFunction;
    l0.Loaded = self.f_47_Loaded;
    l0.Unloaded = DummyFunction;
    self[78] = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self[78];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Execute = self.f_78_Execute;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:Activate()
    
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting /root: SYSTEM BOOT 3.0";
    l0.int = nil;
    l0.float = nil;
    l0.bool = nil;
    l0.id = nil;
    l0.duration = nil;
    l0.color = nil;
    l0.useTimeTag = nil;
    l0.path = nil;
    l0._graph = self;
    l0.PrintedToScreen = self.f_19_PrintedToScreen;
    l0.PrintedToConsole = DummyFunction;
    l0.PrintedToFile = DummyFunction;
    l0.Error = DummyFunction;
    l0:ToScreen();
    l0 = self[1];
    l0:Initialize();
    l0 = self[17];
    l0.Name = "Equip_Costume";
    l0.Loop = true;
    l0:Enable();
    l0 = self[18];
    l0:Enable();
    l0 = self[25];
    l0.Name = "Remove_Costume";
    l0.Loop = true;
    l0:Enable();
    l0 = self[34];
    l0.Name = "Unlock_South";
    l0.Loop = true;
    l0:Enable();
    l0 = self[21];
    l0:In();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0:Activate();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0:Activate();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0:Activate();
end;

function export:f_70_Out()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0:Activate();
end;

function export:f_71_Out()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0:Activate();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0:Activate();
end;

function export:f_73_Out()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0:Activate();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0:Activate();
end;

function export:f_75_Out()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:Activate();
end;

function export:f_76_Out()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0:Activate();
end;

function export:f_79_Out()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0:Activate();
end;

function export:f_31_Activated()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0:Activate();
end;

function export:f_56_Completed()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0:Activate();
end;

function export:f_56_Initialized()
    local l0;
    self = self._graph;
    l0 = self[57];
    l0:Initialize();
end;

function export:f_58_Completed()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0:Activate();
end;

function export:f_58_Initialized()
    local l0;
    self = self._graph;
    l0 = self[59];
    l0:Initialize();
end;

function export:f_60_Completed()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:Activate();
end;

function export:f_60_Initialized()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0:Initialize();
end;

function export:f_14_Finished()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "NarrativeScenesEnd";
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

function export:f_9_Enabled()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0.entityId = "2074829410432770494";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_9_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829410430673340";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_28_Initialized()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0:Initialize();
end;

function export:f_50_Enabled()
    local l0;
    self = self._graph;
    l0 = self[52];
    l0.entityId = "2074829413341520332";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_50_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829413341520330";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_25_Execute()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EquipCostume.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Equipped = DummyFunction;
    l0.Unequipped = DummyFunction;
    l0.Error = DummyFunction;
    l0:Unequip();
end;

function export:f_12_Initialized()
    local l0;
    self = self._graph;
    l0 = self[28];
    l0:Initialize();
end;

function export:f_13_Out()
    local l0;
    self = self._graph;
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_10_Enabled()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.entityId = "2074829413339423172";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_10_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829410432770494";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_6_Execute()
    local l0, l1;
    self = self._graph;
    l0 = self[6];
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l1.str = l0.Parameter;
    l1.int = nil;
    l1.float = nil;
    l1.bool = nil;
    l1.ent = nil;
    l1.anim = nil;
    l1.group = nil;
    l1.oasis = nil;
    l1.sound = nil;
    l1.script = nil;
    l1._graph = self;
    l1.Out = DummyFunction;
    l1.Yes = DummyFunction;
    l1.No = self.f_4_No;
    l1:String();
end;

function export:f_4_No()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = nil;
    l0 = self[6];
    l1 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l1.String = l0.Parameter;
    l1.Float = nil;
    l1.UseFloor = nil;
    l1._graph = self;
    l1.Out = self.f_11_Out;
    l1:FromString();
end;

function export:f_8_Enabled()
    local l0;
    self = self._graph;
    l0 = self[9];
    l0.entityId = "2074829410430673340";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_8_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829402708959664";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_55_Completed()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0:Activate();
end;

function export:f_55_Initialized()
    local l0;
    self = self._graph;
    l0 = self[56];
    l0:Initialize();
end;

function export:f_20_Enabled()
    local l0;
    self = self._graph;
    l0 = self[44];
    l0.entityId = "2074829413339423174";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_20_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829413339423172";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_54_Completed()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0:Activate();
end;

function export:f_54_Initialized()
    local l0;
    self = self._graph;
    l0 = self[55];
    l0:Initialize();
end;

function export:f_89_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2077271549315923622";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_45_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    self.iCurrActSelect = l0.Target;
    l0 = self[46];
    l0.Index = self.iCurrActSelect;
    l0:In();
end;

function export:f_19_PrintedToScreen()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "Starting MASTER BOOT Sequence";
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

function export:f_16_Initialized()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "INITIALIZATION PHASE COMPLETED";
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
    l0 = self[12];
    l0:Initialize();
end;

function export:f_57_Completed()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0:Activate();
end;

function export:f_57_Initialized()
    local l0;
    self = self._graph;
    l0 = self[58];
    l0:Initialize();
end;

function export:f_2_Output_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_64_Out;
    l0:In();
end;

function export:f_2_Output_1()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_68_Out;
    l0:In();
end;

function export:f_2_Output_2()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_69_Out;
    l0:In();
end;

function export:f_2_Output_3()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_70_Out;
    l0:In();
end;

function export:f_2_Output_4()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_71_Out;
    l0:In();
end;

function export:f_2_Output_5()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_72_Out;
    l0:In();
end;

function export:f_2_Output_6()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_73_Out;
    l0:In();
end;

function export:f_2_Output_7()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_74_Out;
    l0:In();
end;

function export:f_2_Output_8()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_75_Out;
    l0:In();
end;

function export:f_2_Output_9()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_76_Out;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[63];
    l0:Initialize();
end;

function export:f_52_Enabled()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0.entityId = "2074829413343617486";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_52_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829413341520332";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_27_Activated()
    local l0;
    self = self._graph;
    l0 = self[29];
    l0:Activate();
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    self.iCurrActSelect = l0.Target;
    l0 = self[2];
    l0.Index = self.iCurrActSelect;
    l0:In();
end;

function export:f_5_Initialized()
    local l0;
    self = self._graph;
    l0 = self[27];
    l0:Activate();
end;

function export:f_62_Completed()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:Activate();
end;

function export:f_62_Initialized()
    local l0;
    self = self._graph;
    l0 = self[16];
    l0:Initialize();
end;

function export:f_36_Initialized()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Initialize();
end;

function export:f_48_Execute()
    local l0, l1;
    self = self._graph;
    l0 = self[48];
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v2.lua")];
    l1.str = l0.Parameter;
    l1.int = nil;
    l1.float = nil;
    l1.bool = nil;
    l1.ent = nil;
    l1.anim = nil;
    l1.group = nil;
    l1.oasis = nil;
    l1.sound = nil;
    l1.script = nil;
    l1._graph = self;
    l1.Out = DummyFunction;
    l1.Yes = self.f_40_Yes;
    l1.No = self.f_40_No;
    l1:String();
end;

function export:f_17_Execute()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/EquipCostume.lua")];
    l0.pawn = nil;
    l0._graph = self;
    l0.Equipped = DummyFunction;
    l0.Unequipped = DummyFunction;
    l0.Error = DummyFunction;
    l0:Equip();
end;

function export:f_53_Completed()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0:Activate();
end;

function export:f_53_Initialized()
    local l0;
    self = self._graph;
    l0 = self[54];
    l0:Initialize();
end;

function export:f_61_Completed()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0:Activate();
end;

function export:f_61_Initialized()
    local l0;
    self = self._graph;
    l0 = self[62];
    l0:Initialize();
end;

function export:f_29_Activated()
    local l0;
    self = self._graph;
    l0 = self[31];
    l0:Activate();
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0.Name = "PlayGame";
    l0.Loop = false;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_49_Out;
    l0:In();
    l0 = Boxes[GetPathID("Domino/System/CheckAutorunEnabled.lua")];
    l0._graph = self;
    l0.Out = self.f_13_Out;
    l0:In();
    l0 = self[6];
    l0.Name = "PlayChapter";
    l0.Loop = false;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "PACKAGE SCRIPT RUNNING";
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

function export:f_63_Initialized()
    local l0;
    self = self._graph;
    l0 = self[53];
    l0:Initialize();
end;

function export:f_1_Initialized()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0:In();
end;

function export:f_7_Activated()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.entityId = "2074829402708959664";
    l0.autoDisable = false;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/GetCurrentGameMode.lua")];
    l0._graph = self;
    l0.Editor = self.f_15_Editor;
    l0.FCXSingle = self.f_15_FCXSingle;
    l0.FCXCoop = DummyFunction;
    l0.FCXDash = DummyFunction;
    l0:In();
end;

function export:f_44_Enabled()
    local l0;
    self = self._graph;
    l0 = self[47];
    l0.entityId = "2074829413339423176";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_44_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829413339423174";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = self[48];
    l0.Name = "NarrativeScenes";
    l0:Enable();
end;

function export:f_59_Completed()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0:Activate();
end;

function export:f_59_Initialized()
    local l0;
    self = self._graph;
    l0 = self[60];
    l0:Initialize();
end;

function export:f_40_No()
    local l0, l1;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l0.Integer = nil;
    l0 = self[48];
    l1 = Boxes[GetPathID("Domino/System/SetInteger.lua")];
    l1.String = l0.Parameter;
    l1.Float = nil;
    l1.UseFloor = nil;
    l1._graph = self;
    l1.Out = self.f_45_Out;
    l1:FromString();
end;

function export:f_40_Yes()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter01();
end;

function export:f_46_Output_0()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter01();
end;

function export:f_46_Output_1()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter02();
end;

function export:f_46_Output_2()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter03();
end;

function export:f_46_Output_3()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter04();
end;

function export:f_46_Output_4()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter05();
end;

function export:f_46_Output_5()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter06();
end;

function export:f_46_Output_6()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter07();
end;

function export:f_46_Output_7()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter08();
end;

function export:f_46_Output_8()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter09();
end;

function export:f_46_Output_9()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0:PlayFromChapter10();
end;

function export:f_34_Execute()
    local l0;
    self = self._graph;
    l0 = self[33];
    l0.Command = "#CAPI_Pawn.SetConditionalZoneEventsEnabled(GetLocalPlayerId(),false)";
    l0:In();
end;

function export:f_77_Enabled()
    local l0;
    self = self._graph;
    l0 = self[89];
    l0.entityId = "2077271549315923622";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_77_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829413343617486";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_47_Enabled()
    local l0;
    self = self._graph;
    l0 = self[50];
    l0.entityId = "2074829413341520330";
    l0.autoDisable = false;
    l0:Enable();
end;

function export:f_47_Loaded()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntity_v2.lua")];
    l0.Group = "2074829413339423176";
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_15_Editor()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0.str = "EDITOR SCRIPT RUNNING";
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

function export:f_15_FCXSingle()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:In();
end;

function export:f_78_Execute()
    local l0;
    self = self._graph;
    self:en_79();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:en_79()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_79_Out;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
