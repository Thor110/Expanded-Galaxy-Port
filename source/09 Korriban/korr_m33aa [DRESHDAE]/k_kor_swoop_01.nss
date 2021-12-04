// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub1();

void sub1() {
	object oPC = GetFirstPC();
	object oK_MESSENGER_SPAWN = GetWaypointByTag("K_MESSENGER_SPAWN");
	object oG_lena;
	int int1;
	int int2;
	location location1;
	int int3 = 0;
	int nGlobal = GetGlobalNumber("K_XOR_AMBUSH");
	if ((GetGlobalNumber("K_CURRENT_PLANET") == 20)) {
		int3 = GetGlobalBoolean("kas_ChuundarDead");
	}
	if ((int3 == 0)) {
		if (((nGlobal == 0) || (nGlobal > 2))) {
			if (GetIsObjectValid(oK_MESSENGER_SPAWN)) {
				location1 = GetLocation(oK_MESSENGER_SPAWN);
				if ((((GetGlobalNumber("K_KOTOR_MASTER") >= 20) && (GetGlobalNumber("K_Exchange_Store") == 0)) && (GetGlobalBoolean("K_MESS_ZIAGROM") == 0))) {
					SetGlobalBoolean("K_MESS_ZIAGROM", 1);
					oG_lena = CreateObject(1, "g_Ziagrom", location1, 0);
					NoClicksFor(2.2);
					DelayCommand(2.0, AssignCommand(oG_lena, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
					return;
				}
				if ((((IsNPCPartyMember(0) && (GetGlobalBoolean("K_MESS_BASTILA") == 0)) && (GetGlobalNumber("K_CURRENT_PLANET") != 25)) && (GetGlobalNumber("K_SWG_HELENA") == 1))) {
					SetGlobalBoolean("K_MESSENGER_AVAILABLE", 0);
					SetGlobalBoolean("K_MESS_BASTILA", 1);
					oG_lena = CreateObject(1, "g_malare", location1, 0);
					NoClicksFor(2.2);
					DelayCommand(2.0, AssignCommand(oG_lena, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
					return;
				}
				if (((((IsNPCPartyMember(2) && (GetGlobalBoolean("KOR_END_HOSTILE") == 0)) && (GetGlobalBoolean("K_MESS_CARTH") == 0)) && (GetGlobalNumber("K_CURRENT_PLANET") != 30)) && (GetGlobalNumber("KOR_DANEL") == 1))) {
					SetGlobalBoolean("K_MESSENGER_AVAILABLE", 0);
					SetGlobalBoolean("K_MESS_CARTH", 1);
					oG_lena = CreateObject(1, "g_jordo", location1, 0);
					NoClicksFor(2.2);
					DelayCommand(2.0, AssignCommand(oG_lena, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
					return;
				}
				if (((((IsNPCPartyMember(4) && (GetGlobalBoolean("K_MESS_JOLEE") == 0)) && (GetGlobalNumber("K_CURRENT_PLANET") != 25)) && (GetGlobalNumber("K_CURRENT_PLANET") != 20)) && (GetGlobalNumber("MAN_MURDER_PLOT") == 0))) {
					SetGlobalBoolean("K_MESSENGER_AVAILABLE", 0);
					SetGlobalBoolean("K_MESS_JOLEE", 1);
					oG_lena = CreateObject(1, "g_davink", location1, 0);
					NoClicksFor(2.2);
					DelayCommand(2.0, AssignCommand(oG_lena, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
					return;
				}
				if (((((IsNPCPartyMember(5) && (GetGlobalBoolean("K_MESS_JUHANI") == 0)) && ((GetGlobalNumber("G_JUHANIH_STATE") > 5) && (GetGlobalNumber("G_JUHANIP_STATE") < 10))) && (GetGlobalNumber("G_JUHANI_PLOT") == 0)) && (GetGlobalNumber("K_CURRENT_PLANET") != 15))) {
					SetGlobalBoolean("K_MESSENGER_AVAILABLE", 0);
					SetGlobalBoolean("K_MESS_JUHANI", 1);
					oG_lena = CreateObject(1, "g_xor", location1, 0);
					NoClicksFor(2.2);
					DelayCommand(2.0, AssignCommand(oG_lena, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
					return;
				}
				if ((((((IsNPCPartyMember(1) && (GetGlobalBoolean("K_MESS_CANDEROUS") == 0)) && (GetGlobalNumber("K_CURRENT_PLANET") != 35)) && (GetGlobalNumber("G_CAND_STATE") >= 6)) && (GetGlobalBoolean("G_CAND_THING") == 1)) && (GetGlobalNumber("G_CAND_PLOT") == 0))) {
					SetGlobalBoolean("K_MESSENGER_AVAILABLE", 0);
					SetGlobalBoolean("K_MESS_CANDEROUS", 1);
					oG_lena = CreateObject(1, "g_jagi", location1, 0);
					NoClicksFor(2.2);
					DelayCommand(2.0, AssignCommand(oG_lena, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
					return;
				}
				if (((((IsNPCPartyMember(6) && (GetGlobalBoolean("K_MESS_MISSION") == 0)) && (GetGlobalNumber("K_CURRENT_PLANET") != 35)) && (GetGlobalNumber("K_CURRENT_PLANET") != 25)) && (GetGlobalNumber("Mis_MissionTalk") == 5))) {
					SetGlobalBoolean("K_MESSENGER_AVAILABLE", 0);
					SetGlobalBoolean("K_MESS_MISSION", 1);
					oG_lena = CreateObject(1, "g_lena", location1, 0);
					NoClicksFor(2.2);
					DelayCommand(2.0, AssignCommand(oG_lena, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "")));
					return;
				}
			}
		}
	}
}

void main() {
	if (GetIsPC(GetEnteringObject())) {
		sub1();
	}
}

