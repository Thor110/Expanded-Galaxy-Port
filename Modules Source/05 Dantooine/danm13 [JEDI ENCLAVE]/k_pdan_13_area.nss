// Prototypes
int sub6();
int sub5();
int sub4();
object sub3();
void sub2(string stringParam1, string stringParam2);
void sub1();

int sub6() {
	return ((GetGlobalNumber("DAN_ELISE_PLOT") == 4) || (GetGlobalNumber("DAN_ELISE_PLOT") == 5));
}

int sub5() {
	return (GetGlobalNumber("DAN_ELISE_PLOT") >= 6);
}

int sub4() {
	return GetGlobalBoolean("DAN_ELISE_COMPOUND");
}

object sub3() {
	return GetObjectByTag("bastila", 0);
}

void sub2(string stringParam1, string stringParam2) {
	if ((!GetIsObjectValid(GetObjectByTag(stringParam1, 0)))) {
		CreateObject(1, stringParam1, GetLocation(GetObjectByTag((("POST_" + stringParam1) + stringParam2), 0)), 0);
	}
}

void sub1() {
	object oPC = GetFirstPC();
	object oInvItem = GetFirstItemInInventory(oPC);
	string string1;
	while (GetIsObjectValid(oInvItem)) {
		string1 = GetTag(oInvItem);
		if (((((((((((((((((string1 == "rakghoulserum") || (string1 == "ptar_sbpasscrd")) || (string1 == "ptar_sithpapers")) || (string1 == "ptar_sitharmor")) || (string1 == "tar02_sithbasekeycard")) || (string1 == "ptar_permacrete")) || (string1 == "ptar_appjournal")) || (string1 == "ptar_rukjournal")) || (string1 == "tar05_synthodor")) || (string1 == "ptar_shieldcodes")) || (string1 == "tar10_mechid")) || (string1 == "tar10_garagekey")) || (string1 == "tar10_accelerator")) || (string1 == "tar05_bekplan")) || (string1 == "tar08_comppass")) || (string1 == "tar09_techlog"))) {
			DelayCommand(0.1, DestroyObject(oInvItem, 0.0, 0, 0.0));
		}
		oInvItem = GetNextItemInInventory(oPC);
	}
}

void main() {
	if ((GetLoadFromSaveGame() == 0)) {
		RevealMap([0.0,0.0,0.0], 0xFFFFFFFF);
		string string1 = "dan13_juhani";
		string string2 = "dan13_rahasia";
		string string3 = "dan13_shen";
		int nGlobal = GetGlobalNumber("DAN_JEDI_PLOT");
		if ((IsAvailableCreature(2) == 0)) {
			AddAvailableNPCByTemplate(2, "p_carth");
		}
		if ((IsAvailableCreature(0) == 0)) {
			AddAvailableNPCByTemplate(0, "p_bastilla");
		}
		if (GetIsPC(GetEnteringObject())) {
			sub1();
			if (((GetGlobalNumber("DAN_JUHANI_PLOT") == 3) && (GetGlobalBoolean("DAN_JUHANI_JOINED") == 0))) {
				sub2(string1, "");
			}
			if ((GetGlobalNumber("DAN_ROMANCE_PLOT") == 4)) {
				sub2(string2, "");
				sub2(string3, "");
			}
			if (((nGlobal > 1) && (nGlobal < 7))) {
				AssignCommand(GetObjectByTag("dan13_zhar", 0), JumpToObject(GetObjectByTag("dan13_WP_zhar01", 0), 1));
			}
			if (((GetGlobalBoolean("DAN_BASTM_DONE") == 0) && GetGlobalBoolean("DAN_STARMAP_DONE"))) {
				AssignCommand(sub3(), JumpToObject(GetObjectByTag("dan13_wp_bastzone6", 0), 1));
			}
			if ((GetGlobalNumber("DAN_ROMANCE_PLOT") > 0)) {
				DestroyObject(GetObjectByTag("dan13_ahlan", 0), 0.0, 0, 0.0);
			}
			if ((sub4() && (sub5() == 0))) {
				sub2("dan13_elise", "");
				if (sub6()) {
					sub2("dan13_c869", "");
				}
				else {
					sub2("dan13_samnt", "");
				}
			}
			if ((GetGlobalNumber("KOR_KEL_DOUBT") == 4)) {
				sub2("dan13_kelalgwinn", "");
			}
		}
	}
	else {
		object oCarth = GetObjectByTag("carth", 0);
		object oBastila = GetObjectByTag("bastila", 0);
		if (GetIsObjectValid(oCarth)) {
			SetAvailableNPCId(2, oCarth);
		}
		if (GetIsObjectValid(oBastila)) {
			SetAvailableNPCId(0, oBastila);
		}
    //AssignCommand(oBastila, ActionStartConversation(oBastila, "", 0, 0, 0, "", "", "", "", "", ""));
	}
  //ActionStartConversation(oBastila,"",);
  
}

