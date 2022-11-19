//:: k_qa
/*
    SHOW VARIABLE STATES = 2 or 3 Digits
    1: Show the K_KOTOR_MASTER state
    2: Show the K_CURRENT_PLANET state
    3: Show the K_CAPTURED_LEV state
    4: Show the K_STAR_MAP state
    5: Show Bastila Messenger Plot conditional states
    6: Show Carth Messenger Plot conditional states
    7: Show Canderous Messenger Plot conditional states
    8: Show Jolee Messenger Plot conditional states
    9: Show Juhani Messenger Plot conditional states
    10: Show Mission Messenger Plot conditional states
    11: Show Galaxy Map state
    12: Show the state of the Xor ambush variable
    13: Show the state of the Calo / Bandon Variable
    14: Show the state of the starmap vision variables

    SET VARIABLE STATES = 4 Digits
    1000: Bastila Messenger is available
    1001: Carth Messenger is available
    1002: Xor Ambush set to 1
    1003: Set Juhani G_JUHANIH_STATE variable to 7
    1004: Sets up a test run of the Bastila Messenger.
    1005: Sets up a test run of the Carth Messenger.
    1006: Sets up a test run of the Juhani Messenger Part 1.
    1007: Sets up a test run of the Juhani Messenger Part 2.
    1008: Sets up a test run of the Canderous Messenger: Part 1
    1009: Sets up a test run of the Canderous Messenger: Part 2
    1010: Sets up a test run of the Mission Messenger.
    1011: Set K_STAR_MAP = 10;
    1012: Set K_STAR_MAP = 20;
    1013: Set K_STAR_MAP = 30;
    1014: Set K_STAR_MAP = 40;
    1015: Set K_STAR_MAP = 50;
    1016: Gives the PC 10000 Credits
    1017: Spawns a kill blaster into the character's inventory.
    1018: Opens the door nearest to the PC
    1019: Light Side Full
    1020: Dark Side Full
    1021: Set To Neutral
    
    PLAY MOVIE = 3 Digits
    100: Movie 01A, Text crawl and space battle above Taris
    101: Movie 01C, Escape Pod
    102: Movie 01G, Swoop race turns ugly
    103: Movie 02, Bastila fights Revan
    104: Movie 03, Leviathan orbiting Taris
    105: Movie 05, Establishing shot of the Leviathan
    106: Movie 5_1C	Ebon Hawk LEAVES  TARIS
    107: Movie 05_2A	Ebon Hawk ARRIVES on Dantooine
    108: Movie 05_2C	Ebon Hawk LEAVES Dantooine
    109: Movie 05_3A	Ebon Hawk ARRIVES on Tatooine
    110: Movie 05_3C	Ebon Hawk LEAVES Tatooine
    111: Movie 05_4A	Ebon Hawk ARRIVES on Kashyyyk
    112: Movie 05_4C	Ebon Hawk LEAVES Kashyyyk
    113: Movie 05_5A	Ebon Hawk ARRIVES on Manaan
    114: Movie 05_5C	Ebon Hawk LEAVES Manaan
    115: Movie 05_7A	Ebon Hawk ARRIVES on Korriban
    116: Movie 05_7C	Ebon Hawk LEAVES Korriban
    117: Movie 05_8A	Ebon Hawk ARRIVES on UW
    118: Movie 05_9	Ebon Hawk LEAVES UW amidst a space battle
    119: Movie 07_1	Ext shot of Ebon Hawk flyby.1
    120: Movie 07_2	Ext shot of Ebon Hawk flyby.2
    121: Movie 07_3	Ext shot of Ebon Hawk Takes a HIT!
    122: Movie 07_4	Ext shot of Ebon Hawk Takes a HIT!
    123: Movie 08	Hyperspace (Generic)
    124: Movie 09	FB- Recollection of starmap operation
    125: Movie 17	Ebon Hawk TRACTOR BEAMED by the Leviathan
    126: Movie 17A	Ebon Hawk escapes the Leviathan
    127: Movie 22A	Party lowered into Kashyyyk shadowlands
    128: Movie 22B	Party raised from Kashyyyk shadowlands
    129: Movie 23A	Submarine Decents to Hrakert Kolto Stn.
    130: Movie 23B	Submarine Acents to Manaan Sea port
    131: Movie 26A	Kolto machine self-destructs
    132: Movie 26B	Kolto machine discharges waste
    133: Movie 31A	FB - Player meets Malak, Flashback of the betrayal, Jedi council.
    134: Movie 33	Star Forge Est. Shot
    135: Movie 43	Ebon Hawk lands on the SF
    136: Movie 50	Fighters successfully attack the Sith fleet
    137: Movie 51	Republic gets their ass kicked
    138: Movie 54	 Republic Dies
    139: Movie 54B	Dodonna's ship explodes
    140: Movie 55	DS- Final Scene SF repaired infinite fleet
    141: Movie 56	LS- Star Forge under heavy attack
    142: Movie 56B	LS- Ebon Hawk blasts away as Star Forge explodes
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    object oNPC;
    int nQA = GetRunScriptVar();
    //SHOW VARIABLE STATES
    switch(nQA)
    {
        case 1: //K_KOTOR_MASTER state
        {
            /*
            PC is on Endar Spire Var = 0
            PC is on Taris Var = 5
            Dantooine is enabled = 10
            Creamly Middle is Enabled = 15.  This is set when the PC finds the Star Map and talks to the Jedi Council
            Player Escapes the Leviathan = 20.  This shuts off Dantooine.
            Player finds the final Star Map = 30. Opens up the unknown world
            Player chooses to Unknown World = 40.  Closes off rest of game, player is on rocket sled to the end of game.
            Player leave Unknown World for the star forge = 50.
            */
            Db_PostString("K_KOTOR_MASTER = " + IntToString(GetGlobalNumber("K_KOTOR_MASTER")), 10, 10, 7.0);
        }
        break;
        
        case 2: //K_CURRENT_PLANET state
        {
            /*
            World Variables
            Global Number Variable: Planet Settings
            VARIABLE = K_CURRENT_PLANET
                Endar Spire     5
                Taris           10
                Dantooine       15
                --Kashyyk       20
                --Manaan        25
                --Korriban      30
                --Tatooine      35
                Leviathan       40
                Unknown World   45
                Star Forge      50
            */
            Db_PostString("K_CURRENT_PLANET = " + IntToString(GetGlobalNumber("K_CURRENT_PLANET")), 10, 10, 7.0);
        }
        break;

        case 3: //K_CAPTURED_LEV state
        {
            /*
            If the variable K_STAR_MAP is at 30 and
            the variable K_CAPTURED_LEV = 5 then
            run the leviathan module.
            K_CAPTURED_LEV States
            0 = Pre Leviathan
            5 = Captured
            10 = Escaped
            */
            Db_PostString("K_CAPTURED_LEV = " + IntToString(GetGlobalNumber("K_CAPTURED_LEV")), 10, 10, 7.0);
        }
        break;

        case 4: //K_STAR_MAP state
        {
            /*
            Star Map
            The global number is:
            K_STAR_MAP
            States:
            0 - No maps activated
            10 - 1st Map Activated (Dantooine)
            20 - 2nd Map Activated
            30 - 3rd Map Activated
            40 - 4th Map Activated - Captured by the Leviathan
            50 - 5th Map Activated
            */
            Db_PostString("K_STAR_MAP = " + IntToString(GetGlobalNumber("K_STAR_MAP")), 10, 10, 7.0);
        }
        break;

        case 5: //Bastila Messenger Plot
        {
            /*
                IsNPCPartyMember(NPC_BASTILA)
                GetGlobalBoolean("K_MESS_BASTILA") == FALSE
                GetGlobalNumber("KOR_DANEL") == 1
            */
            Db_PostString("", 10, 10, 7.0);
            Db_PostString("Bastila Messenger Variable States", 10, 12, 7.0);
            Db_PostString("Bastila in Party (1) = " + IntToString(IsNPCPartyMember(NPC_BASTILA)), 10, 14, 7.0);
            Db_PostString("K_MESS_BASTILA   (0) = " + IntToString(GetGlobalBoolean("K_MESS_BASTILA")), 10, 16, 7.0);
            Db_PostString("K_SWG_HELENA     (1) = " + IntToString(GetGlobalNumber("K_SWG_HELENA")), 10, 18, 7.0);
        }
        break;

        case 6: //Carth Messenger Plot
        {
            /*
                IsNPCPartyMember(NPC_CARTH)
                GetGlobalBoolean("K_MESS_CARTH") == FALSE
                GetGlobalNumber("K_SWG_HELENA") = 1;
            */
            Db_PostString("", 10, 10, 7.0);
            Db_PostString("Carth Messenger Variable States", 10, 12, 7.0);
            Db_PostString("Carth in Party (1) = " + IntToString(IsNPCPartyMember(NPC_CARTH)), 10, 14, 7.0);
            Db_PostString("K_MESS_CARTH   (0) = " + IntToString(GetGlobalBoolean("K_MESS_CARTH")), 10, 16, 7.0);
            Db_PostString("KOR_DANEL   (1) = " + IntToString(GetGlobalNumber("KOR_DANEL")), 10, 18, 7.0);
        }
        break;

        case 7: //Canderous Messenger Plot
        {
            /*
                IsNPCPartyMember(NPC_CANDEROUS)
                GetGlobalBoolean("K_MESS_CANDEROUS") == FALSE
                nGlobal_1 = GetGlobalNumber("G_CAND_STATE") == 8;
                nGlobal_2 = GetGlobalNumber("G_CAND_PLOT") == 1;
            */
            Db_PostString("", 10, 10, 7.0);
            Db_PostString("Canderous Messenger Variable States", 10, 12, 7.0);
            Db_PostString("Canderous in Party (1)   = " + IntToString(IsNPCPartyMember(NPC_CANDEROUS)), 10, 14, 7.0);
            Db_PostString("K_MESS_CANDEROUS   (0)   = " + IntToString(GetGlobalBoolean("K_MESS_CANDEROUS")), 10, 16, 7.0);
            Db_PostString("G_CAND_STATE       (8)   = " + IntToString(GetGlobalNumber("G_CAND_STATE")), 10, 18, 7.0);
            Db_PostString("G_CAND_PLOT        (0)   = " + IntToString(GetGlobalNumber("G_CAND_PLOT")), 10, 20, 7.0);
            Db_PostString("K_CURRENT_PLANET   (!35) = " + IntToString(GetGlobalNumber("K_CURRENT_PLANET")), 10, 22, 7.0);
        }
        break;

        case 8:
        {
            /*
                IsNPCPartyMember(NPC_JOLEE)
                GetGlobalBoolean("K_MESS_JOLEE") == FALSE
                GetGlobalNumber("MAN_MURDER_PLOT") == 0;
            */
            Db_PostString("", 10, 10, 7.0);
            Db_PostString("Jolee Messenger Variable States", 10, 12, 7.0);
            Db_PostString("Jolee in Party  (1) = " + IntToString(IsNPCPartyMember(NPC_JOLEE)), 10, 14, 7.0);
            Db_PostString("K_MESS_JOLEE    (0) = " + IntToString(GetGlobalBoolean("K_MESS_JOLEE")), 10, 16, 7.0);
            Db_PostString("MAN_MURDER_PLOT (0) = " + IntToString(GetGlobalNumber("MAN_MURDER_PLOT")), 10, 18, 7.0);
        }
        break;
        
        case 9:
        {
            /*
                IsNPCPartyMember(NPC_JUHANI)
                GetGlobalBoolean("K_MESS_JUHANI") == FALSE
                GetGlobalNumber("G_JUHANIH_STATE") = 7;
                GetGlobalNumber("G_JUHANI_PLOT") = 0;
            */
            Db_PostString("", 10, 10, 7.0);
            Db_PostString("Juhani Messenger Variable States", 10, 12, 7.0);
            Db_PostString("Juhani in Party (1) = " + IntToString(IsNPCPartyMember(NPC_JUHANI)), 10, 14, 7.0);
            Db_PostString("K_MESS_JUHANI   (0) = " + IntToString(GetGlobalBoolean("K_MESS_JUHANI")), 10, 16, 7.0);
            Db_PostString("G_JUHANIH_STATE (7) = " + IntToString(GetGlobalNumber("G_JUHANIH_STATE")), 10, 18, 7.0);
            Db_PostString("G_JUHANI_PLOT   (0) = " + IntToString(GetGlobalNumber("G_JUHANI_PLOT")), 10, 20, 7.0);
        }
        break;

        case 10:
        {
            /*
                IsNPCPartyMember(NPC_MISSION)
                GetGlobalBoolean("K_MESS_MISSION") == FALSE
                GetGlobalNumber("K_CURRENT_PLANET") != 35
                GetGlobalNumber("Mis_MissionTalk") == 5;
            */
            Db_PostString("", 10, 10, 7.0);
            Db_PostString("Mission Messenger Variable States", 10, 12, 7.0);
            Db_PostString("Mission in Party (1)   = " + IntToString(IsNPCPartyMember(NPC_MISSION)), 10, 14, 7.0);
            Db_PostString("K_MESS_MISSION   (7)   = " + IntToString(GetGlobalBoolean("K_MESS_MISSION")), 10, 16, 7.0);
            Db_PostString("Mis_MissionTalk  (5)   = " + IntToString(GetGlobalNumber("Mis_MissionTalk")), 10, 18, 7.0);
            Db_PostString("K_CURRENT_PLANET (!35) = " + IntToString(GetGlobalNumber("K_CURRENT_PLANET")), 10, 22, 7.0);
        }
        break;

        case 11:
        {
            /*
                Shows the current state of the following variables. Basically this is a summary of actions 1 through 4.
            */
            Db_PostString("K_KOTOR_MASTER   = " + IntToString(GetGlobalNumber("K_KOTOR_MASTER")), 10, 10, 7.0);
            Db_PostString("K_CURRENT_PLANET = " + IntToString(GetGlobalNumber("K_CURRENT_PLANET")), 10, 12, 7.0);
            Db_PostString("K_STAR_MAP       = " + IntToString(GetGlobalNumber("K_STAR_MAP")), 10, 14, 7.0);
            Db_PostString("K_CAPTURED_LEV   = " + IntToString(GetGlobalNumber("K_CAPTURED_LEV")), 10, 16, 7.0);
            Db_PostString("K_KALO_BANDON    = " + IntToString(GetGlobalNumber("K_KALO_BANDON")), 10, 18, 7.0);
        }
        break;
        
        case 12:
        {
            /*
                Show the state of the Xor ambush variable
                0 = No ambush
                1 = Ambush when ready
                99 = Completed
            */
            Db_PostString("K_XOR_AMBUSH (1) = " + IntToString(GetGlobalNumber("K_XOR_AMBUSH")), 10, 16, 7.0);
        }
        break;

        case 13:
        {
            /*
            Show the state of the Calo / Bandon Variable
            */
            Db_PostString("K_KALO_BANDON  = " + IntToString(GetGlobalNumber("K_KALO_BANDON")), 10, 16, 7.0);
        }
        break;
        case 14:
        {
            /*
            Checks the states of the vision stunt load variables.
            */
            Db_PostString("k_vis_kashyyyk2  = " + IntToString(GetGlobalBoolean("k_vis_kashyyyk2")), 10, 14, 7.0);
            Db_PostString("k_vis_manaan2  = " + IntToString(GetGlobalBoolean("k_vis_manaan2")), 10, 16, 7.0);
            Db_PostString("k_vis_korriban2  = " + IntToString(GetGlobalBoolean("k_vis_korriban2")), 10, 18, 7.0);
            Db_PostString("k_vis_tatooine2  = " + IntToString(GetGlobalBoolean("k_vis_tatooine2")), 10, 20, 7.0);
        }
        break;

    //SET VARIABLE STATES
        case 1000:
        {
            /*
                Sets the variable K_SWG_HELENA to true.  Opens Bastila messenger plot
            */
            SetGlobalNumber("K_SWG_HELENA", 1);
            Db_PostString("K_SWG_HELENA set to 1", 10, 16, 7.0);
        }
        break;

        case 1001:
        {
            /*
                Sets the variable KOR_DANEL to true. Opens Carth messenger plot
            */
            SetGlobalNumber("KOR_DANEL", 1);
            Db_PostString("KOR_DANEL set to 1", 10, 16, 7.0);
        }
        break;
        
        case 1002:
        {
            /*
                Sets the K_XOR_AMBUSH ambush variable to true.
            */
            Db_PostString("K_XOR_AMBUSH now equals 1", 10, 16, 7.0);
            SetGlobalNumber("K_XOR_AMBUSH", 1);
        
        }
        break;
        case 1003:
        {
            /*
                Sets the G_JUHANIH_STATE messenger variable to 7.
            */
            Db_PostString("G_JUHANIH_STATE now equals 7", 10, 16, 7.0);
            SetGlobalNumber("G_JUHANIH_STATE", 7);
        }
        break;
        case 1004:
        {
            /*
                Sets up the messenger plot for testing for Bastila
            */
            object oPC = GetFirstPC();
            Db_PostString("Starting Bastila Messenger Plot", 10, 10, 7.0);
            SetGlobalBoolean("K_MESS_BASTILA", FALSE);
            SetGlobalNumber("KOR_DANEL", 1);
            oNPC = CreateObject(OBJECT_TYPE_CREATURE, "g_malare", GetLocation(oPC));
            DelayCommand(2.0, AssignCommand(oNPC, ActionStartConversation(oPC)));
        }
        break;
        case 1005:
        {
            /*
                Sets up the messenger plot for testing Carth
            */
            object oPC = GetFirstPC();
            Db_PostString("Starting Carth Messenger Plot", 10, 10, 7.0);
            SetGlobalBoolean("K_MESS_CARTH", FALSE);
            SetGlobalNumber("K_SWG_HELENA", 1);
            oNPC = CreateObject(OBJECT_TYPE_CREATURE, "g_jordo", GetLocation(oPC));
            DelayCommand(2.0, AssignCommand(oNPC, ActionStartConversation(oPC)));
        }
        break;
        case 1006:
        {
            /*
                Sets up Xor's First Dialogue
            */
            object oPC = GetFirstPC();
            Db_PostString("Starting Juhani Messenger Plot: Part 1", 10, 10, 7.0);
            SetGlobalNumber("G_JUHANIH_STATE", 7);
            oNPC = CreateObject(OBJECT_TYPE_CREATURE, "g_xor", GetLocation(oPC));
            DelayCommand(2.0, AssignCommand(oNPC, ActionStartConversation(oPC)));
        }
        break;
        case 1007:
        {
            /*
                Sets up Xor's Second Dialogue
            */
            object oPC = GetFirstPC();
            Db_PostString("Starting Juhani Messenger Plot: Part 2", 10, 10, 7.0);
            SetGlobalNumber("G_JUHANIH_STATE", 7);
            SetGlobalNumber("K_XOR_AMBUSH", 2);
            oNPC = CreateObject(OBJECT_TYPE_CREATURE, "g_xor", GetLocation(oPC));
            DelayCommand(2.0, AssignCommand(oNPC, ActionStartConversation(oPC)));
        }
        break;
        case 1008:
        {
            /*
                Sets up the messenger plot for testing Canderous: Part 1
            */
            object oPC = GetFirstPC();
            Db_PostString("Starting Canderous Messenger Plot: Part 1", 10, 10, 7.0);
            SetGlobalNumber("G_CAND_STATE", 6);
            SetGlobalNumber("G_CAND_PLOT", 0);
            oNPC = CreateObject(OBJECT_TYPE_CREATURE, "g_jagi", GetLocation(oPC));
            DelayCommand(2.0, AssignCommand(oNPC, ActionStartConversation(oPC)));
        }
        break;
        case 1009:
        {
            /*
                Sets up the messenger plot for testing Canderous: Part 2
            */
            object oPC = GetFirstPC();
            Db_PostString("Starting Canderous Messenger Plot: Part 2", 10, 10, 7.0);
            SetGlobalNumber("G_CAND_STATE", 6);
            SetGlobalNumber("G_CAND_PLOT", 1);
            oNPC = CreateObject(OBJECT_TYPE_CREATURE, "g_jagi", GetLocation(oPC));
            DelayCommand(2.0, AssignCommand(oNPC, ActionStartConversation(oPC)));
        }
        break;
        case 1010:
        {
            /*
                Sets up the messenger plot for testing Mission
            */
            object oPC = GetFirstPC();
            Db_PostString("Starting Mission Messenger Plot", 10, 10, 7.0);
            SetGlobalNumber("Mis_MissionTalk", 5);
            oNPC = CreateObject(OBJECT_TYPE_CREATURE, "g_lena", GetLocation(oPC));
            DelayCommand(2.0,  AssignCommand(oNPC, ActionStartConversation(oPC)));
        }
        break;
        case 1011:
        {
            /*
                Sets K_STAR_MAP = 10;
            */
            Db_PostString("K_STAR_MAP == 10", 10, 10, 7.0);
            SetGlobalNumber("K_STAR_MAP", 10);
        }
        break;
        case 1012:
        {
            /*
                Sets K_STAR_MAP = 20;
            */
            Db_PostString("K_STAR_MAP == 20", 10, 10, 7.0);
            SetGlobalNumber("K_STAR_MAP", 20);
        }
        break;
        case 1013:
        {
            /*
                Sets K_STAR_MAP = 30;
            */
            Db_PostString("K_STAR_MAP == 30", 10, 10, 7.0);
            SetGlobalNumber("K_STAR_MAP", 30);
        }
        break;
        case 1014:
        {
            /*
                Sets K_STAR_MAP = 40;
            */
            Db_PostString("K_STAR_MAP == 40", 10, 10, 7.0);
            SetGlobalNumber("K_STAR_MAP", 40);
        }
        break;
        case 1015:
        {
            /*
                Sets K_STAR_MAP = 50;
            */
            Db_PostString("K_STAR_MAP == 50", 10, 10, 7.0);
            SetGlobalNumber("K_STAR_MAP", 50);
        }
        break;
        case 1016:
        {
            /*
                Give the PC 10000 Credits
            */
            Db_PostString("Granted 10000 Credits", 10, 10, 7.0);
            GiveGoldToCreature(GetPartyMemberByIndex(0), 10000);
        }
        break;
        case 1017:
        {
            /*
                Gives the PC a kill gun
            */
            Db_PostString("Kill Gun Granted", 10, 10, 7.0);
            CreateItemOnObject("G_W_BLSTRPSTL020", GetFirstPC(), 3);
        }
        break;
        case 1018:
        {
            /*
                Opens the door nearest the PC.
            */
            Db_PostString("Opening the nearest door", 10, 10, 7.0);
            object oDoor = GetNearestObject(OBJECT_TYPE_DOOR, GetFirstPC(), 1);
            if(GetIsObjectValid(oDoor))
            {
                SetPlotFlag(oDoor, FALSE);
                SetLocked(oDoor, FALSE);
                AssignCommand(oDoor, ActionOpenDoor(oDoor));
            }
        }
        break;
        case 1019:
        {
            /*
                1019: Light Side Full
                1020: Dark Side Full
                1021: Set To Neutral
            */
            AdjustAlignment(GetFirstPC(), ALIGNMENT_LIGHT_SIDE, 100);
        }
        break;
        case 1020:
        {
            /*
                1019: Light Side Full
                1020: Dark Side Full
                1021: Set To Neutral
            */
            AdjustAlignment(GetFirstPC(), ALIGNMENT_DARK_SIDE, 100);
        }
        break;
        case 1021:
        {
            /*
                1019: Light Side Full
                1020: Dark Side Full
                1021: Set To Neutral
            */
            AdjustAlignment(GetFirstPC(), ALIGNMENT_NEUTRAL, 100);
        }
        break;
        
        case 100:
        {
            Db_PostString("Play Movie: 01A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("01A"));
        }
        case 101:
        {
            Db_PostString("Play Movie: 01C", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("01C"));
        }
        case 102:
        {
            Db_PostString("Play Movie: 01G ", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("01G"));
        }
        case 103:
        {
            Db_PostString("Play Movie: 02", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("02"));
        }
        case 104:
        {
            Db_PostString("Play Movie: 03", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("03"));
        }
        case 105:
        {
            Db_PostString("Play Movie: 05", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05"));
        }
        case 106:
        {
            Db_PostString("Play Movie: 5_1C", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("5_1C"));
        }
        case 107:
        {
            Db_PostString("Play Movie: 05_2A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_2A"));
        }
        case 108:
        {
            Db_PostString("Play Movie: 05_2C", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_2C"));
        }
        case 109:
        {
            Db_PostString("Play Movie: 05_3A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_3A"));
        }
        case 110:
        {
            Db_PostString("Play Movie: 05_3C", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_3C"));
        }
        case 111:
        {
            Db_PostString("Play Movie: 05_4A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_4A"));
        }
        case 112:
        {
            Db_PostString("Play Movie: 05_4C", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_4C"));
        }
        case 113:
        {
            Db_PostString("Play Movie: 05_5A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_5A"));
        }
        case 114:
        {
            Db_PostString("Play Movie: 05_5C", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_5C"));
        }

        case 115:
        {
            Db_PostString("Play Movie: 05_7A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_7A"));
        }
        case 116:
        {
            Db_PostString("Play Movie: 05_7C", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_7C"));
        }
        case 117:
        {
            Db_PostString("Play Movie: 05_8A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_8A"));
        }
        case 118:
        {
            Db_PostString("Play Movie: 05_9", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("05_9"));
        }
        case 119:
        {
            Db_PostString("Play Movie: 07_1", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("07_1"));
        }
        case 120:
        {
            Db_PostString("Play Movie: 07_2", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("07_2"));
        }
        case 121:
        {
            Db_PostString("Play Movie: 07_3", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("07_3"));
        }
        case 122:
        {
            Db_PostString("Play Movie: 07_4", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("07_4"));
        }
        case 123:
        {
            Db_PostString("Play Movie: 08", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("08"));
        }
        case 124:
        {
            Db_PostString("Play Movie: 09", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("09"));
        }
        case 125:
        {
            Db_PostString("Play Movie: 17", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("17"));
        }
        case 126:
        {
            Db_PostString("Play Movie: 17A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("17A"));
        }
        case 127:
        {
            Db_PostString("Play Movie: 22A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("22A"));
        }
        case 128:
        {
            Db_PostString("Play Movie: 22B", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("22B"));
        }
        case 129:
        {
            Db_PostString("Play Movie: 23A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("23A"));
        }
        case 130:
        {
            Db_PostString("Play Movie: 23B", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("23B"));
        }
        case 131:
        {
            Db_PostString("Play Movie: 26A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("26A"));
        }
        case 132:
        {
            Db_PostString("Play Movie: 26B", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("26B"));
        }
        case 133:
        {
            Db_PostString("Play Movie: 31A", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("31A"));
        }
        case 134:
        {
            Db_PostString("Play Movie: 33", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("33"));
        }
        case 135:
        {
            Db_PostString("Play Movie: 43", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("43"));
        }
        case 136:
        {
            Db_PostString("Play Movie: 50", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("50"));
        }
        case 137:
        {
            Db_PostString("Play Movie: 51", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("51"));
        }
        case 138:
        {
            Db_PostString("Play Movie: 54", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("54"));
        }
        case 139:
        {
            Db_PostString("Play Movie: 54B", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie(""));
        }
        case 140:
        {
            Db_PostString("Play Movie: 55", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("55"));
        }
        case 141:
        {
            Db_PostString("Play Movie: 56", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("56"));
        }
        case 142:
        {
            Db_PostString("Play Movie: 56B", 10, 10, 7.0);
            DelayCommand(2.0, PlayMovie("56B"));
        }
   }
}
