// Globals
	int intGLOB_11 = 10;

// Prototypes
void sub5();
void sub4();
int sub3(int intParam1);
void sub2();
void sub1();

void sub5() {
	string sModule = GetModuleFileName();
	if ((sModule == "manm28ad")) {
		SetGlobalBoolean("K_STAR_MAP_MANAAN", 1);
		AddJournalQuestEntry("k_starforge", 40, 1);
	}
	else {
		if ((sModule == "korr_m39aa")) {
			SetGlobalBoolean("K_STAR_MAP_KORRIBAN", 1);
			AddJournalQuestEntry("k_starforge", 10, 1);
		}
		else {
			if ((sModule == "Kas_m25aa")) {
				SetGlobalBoolean("K_STAR_MAP_KASHYYYK", 1);
				AddJournalQuestEntry("k_starforge", 30, 1);
			}
			else {
				if ((sModule == "Tat_m18ac")) {
					SetGlobalBoolean("K_STAR_MAP_TATOOINE", 1);
					AddJournalQuestEntry("k_starforge", 20, 1);
				}
			}
		}
	}
	if ((GetGlobalNumber("K_STAR_MAP") == 50)) {
		AddJournalQuestEntry("k_starforge", 50, 1);
	}
}

void sub4() {
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_SWG_BASTILA");
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, intGLOB_11);
	if ((nLocalBool == 0)) {
		AurPostString(("K_STAR_MAP Before = " + IntToString(nGlobal)), 5, 5, 5.0);
		nGlobal = (nGlobal + 10);
		SetGlobalNumber("K_STAR_MAP", nGlobal);
		AurPostString(("K_STAR_MAP After = " + IntToString(nGlobal)), 5, 7, 5.0);
		if ((nGlobal == 30)) {
			if ((int3 < 3)) {
				SetGlobalNumber("K_SWG_BASTILA", 99);
			}
		}
		else {
			if ((nGlobal == 40)) {
				SetGlobalNumber("K_CAPTURED_LEV", 5);
				if ((int3 < 5)) {
					SetGlobalNumber("K_SWG_BASTILA", 99);
				}
			}
			else {
				if ((nGlobal == 50)) {
					SetGlobalNumber("K_KOTOR_MASTER", 30);
				}
			}
		}
		SetLocalBoolean(OBJECT_SELF, intGLOB_11, 1);
		sub5();
		AurPostString(("Manaan Starmap = " + IntToString(GetGlobalBoolean("K_STAR_MAP_MANAAN"))), 5, 9, 4.0);
		AurPostString(("Kashyyyk Starmap = " + IntToString(GetGlobalBoolean("K_STAR_MAP_KASHYYYK"))), 5, 11, 4.0);
		AurPostString(("Korriban Starmap = " + IntToString(GetGlobalBoolean("K_STAR_MAP_KORRIBAN"))), 5, 13, 4.0);
		AurPostString(("Tatooine Starmap = " + IntToString(GetGlobalBoolean("K_STAR_MAP_TATOOINE"))), 5, 15, 4.0);
	}
}

int sub3(int intParam1) {
	if ((intParam1 == 0)) {
		return 204;
	}
	else {
		if ((intParam1 == 10)) {
			return 205;
		}
		else {
			if ((intParam1 == 20)) {
				return 206;
			}
			else {
				if ((intParam1 == 30)) {
					return 207;
				}
				else {
					if ((intParam1 == 40)) {
						return 209;
					}
				}
			}
		}
	}
	return (-1);
}

void sub2() {
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int nLocalBool = GetLocalBoolean(OBJECT_SELF, intGLOB_11);
	float float1 = 30.0;
	if ((nLocalBool == 0)) {
		ActionPlayAnimation(200, 1.0, 0.0);
		ActionPlayAnimation(sub3(nGlobal), 1.0, 0.0);
		if ((nGlobal == 40)) {
			float1 = 60.0;
		}
		DelayCommand(float1, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

void sub1() {
	sub2();
	sub4();
}

void main() {
  DestroyObject(GetObjectByTag("ebon_armband"));
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oTat18_wp_map1 = GetWaypointByTag("tat18_wp_map1");
	object oTat18_wp_map2 = GetWaypointByTag("tat18_wp_map2");
	object oTat18_wp_map3 = GetWaypointByTag("tat18_wp_map3");
	object oK_TAT_STAR_MAP = GetObjectByTag("K_TAT_STAR_MAP", 0);
	ActionPauseConversation();
	AssignCommand(oNPC, JumpToObject(oTat18_wp_map1, 1));
	AssignCommand(object3, JumpToObject(oTat18_wp_map2, 1));
	AssignCommand(object5, JumpToObject(oTat18_wp_map3, 1));
	DelayCommand(13.0, ActionResumeConversation());
	SetGlobalBoolean("tat_StarmapFound", 1);
	AssignCommand(oK_TAT_STAR_MAP, PlaySound("pl_starmap_open"));
	AssignCommand(oK_TAT_STAR_MAP, sub1());
}

