// Prototypes
string sub4(int intParam1);
object sub3(int intParam1, string stringParam2);
void sub2();
int sub1();

string sub4(int intParam1) {
	switch (intParam1) {
		case 0:
			return "atton";
			break;
		case 1:
			return "baodur";
			break;
		case 2:
			return "mand";
			break;
		case 11:
			return "disciple";
			break;
		case 3:
			return "g0t0";
			break;
		case 4:
			return "handmaiden";
			break;
		case 10:
			return "hanharr";
			break;
		case 5:
			return "hk47";
			break;
		case 6:
			return "kreia";
			break;
		case 7:
			return "mira";
			break;
		case 8:
			return "t3m4";
			break;
		case 9:
			return "visasmarr";
			break;
	}
	return "ERROR";
}

object sub3(int intParam1, string stringParam2) {
	string string1;
	if ((stringParam2 == "WP_gspawn_")) {
		string string2 = sub4(intParam1);
		if ((string2 == "ERROR")) {
			return OBJECT_INVALID;
		}
		string1 = (stringParam2 + string2);
	}
	else {
		string1 = stringParam2;
	}
	object object1 = GetObjectByTag(string1, 0);
	object object3;
	if (GetIsObjectValid(object1)) {
		object3 = SpawnAvailableNPC(intParam1, GetLocation(object1));
		if (GetIsObjectValid(object3)) {
			SetCreatureAILevel(object3, 3);
			return object3;
		}
	}
	return OBJECT_INVALID;
}

void sub2() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	SetPartyLeader(0xFFFFFFFF);
	object oAtton;
	if ((!IsNPCPartyMember(0))) {
		oAtton = sub3(0, "WP_move_atton");
	}
	else {
		oAtton = GetObjectByTag("atton", 0);
	}
	if (GetIsObjectValid(oAtton)) {
		object oPC = GetFirstPC();
		AssignCommand(oPC, ClearAllActions());
		AssignCommand(oAtton, ClearAllActions());
		AssignCommand(oAtton, ActionStartConversation(GetFirstPC(), "visquis", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		AurPostString("301: ERROR WITH VISQUIS DIALOG!", 5, 15, 10.0);
	}
}

int sub1() {
	int int1;
	object oNPC;
	int1 = 0;
	while ((int1 < 3)) {
		oNPC = GetPartyMemberByIndex(int1);
		if (GetIsObjectValid(oNPC)) {
			if (GetIsInCombat(oNPC, 0)) {
				return 1;
			}
		}
		(int1++);
	}
	return 0;
}

void main() {
	if (((((!GetGlobalBoolean("300NAR_Visquis_Call")) && (GetJournalEntry("LandingRights") >= 90)) && (GetGlobalNumber("302NAR_Entered") == 1)) && (GetGlobalNumber("303NAR_Entered") == 1))) {
		int nGlobal = GetGlobalNumber("300NAR_Exchange_Gap");
		if ((nGlobal >= 8)) {
			if (GetIsConversationActive()) {
				return;
			}
			if (sub1()) {
				return;
			}
			SetGlobalBoolean("300NAR_Visquis_Call", 1);
			AurPostString("Ring ring, it is the exchange calling!", 5, 15, 10.0);
			sub2();
		}
	}
}

