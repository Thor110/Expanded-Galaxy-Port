// Prototypes
int sub3(object objectParam1, int intParam2);
int sub2(object objectParam1);
int sub1();

int sub3(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub2(object objectParam1) {
	return sub3(GetArea(objectParam1), 0);
}

int sub1() {
	return GetGlobalBoolean("kas_TalkChuundar");
}

void main() {
	object oPC = GetFirstPC();
	object oEntering = GetEnteringObject();
	object oZaalbar = GetObjectByTag("Zaalbar", 0);
	object oKas22_zaalspeak1 = GetObjectByTag("kas22_zaalspeak1", 0);
	object oKas_zaalbar_wp = GetWaypointByTag("kas_zaalbar_wp");
	object oKas_zaalbarpc_wp = GetWaypointByTag("kas_zaalbarpc_wp");
	if ((GetIsPC(oEntering) == 1)) {
		if ((((sub1() == 0) && (sub2(OBJECT_SELF) == 0)) && (IsNPCPartyMember(8) == 1))) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oKas_zaalbarpc_wp, 1)));
			AssignCommand(oZaalbar, ClearAllActions());
			AssignCommand(oZaalbar, DelayCommand(1.0, JumpToObject(oKas_zaalbar_wp, 1)));
			NoClicksFor(1.4);
			AssignCommand(oKas22_zaalspeak1, DelayCommand(1.2, ActionStartConversation(oPC, "22aa_zaalb01_01", 0, 0, 1, "", "", "", "", "", "")));
		}
		else {
			//DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
		}
	}
}

