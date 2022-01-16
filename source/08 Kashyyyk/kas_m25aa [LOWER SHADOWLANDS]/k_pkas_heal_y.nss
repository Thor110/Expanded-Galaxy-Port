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

int StartingConditional() {
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object object7 = GetItemPossessedBy(oPC, "g_i_medeqpmnt01");
	object object9 = GetItemPossessedBy(oPC, "g_i_medeqpmnt02");
	object object11 = GetItemPossessedBy(oPC, "g_i_medeqpmnt03");
	object object13 = GetItemPossessedBy(oPC, "g_i_medeqpmnt04");
	if ((((((((((GetIsObjectValid(object7) || GetIsObjectValid(object9)) || GetIsObjectValid(object11)) || GetIsObjectValid(object13)) || GetHasSpell(28, oPC)) || GetHasSpell(10, oPC)) || GetHasSpell(28, oNPC)) || GetHasSpell(10, oNPC)) || GetHasSpell(28, object5)) || GetHasSpell(10, object5))) {
		return 1;
	}
	return 0;
}

