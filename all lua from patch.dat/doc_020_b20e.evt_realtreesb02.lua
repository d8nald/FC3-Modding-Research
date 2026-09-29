-- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc3/fc3_mainmissions/doc_020/doc_020_b20e/doc_020_b20e.domino.xml
-- User graph: EVT_RealtreesB02
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
        cbox:RegisterBox("Domino/System/Delay_v4.lua");
        cbox:RegisterBox("Domino/System/Player/GetLocalPlayer.lua");
        cbox:RegisterBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
        cbox:RegisterBox("Domino/System/MultipleAND.lua");
        cbox:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cbox:RegisterBox("Domino/System/ProximityRadiusListener_v2.lua");
        cbox:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cbox:RegisterBox("Domino/System/RandomFloat.lua");
        cbox:RegisterBox("Domino/System/SimpleNode.lua");
        cbox:RegisterBox("Domino/System/SoundModifier.lua");
        cbox:RegisterBox("Domino/System/TriggerState.lua");
        
        -- Load resources
        cbox:LoadResource([[sndres0x000A9450]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A9453]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A9452]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A9451]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A944F]], "CSoundResource");
        cbox:LoadResource([[sndres0x000A9454]], "CSoundResource");
    end;
end;

function export:Init(cbox)
    local l0;
    self.Completed = DummyFunction;
    self.DialogDone = DummyFunction;
    self.ePlayer = nil;
    self.gRT_pack0101 = "#6911AF39";
    self.gRT_pack0102 = "#F018FE83";
    self.gRT_pack0103 = "#871FCE15";
    self.gRT_pack0201 = "#6B571160";
    self.gRT_pack0202 = "#F25E40DA";
    self.gRT_pack0203 = "#8559704C";
    self.gRT_pack0301 = "#6A957B57";
    self.gRT_pack0302 = "#F39C2AED";
    self.gRT_pack0303 = "#849B1A7B";
    self.gRT_pack0402 = "#F6D33C68";
    self.gRT_pack0403 = "#81D40CFE";
    self.gRT_pack0401 = "#6FDA6DD2";
    self.gRT_pack0501 = "#6E1807E5";
    self.gRT_pack0502 = "#F711565F";
    self.gRT_pack0601 = "#6C5EB9BC";
    self.gRT_pack0602 = "#F557E806";
    self.gRT_pack0701 = "#6D9CD38B";
    self.gRT_pack0702 = "#F4958231";
    self.gRT_pack0801 = "#66C094B6";
    self.gRT_pack0802 = "#FFC9C50C";
    self.gRT_GHtrees01 = "#52A56906";
    self.gRT_GHtrees02 = "#CBAC38BC";
    self.gRT_GHtrees03 = "#BCAB082A";
    self.nearDistance = 10;
    self.randowGrow = 0.05;
    self[127] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[127];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_127_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[58] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[58];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_58_Near;
    l0.Far = DummyFunction;
    self[61] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[61];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[63] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[63];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_63_Near;
    l0.Far = DummyFunction;
    self[94] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[94];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_94_Out;
    self[89] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[89];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_89_Out;
    self[9] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[9];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[145] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[145];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_145_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[19] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[19];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_19_Out;
    self[71] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[71];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_71_Near;
    l0.Far = DummyFunction;
    self[23] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[23];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[133] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[133];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_133_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[11] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[11];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[99] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[99];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_99_Out;
    self[147] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[147];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_147_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[7] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[7];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_7_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[52] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[52];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_52_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[73] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[73];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_73_Near;
    l0.Far = DummyFunction;
    self[90] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[90];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_90_Out;
    self[135] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[135];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_135_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[34] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[34];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[87] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[87];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_87_Out;
    self[80] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[80];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_80_Out;
    self[84] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[84];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_84_Out;
    self[10] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[10];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = self.f_10_GrowthTreeCompleted;
    self[93] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[93];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_93_Near;
    l0.Far = DummyFunction;
    self[92] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[92];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_92_Out;
    self[78] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[78];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_78_Out;
    self[2] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[2];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_2_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[143] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[143];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_143_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[131] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[131];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_131_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[60] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[60];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[25] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[25];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[97] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[97];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_97_Out;
    self[39] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[39];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[51] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[51];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_51_Out;
    self[141] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[141];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_141_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[83] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[83];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_83_Near;
    l0.Far = DummyFunction;
    self[101] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[101];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_101_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[22] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[22];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[85] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[85];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_85_Near;
    l0.Far = DummyFunction;
    self[98] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[98];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_98_Near;
    l0.Far = DummyFunction;
    self[49] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[49];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_49_Out;
    self[29] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[29];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[139] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[139];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_139_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[24] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[24];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[100] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[100];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_100_Out;
    self[56] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[56];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_56_Near;
    l0.Far = DummyFunction;
    self[32] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[32];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[8] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[8];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[17] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[17];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[33] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[33];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[16] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[16];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[45] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[45];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_45_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[96] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[96];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_96_Near;
    l0.Far = DummyFunction;
    self[124] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[124];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_124_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[59] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[59];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_59_Near;
    l0.Far = DummyFunction;
    self[67] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[67];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_67_Near;
    l0.Far = DummyFunction;
    self[62] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[62];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[15] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[15];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[18] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[18];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[64] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[64];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_64_Out;
    self[81] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[81];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_81_Near;
    l0.Far = DummyFunction;
    self[69] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[69];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_69_Out;
    self[28] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[28];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[5] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[5];
    l0._graph = self;
    l0.SetCurrentSizeOut = self.f_5_SetCurrentSizeOut;
    l0.GrowthTreeCompleted = DummyFunction;
    self[20] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[20];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[75] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[75];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_75_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[1] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[1];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_1_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[70] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self[70];
    l0._graph = self;
    l0._DynamicAnchors = {
        In = 2,
        Out = 2,
    };
    l0.Out[0] = self.f_70_Out_0;
    l0.Out[1] = DummyFunction;
    l0.ResetOut = DummyFunction;
    self[137] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[137];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_137_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[77] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[77];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_77_Out;
    self[88] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[88];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_88_Near;
    l0.Far = DummyFunction;
    self[55] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[55];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_55_Near;
    l0.Far = DummyFunction;
    self[21] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[21];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[105] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[105];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_105_Out;
    self[4] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[4];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[50] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[50];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_50_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[82] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[82];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_82_Out;
    self[53] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[53];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_53_Near;
    l0.Far = DummyFunction;
    self[66] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[66];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_66_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[40] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[40];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[13] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[13];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_13_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
    self[74] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[74];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_74_Out;
    self[26] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[26];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[79] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[79];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_79_Near;
    l0.Far = DummyFunction;
    self[86] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[86];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_86_Out;
    self[95] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[95];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_95_Out;
    self[68] = cbox:CreateBox("Domino/System/MultipleAND.lua");
    l0 = self[68];
    l0._graph = self;
    l0._DynamicAnchors = {
        Condition = 2,
    };
    l0.Out = self.f_68_Out;
    self[38] = cbox:CreateBox("Domino/System/SoundModifier.lua");
    l0 = self[38];
    l0._graph = self;
    l0.Started = DummyFunction;
    l0.Finished = DummyFunction;
    self[36] = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self[36];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Enter = self.f_36_Enter;
    l0.Leave = DummyFunction;
    l0.Use = DummyFunction;
    self[14] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[14];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[54] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[54];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_54_Near;
    l0.Far = DummyFunction;
    self[76] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[76];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_76_Near;
    l0.Far = DummyFunction;
    self[91] = cbox:CreateBox("Domino/System/ProximityRadiusListener_v2.lua");
    l0 = self[91];
    l0._graph = self;
    l0.Enabled = DummyFunction;
    l0.Disabled = DummyFunction;
    l0.Near = self.f_91_Near;
    l0.Far = DummyFunction;
    self[12] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[12];
    l0._graph = self;
    l0.SetCurrentSizeOut = self.f_12_SetCurrentSizeOut;
    l0.GrowthTreeCompleted = DummyFunction;
    self[6] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[6];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[27] = cbox:CreateBox("Domino/user/fc3/FC3_MainMissions/DOC_020/DOC_020_B20E/DOC_020_B20E.HK_Realtrees.lua");
    l0 = self[27];
    l0._graph = self;
    l0.SetCurrentSizeOut = DummyFunction;
    l0.GrowthTreeCompleted = DummyFunction;
    self[129] = cbox:CreateBox("Domino/System/Delay_v4.lua");
    l0 = self[129];
    l0._graph = self;
    l0.Out = DummyFunction;
    l0.Started = DummyFunction;
    l0.Stopped = DummyFunction;
    l0.Paused = DummyFunction;
    l0.Resumed = DummyFunction;
    l0.TimeElapsed = self.f_129_TimeElapsed;
    l0.LoopingEnded = DummyFunction;
end;

function export:ShutDown()
    	for k,v in pairs(self) do if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then v:ShutDown() end end;
end;

function export:PreviousDialogDone()
    
end;

function export:Start()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    l0._graph = self;
    l0.Out = self.f_72_Out;
    l0:In();
end;

function export:f_31_Out()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0:Condition(0);
    l0 = self[89];
    l0:Condition(0);
    l0 = self[68];
    l0:Condition(0);
end;

function export:f_35_Out()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0:Condition(0);
    l0 = self[95];
    l0:Condition(0);
    l0 = self[51];
    l0:Condition(0);
    l0 = self[52];
    l0.seconds = 0.5;
    l0:Start();
end;

function export:f_41_Out()
    local l0;
    self = self._graph;
    l0 = self[97];
    l0:Condition(0);
    l0 = self[90];
    l0:Condition(0);
    l0 = self[13];
    l0.seconds = 0.5;
    l0:Start();
    l0 = self[74];
    l0:Condition(0);
end;

function export:f_42_Out()
    local l0;
    self = self._graph;
    l0 = self[92];
    l0:Condition(0);
    l0 = self[50];
    l0.seconds = 0.5;
    l0:Start();
    l0 = self[99];
    l0:Condition(0);
    l0 = self[100];
    l0:Condition(0);
end;

function export:f_43_Out()
    local l0;
    self = self._graph;
    l0 = self[94];
    l0:Condition(0);
    l0 = self[87];
    l0:Condition(0);
    l0 = self[45];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_44_Out()
    local l0;
    self = self._graph;
    l0 = self[82];
    l0:Condition(0);
    l0 = self[86];
    l0:Condition(0);
end;

function export:f_46_Out()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0:Condition(0);
    l0 = self[84];
    l0:Condition(0);
    l0 = self[1];
    l0.seconds = 1;
    l0:Start();
end;

function export:f_47_Out()
    local l0;
    self = self._graph;
    l0 = self[80];
    l0:Condition(0);
    l0 = self[69];
    l0:Condition(0);
end;

function export:f_48_Out()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:GrowthTree();
    self:en_5();
    l0 = self[5];
    l0:GrowthTree();
    self:en_12();
    l0 = self[12];
    l0:GrowthTree();
end;

function export:f_30_Out()
    local l0;
    self = self._graph;
    l0 = self[98];
    l0.Entities = "2073406161582917733";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_28();
    l0 = self[28];
    l0:SetCurrentSize();
    l0 = self[85];
    l0.Entities = "2073580914335567214";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = self[91];
    l0.Entities = "2073387232206532855";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = self[59];
    l0.Entities = "2073405916077714537";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = self[93];
    l0.Entities = "2073389263134689153";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_29();
    l0 = self[29];
    l0:SetCurrentSize();
    l0 = self[58];
    l0.Entities = "2073405918592199786";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_23();
    l0 = self[23];
    l0:SetCurrentSize();
    l0 = self[88];
    l0.Entities = "2073388822348962679";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_18();
    l0 = self[18];
    l0:SetCurrentSize();
    l0 = self[71];
    l0.Entities = "2073386178050011250";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073404509274515907";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_37_Out;
    l0:SetEnabled();
    self:en_6();
    l0 = self[6];
    l0:SetCurrentSize();
    self:en_12();
    l0 = self[12];
    l0:SetCurrentSize();
    l0 = self[81];
    l0.Entities = "2073580871325076845";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_8();
    l0 = self[8];
    l0:SetCurrentSize();
    self:en_27();
    l0 = self[27];
    l0:SetCurrentSize();
    self:en_14();
    l0 = self[14];
    l0:SetCurrentSize();
    self:en_9();
    l0 = self[9];
    l0:SetCurrentSize();
    l0 = self[53];
    l0.Entities = "2073386188527382646";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = self[79];
    l0.Entities = "2073580691532031672";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_24();
    l0 = self[24];
    l0:SetCurrentSize();
    l0 = self[73];
    l0.Entities = "2073580698138060473";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_4();
    l0 = self[4];
    l0:SetCurrentSize();
    self:en_22();
    l0 = self[22];
    l0:SetCurrentSize();
    self:en_15();
    l0 = self[15];
    l0:SetCurrentSize();
    self:en_25();
    l0 = self[25];
    l0:SetCurrentSize();
    l0 = self[67];
    l0.Entities = "2073405940935257195";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_26();
    l0 = self[26];
    l0:SetCurrentSize();
    l0 = self[63];
    l0.Entities = "2073405945211350124";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_11();
    l0 = self[11];
    l0:SetCurrentSize();
    self:en_16();
    l0 = self[16];
    l0:SetCurrentSize();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073582006454784424";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_65_Out;
    l0:SetEnabled();
    l0 = self[83];
    l0.Entities = "2073406067934595170";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = self[54];
    l0.Entities = "2073386061664366296";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073321104274890658";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_3_Out;
    l0:SetEnabled();
    l0 = self[76];
    l0.Entities = "2073386167016894574";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_17();
    l0 = self[17];
    l0:SetCurrentSize();
    self:en_21();
    l0 = self[21];
    l0:SetCurrentSize();
    l0 = self[56];
    l0.Entities = "2073387311732633849";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = self[96];
    l0.Entities = "2073406158491715684";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    l0 = Boxes[GetPathID("Domino/System/TriggerState.lua")];
    l0.Trigger = "2073581937257157023";
    l0.CheckLookAt = nil;
    l0.CheckAngle = nil;
    l0._graph = self;
    l0.Out = self.f_57_Out;
    l0:SetEnabled();
    l0 = self[55];
    l0.Entities = "2073388710916791128";
    l0.id2 = self.ePlayer;
    l0.nearZone = self.nearDistance;
    l0.use2d = true;
    l0:Enable();
    self:en_20();
    l0 = self[20];
    l0:SetCurrentSize();
end;

function export:f_106_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0:In(0);
    l0 = self[89];
    l0:Condition(1);
end;

function export:f_102_Out()
    local l0;
    self = self._graph;
    l0 = self[78];
    l0:Condition(1);
    l0 = self[101];
    l0:In(0);
end;

function export:f_116_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0:In(0);
    l0 = self[68];
    l0:Condition(1);
end;

function export:f_107_Out()
    local l0;
    self = self._graph;
    l0 = self[51];
    l0:Condition(1);
    l0 = self[101];
    l0:In(0);
end;

function export:f_103_Out()
    local l0;
    self = self._graph;
    l0 = self[64];
    l0:Condition(1);
    l0 = self[101];
    l0:In(0);
end;

function export:f_117_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0:In(0);
    l0 = self[95];
    l0:Condition(1);
end;

function export:f_108_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0:In(0);
    l0 = self[74];
    l0:Condition(1);
end;

function export:f_104_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0:In(0);
    l0 = self[90];
    l0:Condition(1);
end;

function export:f_118_Out()
    local l0;
    self = self._graph;
    l0 = self[97];
    l0:Condition(1);
    l0 = self[101];
    l0:In(0);
end;

function export:f_109_Out()
    local l0;
    self = self._graph;
    l0 = self[99];
    l0:Condition(1);
    l0 = self[101];
    l0:In(0);
end;

function export:f_115_Out()
    local l0;
    self = self._graph;
    l0 = self[101];
    l0:In(0);
    l0 = self[92];
    l0:Condition(1);
end;

function export:f_119_Out()
    local l0;
    self = self._graph;
    l0 = self[100];
    l0:Condition(1);
    l0 = self[101];
    l0:In(0);
end;

function export:f_110_Out()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0:In(0);
    l0 = self[94];
    l0:Condition(1);
end;

function export:f_120_Out()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0:In(0);
    l0 = self[87];
    l0:Condition(1);
end;

function export:f_111_Out()
    local l0;
    self = self._graph;
    l0 = self[86];
    l0:Condition(1);
    l0 = self[70];
    l0:In(0);
end;

function export:f_121_Out()
    local l0;
    self = self._graph;
    l0 = self[70];
    l0:In(0);
    l0 = self[82];
    l0:Condition(1);
end;

function export:f_112_Out()
    local l0;
    self = self._graph;
    l0 = self[77];
    l0:Condition(1);
    l0 = self[75];
    l0:In(0);
end;

function export:f_122_Out()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0:In(0);
    l0 = self[84];
    l0:Condition(1);
end;

function export:f_113_Out()
    local l0;
    self = self._graph;
    l0 = self[75];
    l0:In(0);
    l0 = self[69];
    l0:Condition(1);
end;

function export:f_123_Out()
    local l0;
    self = self._graph;
    l0 = self[80];
    l0:Condition(1);
    l0 = self[75];
    l0:In(0);
end;

function export:f_127_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_15();
    l0 = self[15];
    l0:GrowthTree();
end;

function export:f_58_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_110_Out;
    l0:In();
end;

function export:f_63_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_112_Out;
    l0:In();
end;

function export:f_142_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[143];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_94_Out()
    local l0;
    self = self._graph;
    self:en_6();
    l0 = self[6];
    l0:GrowthTree();
end;

function export:f_89_Out()
    local l0;
    self = self._graph;
    self:en_9();
    l0 = self[9];
    l0:GrowthTree();
end;

function export:f_145_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_24();
    l0 = self[24];
    l0:GrowthTree();
end;

function export:f_57_Out()
    local l0;
    self = self._graph;
    l0 = self[7];
    l0.triggerId = "2073581937257157023";
    l0:Enable();
end;

function export:f_19_Out()
    local l0;
    self = self._graph;
    l0 = self[61];
    l0.Entity = "2073403725916958467";
    l0.SoundId = "0x000A944F";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[60];
    l0.Entity = "2073403721812831999";
    l0.SoundId = "0x000A9453";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[62];
    l0.Entity = "2073403724052590337";
    l0.SoundId = "0x000A9452";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_71_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_102_Out;
    l0:In();
end;

function export:f_133_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_20();
    l0 = self[20];
    l0:GrowthTree();
end;

function export:f_99_Out()
    local l0;
    self = self._graph;
    self:en_28();
    l0 = self[28];
    l0:GrowthTree();
end;

function export:f_147_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_27();
    l0 = self[27];
    l0:GrowthTree();
end;

function export:f_7_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_43_Out;
    l0:In();
    l0 = self[19];
    l0:Condition(0);
end;

function export:f_52_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_31_Out;
    l0:In();
end;

function export:f_73_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_116_Out;
    l0:In();
end;

function export:f_90_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_128_Out;
    l0:In();
end;

function export:f_135_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_11();
    l0 = self[11];
    l0:GrowthTree();
end;

function export:f_87_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_132_Out;
    l0:In();
end;

function export:f_80_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_138_Out;
    l0:In();
end;

function export:f_84_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_136_Out;
    l0:In();
end;

function export:f_10_GrowthTreeCompleted()
    self = self._graph;
    self:Completed();
end;

function export:f_93_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_121_Out;
    l0:In();
end;

function export:f_37_Out()
    local l0;
    self = self._graph;
    l0 = self[36];
    l0.triggerId = "2073404509274515907";
    l0:Enable();
end;

function export:f_92_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_130_Out;
    l0:In();
end;

function export:f_78_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_126_Out;
    l0:In();
end;

function export:f_2_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_42_Out;
    l0:In();
    l0 = self[105];
    l0:Condition(0);
end;

function export:f_143_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_8();
    l0 = self[8];
    l0:GrowthTree();
end;

function export:f_131_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_29();
    l0 = self[29];
    l0:GrowthTree();
end;

function export:f_97_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_144_Out;
    l0:In();
end;

function export:f_51_Out()
    local l0;
    self = self._graph;
    self:en_23();
    l0 = self[23];
    l0:GrowthTree();
end;

function export:f_141_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_16();
    l0 = self[16];
    l0:GrowthTree();
end;

function export:f_83_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_118_Out;
    l0:In();
end;

function export:f_101_Out_0()
    local l0;
    self = self._graph;
    l0 = self[105];
    l0:Condition(1);
end;

function export:f_85_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_115_Out;
    l0:In();
end;

function export:f_98_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_123_Out;
    l0:In();
end;

function export:f_49_Out()
    local l0;
    self = self._graph;
    l0 = self[40];
    l0.Entity = "2073403725916958467";
    l0.SoundId = "0x000A944F";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[33];
    l0.Entity = "2073403724052590337";
    l0.SoundId = "0x000A9452";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[34];
    l0.Entity = "2073403721812831999";
    l0.SoundId = "0x000A9453";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_139_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_4();
    l0 = self[4];
    l0:GrowthTree();
end;

function export:f_100_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_146_Out;
    l0:In();
end;

function export:f_56_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_109_Out;
    l0:In();
end;

function export:f_72_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer.lua")];
    self.ePlayer = l0.LocalPlayer;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_30_Out;
    l0:In();
end;

function export:f_45_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_44_Out;
    l0:In();
end;

function export:f_96_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_122_Out;
    l0:In();
end;

function export:f_124_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_17();
    l0 = self[17];
    l0:GrowthTree();
end;

function export:f_59_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_111_Out;
    l0:In();
end;

function export:f_67_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_113_Out;
    l0:In();
end;

function export:f_64_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_125_Out;
    l0:In();
end;

function export:f_81_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_104_Out;
    l0:In();
end;

function export:f_138_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[139];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_128_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[129];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_69_Out()
    local l0;
    self = self._graph;
    self:en_21();
    l0 = self[21];
    l0:GrowthTree();
end;

function export:f_146_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[147];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_136_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[137];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_5_SetCurrentSizeOut()
    local l0;
    self = self._graph;
    self:en_10();
    l0 = self[10];
    l0:SetCurrentSize();
end;

function export:f_140_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[141];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_75_Out_0()
    local l0;
    self = self._graph;
    l0 = self[49];
    l0:Condition(1);
end;

function export:f_1_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_47_Out;
    l0:In();
end;

function export:f_70_Out_0()
    local l0;
    self = self._graph;
    l0 = self[19];
    l0:Condition(1);
end;

function export:f_137_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_22();
    l0 = self[22];
    l0:GrowthTree();
end;

function export:f_77_Out()
    local l0;
    self = self._graph;
    self:en_14();
    l0 = self[14];
    l0:GrowthTree();
end;

function export:f_88_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_119_Out;
    l0:In();
end;

function export:f_55_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_108_Out;
    l0:In();
end;

function export:f_125_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[124];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_65_Out()
    local l0;
    self = self._graph;
    l0 = self[66];
    l0.triggerId = "2073582006454784424";
    l0:Enable();
end;

function export:f_105_Out()
    local l0;
    self = self._graph;
    l0 = self[32];
    l0.Entity = "2073403717721288445";
    l0.SoundId = "0x000A9450";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[38];
    l0.Entity = "2073403707868868347";
    l0.SoundId = "0x000A9451";
    l0.SoundType = 11;
    l0:Play();
    l0 = self[39];
    l0.Entity = "2073403704853163769";
    l0.SoundId = "0x000A9454";
    l0.SoundType = 11;
    l0:Play();
end;

function export:f_144_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[145];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_134_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[135];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_50_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_41_Out;
    l0:In();
end;

function export:f_132_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[133];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_82_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_134_Out;
    l0:In();
end;

function export:f_53_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_106_Out;
    l0:In();
end;

function export:f_66_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_48_Out;
    l0:In();
end;

function export:f_13_TimeElapsed()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_35_Out;
    l0:In();
end;

function export:f_74_Out()
    local l0;
    self = self._graph;
    self:en_25();
    l0 = self[25];
    l0:GrowthTree();
end;

function export:f_79_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_117_Out;
    l0:In();
end;

function export:f_86_Out()
    local l0;
    self = self._graph;
    self:en_18();
    l0 = self[18];
    l0:GrowthTree();
end;

function export:f_95_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_142_Out;
    l0:In();
end;

function export:f_126_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[127];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_68_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    l0.Min = 0.05;
    l0.Max = 0.2;
    l0._graph = self;
    l0.Out = self.f_140_Out;
    l0:In();
end;

function export:f_3_Out()
    local l0;
    self = self._graph;
    l0 = self[2];
    l0.triggerId = "2073321104274890658";
    l0:Enable();
end;

function export:f_36_Enter()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_46_Out;
    l0:In();
    l0 = self[49];
    l0:Condition(0);
end;

function export:f_130_Out()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat.lua")];
    self.randowGrow = l0.Target;
    l0 = self[131];
    l0.seconds = self.randowGrow;
    l0:Start();
end;

function export:f_54_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_107_Out;
    l0:In();
end;

function export:f_76_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_103_Out;
    l0:In();
end;

function export:f_91_Near()
    local l0;
    self = self._graph;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0._graph = self;
    l0.Out = self.f_120_Out;
    l0:In();
end;

function export:f_12_SetCurrentSizeOut()
    local l0;
    self = self._graph;
    self:en_5();
    l0 = self[5];
    l0:SetCurrentSize();
end;

function export:f_129_TimeElapsed()
    local l0;
    self = self._graph;
    self:en_26();
    l0 = self[26];
    l0:GrowthTree();
end;

function export:en_9()
    local l0;
    l0 = self[9];
    l0.growthEntityId = "2073386188527382646";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0101;
end;

function export:en_23()
    local l0;
    l0 = self[23];
    l0.growthEntityId = "2073386061664366296";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0201;
end;

function export:en_11()
    local l0;
    l0 = self[11];
    l0.growthEntityId = "2073389263134689153";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0602;
end;

function export:en_10()
    local l0;
    l0 = self[10];
    l0.growthEntityId = "2073582872582694809";
    l0.growthPerc = 0;
    l0.growthSpeed = -0.2;
    l0.growthGroup = self.gRT_GHtrees03;
end;

function export:en_25()
    local l0;
    l0 = self[25];
    l0.growthEntityId = "2073388710916791128";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0301;
end;

function export:en_22()
    local l0;
    l0 = self[22];
    l0.growthEntityId = "2073406158491715684";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0702;
end;

function export:en_29()
    local l0;
    l0 = self[29];
    l0.growthEntityId = "2073580914335567214";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0402;
end;

function export:en_24()
    local l0;
    l0 = self[24];
    l0.growthEntityId = "2073406067934595170";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0303;
end;

function export:en_8()
    local l0;
    l0 = self[8];
    l0.growthEntityId = "2073580691532031672";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0203;
end;

function export:en_17()
    local l0;
    l0 = self[17];
    l0.growthEntityId = "2073386167016894574";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0202;
end;

function export:en_16()
    local l0;
    l0 = self[16];
    l0.growthEntityId = "2073580698138060473";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0103;
end;

function export:en_15()
    local l0;
    l0 = self[15];
    l0.growthEntityId = "2073386178050011250";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0102;
end;

function export:en_18()
    local l0;
    l0 = self[18];
    l0.growthEntityId = "2073405916077714537";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0601;
end;

function export:en_28()
    local l0;
    l0 = self[28];
    l0.growthEntityId = "2073387311732633849";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0401;
end;

function export:en_5()
    local l0;
    l0 = self[5];
    l0.growthEntityId = "2073290491564139130";
    l0.growthPerc = 0;
    l0.growthSpeed = -0.2;
    l0.growthGroup = self.gRT_GHtrees02;
end;

function export:en_20()
    local l0;
    l0 = self[20];
    l0.growthEntityId = "2073387232206532855";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0502;
end;

function export:en_21()
    local l0;
    l0 = self[21];
    l0.growthEntityId = "2073405940935257195";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0801;
end;

function export:en_4()
    local l0;
    l0 = self[4];
    l0.growthEntityId = "2073406161582917733";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0802;
end;

function export:en_26()
    local l0;
    l0 = self[26];
    l0.growthEntityId = "2073580871325076845";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0302;
end;

function export:en_14()
    local l0;
    l0 = self[14];
    l0.growthEntityId = "2073405945211350124";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0701;
end;

function export:en_12()
    local l0;
    l0 = self[12];
    l0.growthEntityId = "2073581987781743013";
    l0.growthPerc = 0;
    l0.growthSpeed = -0.2;
    l0.growthGroup = self.gRT_GHtrees01;
end;

function export:en_6()
    local l0;
    l0 = self[6];
    l0.growthEntityId = "2073405918592199786";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0501;
end;

function export:en_27()
    local l0;
    l0 = self[27];
    l0.growthEntityId = "2073388822348962679";
    l0.growthPerc = 1;
    l0.growthSpeed = 0.1;
    l0.growthGroup = self.gRT_pack0403;
end;

-- Empty out anchor definitions
function export:Completed()
    
end;
function export:DialogDone()
    
end;
_compilerVersion = 24;
