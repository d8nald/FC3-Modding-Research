-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/bam_060/bam_060_main.domino.xml
-- User graph: BAM_060_MAIN
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
    luaDepTable[1] = "Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_B10C/BAM_060_B10C.BAM_060_B10C.lua";
    luaDepTable[2] = "Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_B20E/BAM_060_B20E.BAM_060_B20E.lua";
    luaDepTable[3] = "Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_B10C/BAM_060_B10C.BAM_060_B10C.lua";
    return luaDepTable;
end;

function export:Create(cbox)
    if (cbox:ShouldLoadResources() == true) then
        -- External box dependencies
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
        cbox:RegisterBox("Domino/System/CompareBoolean.lua");
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/GetSessionGlobal.lua");
        cbox:RegisterBox("Domino/System/IsMissionQuicklaunched.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionInit.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.MissionNormalEnd.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
        cbox:RegisterBox("Domino/System/QuickLaunchPlayerSetup.lua");
        cbox:RegisterBox("Domino/System/Mission_Flow/SetSessionGlobal.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/Library/Sp/Lib_Mission.TeleportToNextMissionLocation.lua");
        -- External globals dependencies
        cbox:RegisterGlobals("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.globals.lua");
        
        -- Load resources
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018872f.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00164a84.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/00166138.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[graphics/Characters/_common/facial/generated/0018866c.dpax]], "CPoseAnimationResource");
        cbox:LoadResource([[sndres0x00164a84]], "CSoundResource");
        cbox:LoadResource([[sndres0x00166138]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018872f]], "CSoundResource");
        cbox:LoadResource([[sndres0x0018866c]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.meta = 0;
    self.ePlayer = nil;
    self[9] = cbox:CreateBox("Domino/System/Mission_Flow/MissionAcknowledge.lua");
    l0 = self[9];
    l0._graph = self;
    l0.Acknowledged = self.f_9_Acknowledged;
    l0.NotAcknowledged = self.f_9_NotAcknowledged;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
    l0 = self[10];
    l0._graph = self;
    l0.Done = self.f_10_Done;
    l0.Out = DummyFunction;
    self[4] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionInit.lua");
    l0 = self[4];
    l0._graph = self;
    l0.Out = self.f_4_Out;
    self[13] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_13_Finished;
    self[11] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[11];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_11_Finished;
    self[6] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionBlockFinal.lua");
    l0 = self[6];
    l0._graph = self;
    l0.Completed = self.f_6_Completed;
    l0.Failed = self.f_6_Failed;
    self[12] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[12];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_12_Finished;
    self[2] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_MAIN.BAM060_MusicBrain.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Done = self.f_2_Done;
    l0.Out = DummyFunction;
    self[5] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.MissionNormalEnd.lua");
    l0 = self[5];
    l0._graph = self;
    self[14] = cbox:CreateBox("Domino/Library/Sp/Lib_Mission.TeleportToNextMissionLocation.lua");
    l0 = self[14];
    l0._graph = self;
    l0.Out = self.f_14_Out;
    l0.Teleported = DummyFunction;
    self[17] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[17];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_17_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[3] = cbox:CreateBox("Domino/Library/Sp/Lib_Common.PhoneCall.lua");
    l0 = self[3];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Finished = self.f_3_Finished;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:In()
    local l0;
    l0 = self[9];
    l0:IsAcknowledged();
    l0 = Boxes[GetPathID("Domino/System/IsMissionQuicklaunched.lua")];
    l0._graph = self;
    l0.Out = self.f_15_Out;
    l0:In();
    self:en_6();
    l0 = self[6];
    l0:In();
end;

function export:Scan()
    local l0;
    self:en_6();
    l0 = self[6];
    l0:Scan();
end;

function export:f_7_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0:MissionComplete();
end;

function export:f_19_False()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0.A = PersistentGlobals.BAM_060_MAIN.KnifeFightFailed;
    l0.B = nil;
    l0._graph = self;
    l0.A_is_True = self.f_21_A_is_True;
    l0.A_is_False = self.f_21_A_is_False;
    l0.A_and_B = DummyFunction;
    l0.A_or_B = DummyFunction;
    l0.A_xor_B = DummyFunction;
    l0:In();
end;

function export:f_19_True()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_Acknowledged()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:f_9_NotAcknowledged()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/GetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0._graph = self;
    l0.True = self.f_19_True;
    l0.False = self.f_19_False;
    l0:In();
end;

function export:f_10_Done()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0.Value = false;
    l0._graph = self;
    l0.Out = self.f_18_Out;
    l0:In();
end;

function export:f_4_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Mission_Flow/SetSessionGlobal.lua")];
    l0.VarName = "bPhoneCallHappened";
    l0.Value = true;
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:In();
end;

function export:f_13_Finished()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_11_Finished()
    local l0;
    self = self._graph;
    l0 = self[12];
    l0.SoundID = "0x00166138";
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_6_Completed()
    local l0;
    self = self._graph;
    l0 = self[10];
    l0:MissionComplete();
end;

function export:f_6_Failed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_7_Out;
    l0:In();
end;

function export:f_15_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/QuickLaunchPlayerSetup.lua")];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0:PlayerLevel3();
end;

function export:f_20_Out()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:In();
end;

function export:f_18_Out()
    local l0;
    self = self._graph;
    l0 = self[14];
    l0.Destination = "2074743296099365887";
    l0.Delay = 5;
    l0:WithSuccessMessage();
end;

function export:f_12_Finished()
    local l0;
    self = self._graph;
    l0 = self[13];
    l0.SoundID = "0x00164a84";
    l0.IsIncomingCall = true;
    l0.EndOfChain = true;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_2_Done()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Fail();
end;

function export:f_14_Out()
    local l0;
    self = self._graph;
    l0 = self[5];
    l0:Complete();
end;

function export:f_17_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = self[3];
    l0.SoundID = "0x0018866c";
    l0.CallerID = {
        section = "Characters",
        item = "VICEGUIDE_CHARACTERS_BUCK",
        id = "90990",
    };
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = false;
    l0:Start();
end;

function export:f_3_Finished()
    local l0;
    self = self._graph;
    l0 = self[11];
    l0.SoundID = "0x0018872f";
    l0.IsIncomingCall = true;
    l0.EndOfChain = false;
    l0.IsSatelliteCommunication = false;
    l0:Chain();
end;

function export:f_21_A_is_False()
    local l0;
    self = self._graph;
    l0 = self[17];
    l0.seconds = 3;
    l0:Start();
end;

function export:f_21_A_is_True()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:In();
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.LocationMarker = "2071273707138977550";
    l0.ObjectiveString = {
        section = "Objectives",
        item = "BAM_060_OBJ_LocateHut",
        id = "118824",
    };
    l0.AcknowledgeZone = "2072889958957328467";
    l0.displayMissionTitle = true;
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.MissionBlockId = "138227546330212";
    l0.MissionScript = "Domino/user/fc3/FC3_MainMissions/BAM_060/BAM_060_B10C/BAM_060_B10C.BAM_060_B10C.lua";
    l0.DBGSpawn = "2073942926831919105";
    l0.EndSpawn = "2073942926831919105";
end;

function export:en_20()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_20_Out;
end;

-- Empty out anchor definitions
_compilerVersion = 24;
