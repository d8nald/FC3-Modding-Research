-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/den_040/den_040_b10/den_040_b10.domino.xml
-- User graph: OBJ_DisableAlarm
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
        cbox:RegisterBox("Domino/System/AI/AlarmListener.lua");
        cbox:RegisterBox("Domino/System/ChangeMusicState_v2.lua");
        cbox:RegisterBox("Domino/System/UI/CreateTutorialMsgBox_v2.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_BackupAlarmState.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/ObjectiveMarker_v4.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/OutputOrder.lua");
        cbox:RegisterBox("Domino/System/PickupState.lua");
        cbox:RegisterBox("Domino/System/PlayDialog_v3.lua");
        cbox:RegisterBox("Domino/System/PlayRandomDialog.lua");
        cbox:RegisterBox("Domino/System/AI/SetBattlefields.lua");
        cbox:RegisterBox("Domino/System/AI/StateListener.lua");
        cbox:RegisterBox("Domino/System/AI/TargetCheck.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x0017b4fa]], "CSoundResource");
        cbox:LoadResource([[sndres0x00164cda]], "CSoundResource");
        cbox:LoadResource([[sndres0x0017b06d]], "CSoundResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164cda.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017b4fa.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0017b06d.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00194165.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00194165]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Out = DummyFunction;
    self.AlarmWasActivated = DummyFunction;
    self.ePlayer = nil;
    self.eAlarm = nil;
    self[30] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[30];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_30_Out;
    self[5] = cbox:CreateBox("Domino/System/PlayRandomDialog.lua");
    l0 = self[5];
    l0._graph = self;
    l0._DynamicAnchors = {
        SoundId = 2,
    };
    l0.PlayOut = DummyFunction;
    l0.StopOut = DummyFunction;
    l0.AllDone = DummyFunction;
    self[14] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_14_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[18] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[18];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 1,
        Out = 1,
    };
    l0.Out[0] = self.f_18_Out_0;
    l0.ResetOut = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = self.f_13_Out;
    self[11] = cbox:CreateBox("Domino/System/PlayDialog_v3.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.StartedPriorityFailed = DummyFunction;
    l0.Queued = DummyFunction;
    l0.Finished = DummyFunction;
    l0.FinishedInterrupted = DummyFunction;
    l0.Out = self.f_11_Out;
    self[29] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DEN_040/DEN_040_B10/DEN_040_B10.DEN_040_BackupAlarmState.lua");
    l0 = self[29];
    l0._graph = self;
    self[21] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[21];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_21_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[20] = cbox:CreateBox("Domino/System/AI/AlarmListener.lua");
    l0 = self[20];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.AlarmActivated = self.f_20_AlarmActivated;
    l0.AlarmDeactivated = self.f_20_AlarmDeactivated;
    l0.AlarmDisabled = self.f_20_AlarmDisabled;
    l0.AlarmDestroyed = self.f_20_AlarmDestroyed;
    self[32] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_32_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[8] = cbox:CreateBox("Domino/System/AI/StateListener.lua");
    l0 = self[8];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.StateStart = self.f_8_StateStart;
    l0.StateStop = DummyFunction;
    l0.MemberInState = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:AlarmActivated()
    local l0;
    l0 = self[21];
    l0:In(0);
end;

function export:AlarmOff()
    local l0;
    l0 = self[18];
    l0:In(0);
end;

function export:In()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_10_Out;
    l0:In();
end;

function export:f_33_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#3E17E227";
    l0.Battlefield = "2075826959299916272";
    l0._graph = self;
    l0.Out = self.f_34_Out;
    l0:SetCombatBSR();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ChangeMusicState_v2.lua")];
    l0.stateId = "Play_MUS_MIS_MVT1_ACT_Play_LP";
    l0._graph = self;
    l0.Started = self.f_2_Started;
    l0.Stopped = DummyFunction;
    l0:Start();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#3E17E227";
    l0.Battlefield = "2075826959299916272";
    l0._graph = self;
    l0.Out = self.f_33_Out;
    l0:SetSearchBSR();
end;

function export:f_7_Out_0()
    local l0;
    self = self._graph;
    l0 = self[20];
    l0.AlarmGroup = "#3E17E227";
    l0:Enable();
end;

function export:f_7_Out_1()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00194165";
    l0:ForcePlay_Priority();
end;

function export:f_7_Out_2()
    local l0;
    self = self._graph;
    l0 = self[8];
    l0.group = "#3E17E227";
    l0:Combat();
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/AI/TargetCheck.lua")];
    l0:IsAnArmySeenTarget();
end;

function export:f_6_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075615345000854862";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_25_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_36_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#3E17E227";
    l0.Battlefield = "2075826959299916272";
    l0._graph = self;
    l0.Out = self.f_1_Out;
    l0:SetSearchBSR();
end;

function export:f_1_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#3E17E227";
    l0.Battlefield = "2075826959299916272";
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:SetCombatBSR();
end;

function export:f_14_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/UI/CreateTutorialMsgBox_v2.lua")];
    l0.packageName = nil;
    l0.prompt = nil;
    l0.title = {
        section = "Tutorials",
        item = "WIKI_TUTO_STEALTHAI_ALARMS",
        id = "110807",
    };
    l0.message = {
        section = "Tutorials",
        item = "WIKI_TUTO_STEALTHAI_ALARMS_DESC",
        id = "110906",
    };
    l0.highPriority = nil;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_18_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_27_Out;
    l0:In();
end;

function export:f_12_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#3E17E227";
    l0.Battlefield = "2075826959299916272";
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:SetBattlefield();
end;

function export:f_13_Out()
    self = self._graph;
    self:Out();
end;

function export:f_31_No()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0:Start();
end;

function export:f_31_Yes()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0:Condition(1);
end;

function export:f_11_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.seconds = 2.5;
    l0:Start();
end;

function export:f_24_Removed()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.Group = self.ePlayer;
    l0.SoundId = "0x00164cda";
    l0:ForcePlay_Priority();
end;

function export:f_15_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PickupState.lua")];
    l0.Pickup = "2075630969777301491";
    l0._graph = self;
    l0.Out = self.f_17_Out;
    l0:SetAsNotPickable();
end;

function export:f_21_Out_0()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2071274010865307289";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_23_Removed;
    l0:Remove();
end;

function export:f_20_AlarmActivated()
    local l0, l1;
    self = self._graph;
    l0 = self[20];
    l1 = self[29];
    l1.DestoryedAlarm = l0.Alarm;
    l0 = self[21];
    l0:In(0);
    l0 = self[29];
    l0:AlarmActivated();
end;

function export:f_20_AlarmDeactivated()
    local l0, l1;
    self = self._graph;
    l0 = self[20];
    l1 = self[29];
    l1.DestoryedAlarm = l0.Alarm;
end;

function export:f_20_AlarmDestroyed()
    local l0, l1;
    self = self._graph;
    l0 = self[20];
    l1 = self[29];
    l1.DestoryedAlarm = l0.Alarm;
    l0 = self[18];
    l0:In(0);
    l0 = self[29];
    l0:AlarmDestroyed();
end;

function export:f_20_AlarmDisabled()
    local l0, l1;
    self = self._graph;
    l0 = self[20];
    l1 = self[29];
    l1.DestoryedAlarm = l0.Alarm;
    l1:AlarmDisabled();
    l0 = self[18];
    l0:In(0);
end;

function export:f_17_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/AI/SetBattlefields.lua")];
    l0.Group = "#3E17E227";
    l0.Battlefield = "2075826959299916272";
    l0._graph = self;
    l0.Out = self.f_36_Out;
    l0:SetBattlefield();
end;

function export:f_35_Out()
    self = self._graph;
    self:AlarmWasActivated();
end;

function export:f_16_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder.lua")];
    l0._graph = self;
    l0._DynamicAnchors = {
        Out = 3,
    };
    l0.Out[0] = self.f_7_Out_0;
    l0.Out[1] = self.f_7_Out_1;
    l0.Out[2] = self.f_7_Out_2;
    l0:In();
end;

function export:f_25_Added()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/PickupState.lua")];
    l0.Pickup = "2075630969777301491";
    l0._graph = self;
    l0.Out = self.f_16_Out;
    l0:SetAsNotPickable();
end;

function export:f_32_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_31();
    l0 = Boxes[GetPathID("Domino/System/AI/TargetCheck.lua")];
    l0:IsAnArmySeenTarget();
end;

function export:f_2_Started()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0.Group = "#3E17E227";
    l0.SoundId[0] = "0x0017b06d";
    l0.SoundId[1] = "0x0017b4fa";
    l0.minTime = 5;
    l0.maxTime = 7;
    l0:Play();
end;

function export:f_10_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2071274010865307289";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_6_Removed;
    l0:Remove();
end;

function export:f_23_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075615345000854862";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_15_Removed;
    l0:Remove();
end;

function export:f_26_Removed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075615345000854862";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = self.f_12_Added;
    l0.Removed = DummyFunction;
    l0:Add();
end;

function export:f_27_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2071274010865307289";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_26_Removed;
    l0:Remove();
end;

function export:f_34_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/ObjectiveMarker_v4.lua")];
    l0.Marker = "2075615345000854862";
    l0.SubType = nil;
    l0._graph = self;
    l0.Added = DummyFunction;
    l0.Removed = self.f_24_Removed;
    l0:Remove();
end;

function export:f_8_StateStart()
    local l0;
    self = self._graph;
    l0 = self[30];
    l0:Condition(0);
end;

function export:en_31()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/TargetCheck.lua")];
    l0.Group = "#3E17E227";
    l0.Target = self.ePlayer;
    l0._graph = self;
    l0.Yes = self.f_31_Yes;
    l0.No = self.f_31_No;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
function export:AlarmWasActivated()
    
end;
_compilerVersion = 24;
