void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	int int1 = 0;
	int int2 = 0;
	int int3 = 0;
	if ((((GetTag(oNPC) == "HK47") || (GetTag(oNPC) == "T3M4")) || (GetTag(GetItemInSlot(1, oNPC)) == "tat17_sandperdis"))) {
		int1 = 1;
	}
	if (((((GetTag(object3) == "HK47") || (GetTag(object3) == "T3M4")) || (GetTag(GetItemInSlot(1, object3)) == "tat17_sandperdis")) || (GetIsObjectValid(object3) == 0))) {
		int2 = 1;
	}
	if (((((GetTag(object5) == "HK47") || (GetTag(object5) == "T3M4")) || (GetTag(GetItemInSlot(1, object5)) == "tat17_sandperdis")) || (GetIsObjectValid(object5) == 0))) {
		int3 = 1;
	}
	if (((GetGlobalBoolean("tat_TuskenSuit") == 0) && (GetGlobalBoolean("tat_TuskenMad") == 0))) {
		if ((((int1 == 1) && (int2 == 1)) && (int3 == 1))) {
			AdjustReputation(oNPC, oTat18_tuskanfac, 50);
			SetGlobalBoolean("tat_TuskenSuit", 1);
		}
	}
	else {
		if (((((int1 == 0) || (int2 == 0)) || (int3 == 0)) || (GetGlobalBoolean("tat_TuskenMad") == 1))) {
			AdjustReputation(oNPC, oTat18_tuskanfac, (-50));
			SetGlobalBoolean("tat_TuskenSuit", 0);
		}
	}
}

