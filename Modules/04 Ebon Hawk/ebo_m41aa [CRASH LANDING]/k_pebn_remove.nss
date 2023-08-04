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
void sub2();
void sub1(string stringParam1, string stringParam2, object objectParam3);

void sub2() {
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(int1);
	while (GetIsObjectValid(oNPC)) {
		if ((GetCurrentHitPoints(oNPC) < 1)) {
			ApplyEffectToObject(0, EffectResurrection(), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
		}
		(int1++);
		oNPC = GetPartyMemberByIndex(int1);
	}
}

void sub1(string stringParam1, string stringParam2, object objectParam3) {
	object object1 = GetObjectByTag(stringParam1, 0);
	object oPC = GetFirstPC();
	sub2();
	if ((GetIsObjectValid(object1) == 1)) {
		if ((oPC == GetPartyMemberByIndex(0))) {
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object1, ClearAllActions());
			CancelCombat(oPC);
			AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
		}
		else {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			object oNPC = GetPartyMemberByIndex(1);
			object object8 = GetPartyMemberByIndex(2);
			NoClicksFor(0.7);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object1, ClearAllActions());
			CancelCombat(oPC);
			if ((GetIsObjectValid(objectParam3) == 1)) {
				AssignCommand(oPC, DelayCommand(0.2, JumpToObject(objectParam3, 1)));
				AssignCommand(oPC, DelayCommand(0.4, SetFacingPoint(GetPosition(object1))));
			}
			else {
				AssignCommand(oPC, DelayCommand(0.2, JumpToObject(object1, 1)));
			}
			AssignCommand(oNPC, DelayCommand(0.5, JumpToObject(oPC, 1)));
			AssignCommand(object8, DelayCommand(0.5, JumpToObject(oPC, 1)));
			AssignCommand(object1, ActionDoCommand(SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0)));
			AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
		}
	}
}

void main() {
DestroyObject(GetObjectByTag("ebon_armband"));
int nKOTOR = GetGlobalNumber("K_KOTOR_MASTER");
if(nKOTOR == 60)
    {

	if ((GetIsPC(GetEnteringObject()) == 1)) {
/*
		RemoveJournalQuestEntry("tat18ac_dragonhunt");
		RemoveJournalQuestEntry("kor25_doubtsith");
		RemoveJournalQuestEntry("kas23_rorworr");
		RemoveJournalQuestEntry("kor35_aidlashowe");
		RemoveJournalQuestEntry("k_swg_helenatalk");
		RemoveJournalQuestEntry("kas23_mainwookplot");
		RemoveJournalQuestEntry("tat_ambush");
		RemoveJournalQuestEntry("tat17ad_buyinghk47");
		RemoveJournalQuestEntry("ebo_supplies");
		RemoveJournalQuestEntry("man_elora");
		RemoveJournalQuestEntry("kor33_enteracademy");
		RemoveJournalQuestEntry("tat17aa_jawarescue");
		RemoveJournalQuestEntry("kor35_findingdustil");
		RemoveJournalQuestEntry("man_firith");
		RemoveJournalQuestEntry("man_gluupor");
		RemoveJournalQuestEntry("kas25_mandalorians");
		RemoveJournalQuestEntry("kas22_EliMatton");
		RemoveJournalQuestEntry("man_ignus");
		RemoveJournalQuestEntry("k_jagi");
		RemoveJournalQuestEntry("kas24_removepoachers");
		RemoveJournalQuestEntry("tar_largobounty");
		RemoveJournalQuestEntry("Man26ab_swoopraces");
		RemoveJournalQuestEntry("tat17aa_middleman");
		RemoveJournalQuestEntry("man_missing");
		RemoveJournalQuestEntry("k_missbroth");
		RemoveJournalQuestEntry("kor35_renegadesith");
		RemoveJournalQuestEntry("man_merc");
		RemoveJournalQuestEntry("kor38_roguedroid");
		RemoveJournalQuestEntry("tat17ag_sandbounty");
		RemoveJournalQuestEntry("tat17ae_signingnico");
		RemoveJournalQuestEntry("kas22_starmap");
		RemoveJournalQuestEntry("kor33_findstarmap");
		RemoveJournalQuestEntry("man26_starmap");
		RemoveJournalQuestEntry("tat17_starmap");
		RemoveJournalQuestEntry("k_pebo_stowaway");
		RemoveJournalQuestEntry("man_murder");
		RemoveJournalQuestEntry("man_sunry");
		RemoveJournalQuestEntry("kas24_tachpoaching");
		RemoveJournalQuestEntry("tat18aa_tanistrapped");
		RemoveJournalQuestEntry("tat17ae_swoopracing");
		RemoveJournalQuestEntry("Category000");
		RemoveJournalQuestEntry("kor35_doublecross");
		RemoveJournalQuestEntry("kor35_doublecross2");
		RemoveJournalQuestEntry("kor38_hermit");
		RemoveJournalQuestEntry("kor35_mandalorian");
		RemoveJournalQuestEntry("kor37_ajuntapall");
		RemoveJournalQuestEntry("k_pebo_gizkatrouble");
		RemoveJournalQuestEntry("kor35_waysith");
		RemoveJournalQuestEntry("k_xor");
		RemoveJournalQuestEntry("ebo46_unfinishedbusiness");
		RemoveJournalQuestEntry("Tat20aa_worthy");
		RemoveJournalQuestEntry("Genoharadan");
		RemoveJournalQuestEntry("Geno_Ithorak");
		RemoveJournalQuestEntry("Geno_Lorgal");
		RemoveJournalQuestEntry("Geno_Rulan");
		RemoveJournalQuestEntry("Geno_Vorn");
		RemoveJournalQuestEntry("Geno_Zuulan");
		RemoveJournalQuestEntry("k_pazaak");
*/
		if ((GetGlobalBoolean("EBO_HYPER_FIXED") == 0)) {
			AssignCommand(GetObjectByTag("Hyperdrive", 0), ActionPlayAnimation(201, 1.0, 0.0));
			if ((GetGlobalBoolean("UNK_SHIPPARTS") == 1)) {
				sub1("invis", "ebo41_tell", OBJECT_INVALID);
			}
		}
		else {
			AssignCommand(GetObjectByTag("Hyperdrive", 0), ActionPlayAnimation(200, 1.0, 0.0));
		}
		PlayRoomAnimation("m12aa_01q", 7);
		if ((IsAvailableCreature(4) == 1)) {
			DestroyObject(GetObjectByTag("bastila", 0), 0.0, 1, 0.0);
			RemovePartyMember(0);
		}
		RevealMap([0.0,0.0,0.0], 0xFFFFFFFF);
	}

}

/*
else
{
  
}
*/

}

