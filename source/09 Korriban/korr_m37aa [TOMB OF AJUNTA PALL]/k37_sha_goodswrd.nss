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
	int intGLOB_28 = 24;

// Prototypes
void sub2();
void sub1(int intParam1);

void sub2() {
	object oK37_snd_unsheath = GetObjectByTag("k37_snd_unsheath", 0);
	SoundObjectPlay(oK37_snd_unsheath);
}

void sub1(int intParam1) {
	SetGlobalNumber("KOR_SHAARDAN_SWORD", intParam1);
}

void main() {
	object oSpeaker = GetPCSpeaker();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object object7 = GetItemPossessedBy(oSpeaker, "k37_itm_freedont");
	object object9 = GetItemPossessedBy(oNPC, "k37_itm_freedont");
	object object11 = GetItemPossessedBy(object5, "k37_itm_freedont");
	if (GetIsObjectValid(object7)) {
		DestroyObject(object7, 0.0, 0, 0.0);
	}
	else {
		if (GetIsObjectValid(object9)) {
			DestroyObject(object9, 0.0, 0, 0.0);
		}
		else {
			if (GetIsObjectValid(object11)) {
				DestroyObject(object11, 0.0, 0, 0.0);
			}
		}
	}
	sub1(1);
	sub2();
}

