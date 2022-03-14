// Prototypes
int sub4();
int sub3(object objectParam1);
int sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

int sub4() {
	return GetGlobalBoolean("kas_TalkChuundar");
}

int sub3(object objectParam1) {
	return sub2(GetArea(objectParam1), 1);
}

int sub2(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub1(object objectParam1) {
	return sub2(GetArea(objectParam1), 0);
}

void main() {
	object oPC = GetFirstPC();
	object oHK47;
	object oEntering = GetEnteringObject();
	object oKas22_partspeak1 = GetObjectByTag("kas22_partspeak1", 0);
	object oKas_party_wp = GetWaypointByTag("kas_party_wp");
	object oKas_partypc_wp = GetWaypointByTag("kas_partypc_wp");
	//if (((sub1(OBJECT_SELF) == 1) || (sub3(OBJECT_SELF) == 1))) {
	//	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	//}
	//else {
		if (((((((GetIsPC(oEntering) == 1) && (sub4() == 0)) && (sub1(OBJECT_SELF) == 0)) && (sub3(OBJECT_SELF) == 0)) && (IsNPCPartyMember(8) == 0)) && ((((((IsNPCPartyMember(6) == 1) || (IsNPCPartyMember(2) == 1)) || (IsNPCPartyMember(0) == 1)) || (IsNPCPartyMember(5) == 1)) || (IsNPCPartyMember(1) == 1)) || (IsNPCPartyMember(3) == 1)))) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			if ((IsNPCPartyMember(6) == 1)) {
				oHK47 = GetObjectByTag("Mission", 0);
			}
			else {
				if ((IsNPCPartyMember(2) == 1)) {
					oHK47 = GetObjectByTag("Carth", 0);
				}
				else {
					if ((IsNPCPartyMember(0) == 1)) {
						oHK47 = GetObjectByTag("Bastila", 0);
					}
					else {
						if ((IsNPCPartyMember(5) == 1)) {
							oHK47 = GetObjectByTag("Juhani", 0);
						}
						else {
							if ((IsNPCPartyMember(1) == 1)) {
								oHK47 = GetObjectByTag("Cand", 0);
							}
							else {
								if ((IsNPCPartyMember(3) == 1)) {
									oHK47 = GetObjectByTag("HK47", 0);
								}
							}
						}
					}
				}
			}
			SetPartyLeader(0xFFFFFFFF);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oPC, DelayCommand(1.0, JumpToObject(oKas_partypc_wp, 1)));
			AssignCommand(oHK47, ClearAllActions());
			AssignCommand(oHK47, DelayCommand(1.0, JumpToObject(oKas_party_wp, 1)));
			NoClicksFor(1.4);
			AssignCommand(oKas22_partspeak1, DelayCommand(1.2, ActionStartConversation(oPC, "22aa_zaalb01_01", 0, 0, 1, "", "", "", "", "", "")));
		}
	//}
}

