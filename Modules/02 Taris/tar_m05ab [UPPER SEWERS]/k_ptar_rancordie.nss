// Prototypes
/*
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}
*/
void main() {
	object oTar05_corpsepile = GetObjectByTag("tar05_corpsepile", 0);
	object object3;
	object object4 = GetLastUsedBy();
	//sub1("EATING", 5, 5, 5.0);
	if ((GetIsObjectValid(object3 = GetItemPossessedBy(oTar05_corpsepile, "g_w_fraggren01")) && (GetTag(object4) == "tar05_stampy"))) {
		DestroyObject(object3, 0.0, 0, 0.0);
		DelayCommand(3.0, ApplyEffectToObject(0, EffectChoke(), object4, 0.0));
		DelayCommand(6.0, ApplyEffectToObject(0, EffectDeath(1, 1), object4, 0.0));
		AddJournalQuestEntry("tar_rancor", 99, 0);
		GivePlotXP("tar_misc", 20);
	}
	else {
		if ((GetIsObjectValid(object3 = GetItemPossessedBy(oTar05_corpsepile, "g_w_thermldet01")) && (GetTag(object4) == "tar05_stampy"))) {
			DestroyObject(object3, 0.0, 0, 0.0);
			DelayCommand(6.0, ApplyEffectToObject(0, EffectDeath(1, 1), object4, 0.0));
			AddJournalQuestEntry("tar_rancor", 99, 0);
			GivePlotXP("tar_misc", 20);
		}
	}
}

