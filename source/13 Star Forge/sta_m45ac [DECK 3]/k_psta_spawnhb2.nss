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
int sub1();

int sub1() {
	int int1 = 0;
	object oAreaObject = GetFirstObjectInArea(OBJECT_SELF, 1);
	while (GetIsObjectValid(oAreaObject)) {
		if (((((GetStandardFaction(oAreaObject) == 1) || (GetStandardFaction(oAreaObject) == 3)) && (!GetIsDead(oAreaObject))) && (GetRacialType(oAreaObject) != 5))) {
			int1 = (int1 + 1);
		}
		oAreaObject = GetNextObjectInArea(OBJECT_SELF, 1);
	}
	return int1;
}

void main() {
	int int1 = GetGlobalBoolean("K_STA_SPAWNER");
	int nGlobal = GetGlobalNumber("K_STA_HORDE");
	object oNPC = GetPartyMemberByIndex(0);
	int int5 = (Random(11) + 1);
	string string1;
	if (((int5 == 1) || (int5 == 2))) {
		string1 = "sta45c_trooper";
	}
	else {
		if (((int5 == 3) || (int5 == 4))) {
			string1 = "k_sta_trooperenc";
		}
		else {
			if (((int5 == 5) || (int5 == 6))) {
				string1 = "sta45c_sithappre";
			}
			else {
				if ((int5 == 7)) {
					string1 = "k_sta_sithenc";
				}
				else {
					if (((int5 == 8) || (int5 == 9))) {
						string1 = "k_sta_sithenc001";
					}
					else {
						if ((int5 == 10)) {
							string1 = "sta45c_troope001";
						}
						else {
							string1 = "k_sta_sithenc002";
						}
					}
				}
			}
		}
	}
	if (((int1 == 1) && (!GetIsInConversation(oNPC)))) {
		if ((sub1() <= 4)) {
			if ((nGlobal < 9)) {
				object oNearestSTA_HORDE_SPAWN = GetNearestObjectByTag("STA_HORDE_SPAWN", oNPC, 1);
				object object5 = GetNearestObjectByTag("STA_HORDE_SPAWN", oNPC, 2);
				location location1 = GetLocation(object5);
				SetGlobalNumber("K_STA_HORDE", (nGlobal + 1));
				CreateObject(1, string1, location1, 0);
			}
		}
	}
}

